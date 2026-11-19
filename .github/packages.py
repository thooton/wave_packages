#!/usr/bin/env python3
"""Release inventory and build validation for XP3800 APKs and mods."""
import json
import re
import sys
from pathlib import Path

# Source and Tablet stay on the previous channel until task 16; never Wave here.
PRIVATE_LEGACY = ['source', 'tablet']
RETIRED = {line for line in map(str.strip, (Path(__file__).resolve().parents[1] /
           'gradle/retired-apps.txt').read_text().splitlines()) if line and not line.startswith('#')}
MODULES = ['mods/launcher', 'mods/messages', 'mods/music']


def metadata(path):
    data = json.loads(Path(path, 'wave/package.json').read_text())
    icon = Path(path, 'wave/icon.png').read_bytes()
    if (not icon.startswith(b'\x89PNG\r\n\x1a\n') or icon[16:24] != b'\0\0\0`\0\0\0`'
            or len(icon) > 65536):
        raise ValueError(f'{path}: icon must be 96×96 PNG and at most 64 KiB')
    return data


def matrix(kind):
    if kind == 'mod':
        paths = MODULES
    else:
        paths = sorted(str(p.parent.parent) for p in Path('.').glob('*/wave/package.json')
                       if p.parent.parent.name not in RETIRED)
    return [{'path': path, 'name': release_name(path), 'section': metadata(path)['section']} for path in paths]


def release_name(path):
    if path == 'launcher':
        return 'appdrawer'
    if path.startswith('mods/'):
        return path.split('/')[-1] + '-improved'
    return path


def check_bundled(root):
    """Treat unknown expressions as nonempty; never put the values in print/logs."""
    for artifact in Path(root).rglob('generated/bundled/**/Bundled.java'):
        for line in artifact.read_text().splitlines():
            if 'static final' in line and not re.fullmatch(
                    r'\s*public static final (?:String \w+ = ""|long \w+ = 0L);', line):
                raise ValueError(f'{artifact}: nonempty bundled constant; refusing publication')


if __name__ == '__main__':
    command = sys.argv[1]
    if command == 'matrix':
        print(json.dumps(matrix(sys.argv[2]), separators=(',', ':')))
    elif command == 'gradle-apps':
        print(' '.join([p['path'] for p in matrix('apk') if p['path'] != 'launcher'] + PRIVATE_LEGACY))
    elif command == 'check-bundled':
        check_bundled(sys.argv[2])
    else:
        raise SystemExit('expected matrix <apk|mod>, gradle-apps, or check-bundled <dir>')
