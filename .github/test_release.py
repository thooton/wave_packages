"""Offline release checks: python3 -m unittest discover -s .github -p test_release.py."""
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
import zipfile

from packages import RETIRED, check_bundled, matrix
from release_package import identity, release_state


class ReleaseCheck(unittest.TestCase):
    def setUp(self):
        self.repo = tempfile.TemporaryDirectory()
        self.addCleanup(self.repo.cleanup)
        cwd = Path.cwd()
        self.addCleanup(os.chdir, cwd)
        os.chdir(self.repo.name)
        self.git('init', '-q')
        self.git('config', 'user.name', 'release-check')
        self.git('config', 'user.email', 'release-check@example.invalid')

    def git(self, *args):
        subprocess.run(['git', *args], check=True)

    def commit(self, name, data):
        path = Path(name)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(data)
        self.git('add', name)
        self.git('commit', '-qm', name)

    def test_version_lifecycle(self):
        self.commit('books/Main.java', 'original')
        self.assertEqual(release_state('books', 'books-1.0.0', '1.0.0'), 'new')
        self.git('tag', 'books-1.0.0')
        self.assertEqual(release_state('books', 'books-1.0.0', '1.0.0'), 'existing')
        self.commit('books/README.md', 'docs')
        self.assertEqual(release_state('books', 'books-1.0.0', '1.0.0'), 'existing')
        self.commit('gradle/retired-apps.txt', 'video\n')
        self.assertEqual(release_state('books', 'books-1.0.0', '1.0.0'), 'existing')
        self.commit('books/wave/package.json', '{"section":"reading-study"}')
        self.assertEqual(release_state('books', 'books-1.0.0', '1.0.0'), 'existing')
        self.commit('common/core.java', 'shared change')
        with self.assertRaisesRegex(ValueError, 'require a versionName and versionCode bump'):
            release_state('books', 'books-1.0.0', '1.0.0')
        self.assertEqual(release_state('books', 'books-1.0.1', '1.0.1'), 'new')
        self.git('tag', 'books-1.0.1')
        with self.assertRaisesRegex(ValueError, 'older'):
            release_state('books', 'books-1.0.0', '1.0.0')

    def test_retired_packages_never_selected(self):
        repo = Path(__file__).resolve().parents[1]
        os.chdir(repo)
        removed = {'hbsa', 'installer', 'launcher', 'musica', 'source', 'tablet', 'updater', 'video'}
        self.assertTrue(removed <= RETIRED)
        self.assertEqual([], [name for name in sorted(removed) if (repo / name).exists()])
        self.assertEqual({'mods/launcher', 'mods/messages', 'mods/music'},
                         {m['path'] for m in matrix('mod')})
        self.assertFalse((repo / 'mods/sqlite').exists())
        self.assertTrue({'books'} <= {m['path'] for m in matrix('apk')})
        self.assertFalse(RETIRED & {m['path'] for m in matrix('apk')})

    def test_generated_credentials(self):
        file = Path('book/build/generated/bundled/pkg/Bundled.java')
        file.parent.mkdir(parents=True)
        file.write_text('public static final String TOKEN = "";\npublic static final long EXPIRY = 0L;\n')
        check_bundled('.')
        file.write_text('public static final String TOKEN = "example-not-real";\n')
        with self.assertRaisesRegex(ValueError, 'nonempty bundled constant'):
            check_bundled('.')

    def test_module_binary_identity(self):
        asset = Path('test.zip')
        with zipfile.ZipFile(asset, 'w') as z:
            z.writestr('module.prop', 'id=music_improved\nversion=1.2.3\nversionCode=99\n')
        self.assertEqual(identity(asset, None), ('music_improved', '1.2.3', 99))


if __name__ == '__main__':
    unittest.main()
