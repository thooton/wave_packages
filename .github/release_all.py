#!/usr/bin/env python3
"""Release every app and mod in one CI job.

Runs release_package.py for each package, keeps going past a failure, and
writes the releases to mirror into the catalog as JSON lines
({path, name, section, binary, url}). Exits nonzero if any package failed,
after listing them in the job summary.
"""
import argparse
import json
import os
import subprocess
import sys
import tempfile
from pathlib import Path

from packages import matrix

HERE = Path(__file__).resolve().parent


def mod_zip(path):
    props = dict(line.split('=', 1) for line in
                 Path(path, 'module/module.prop').read_text().splitlines() if '=' in line)
    return Path('modules', f"{path.split('/')[-1]}-improved-{props['version'].strip()}.zip")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--aapt2', required=True)
    parser.add_argument('--retry-publish', action='store_true')
    parser.add_argument('--publish-list', type=Path, required=True)
    parser.add_argument('--skip-mods', action='store_true', help='the mod build failed; release apps only')
    args = parser.parse_args()

    packages = [(p, Path('apks', p['path'] + '.apk')) for p in matrix('apk')]
    if not args.skip_mods:
        packages += [(p, mod_zip(p['path'])) for p in matrix('mod')]

    failed, published = [], []
    for package, binary in packages:
        print(f'::group::{package["name"]}', flush=True)
        with tempfile.NamedTemporaryFile('r', suffix='.out', delete=False) as out:
            outputs = out.name
        command = [sys.executable, str(HERE / 'release_package.py'), package['path'], str(binary),
                   '--aapt2', args.aapt2]
        if args.retry_publish:
            command.append('--retry-publish')
        code = subprocess.run(command, env={**os.environ, 'GITHUB_OUTPUT': outputs}).returncode
        result = dict(line.split('=', 1) for line in Path(outputs).read_text().splitlines() if '=' in line)
        os.unlink(outputs)
        print('::endgroup::', flush=True)
        if code:
            failed.append(package['name'])
            print(f'::error title=Release failed::{package["name"]} (see its log group above)')
        elif result.get('binary'):
            published.append({**package, 'binary': result['binary'], 'url': result['url']})
            print(f'{package["name"]}: released {Path(result["binary"]).name}')

    args.publish_list.write_text(''.join(json.dumps(p) + '\n' for p in published))
    lines = [f'Released or re-published: {", ".join(p["name"] for p in published) or "nothing new"}.']
    if args.skip_mods:
        lines.append('Mods were not released: their build failed.')
    if failed:
        lines.append(f'**Failed:** {", ".join(failed)}.')
    summary = os.environ.get('GITHUB_STEP_SUMMARY')
    if summary:
        with open(summary, 'a') as file:
            file.write('\n\n'.join(lines) + '\n')
    print('\n'.join(lines))
    return 1 if failed else 0


if __name__ == '__main__':
    raise SystemExit(main())
