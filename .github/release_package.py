#!/usr/bin/env python3
"""Admit immutable release assets. Run from repository root with complete tags/history."""
import argparse
import json
import os
import re
import shutil
import subprocess
import sys
import zipfile
from pathlib import Path

from manifest import badging
from packages import RETIRED, metadata, release_name

VERSION = r'(?:0|[1-9]\d*)\.(?:0|[1-9]\d*)\.(?:0|[1-9]\d*)'


def run(*args):
    return subprocess.run(args, text=True, stdout=subprocess.PIPE, check=True).stdout.strip()


def identity(binary, aapt2):
    if binary.suffix == '.apk':
        props = badging(aapt2, str(binary))
        return props['package'], props['version'], props['versionCode']
    if binary.suffix != '.zip':
        raise ValueError(f'{binary}: expected APK or module ZIP')
    with zipfile.ZipFile(binary) as file:
        if file.namelist().count('module.prop') != 1 or file.getinfo('module.prop').file_size > 65536:
            raise ValueError(f'{binary}: invalid module.prop')
        props = dict(line.split('=', 1) for line in file.read('module.prop').decode().splitlines() if '=' in line)
    return props['id'], props['version'], int(props['versionCode'])


def version_key(v):
    return tuple(map(int, v.split('.')))


def tags_for(path):
    name = release_name(path)
    return sorted([(match[1], t) for t in run('git', 'tag', '--list', name + '-*').splitlines()
                   if (match := re.fullmatch(re.escape(name) + '-(' + VERSION + ')', t))],
                  key=lambda pair: version_key(pair[0]))


def release_state(path, tag, version):
    matching = [v for v, _ in tags_for(path)]
    if matching and version_key(version) < version_key(matching[-1]):
        raise ValueError(f'{path}: {version} is older than an existing release')
    if version not in matching:
        return 'new'
    if path.startswith('mods/'):
        scope = [path, 'mods/firmware', 'mods/tools']
    else:
        scope = [path, 'common', 'gradle', 'signing', 'build.gradle', 'settings.gradle', 'gradle.properties',
                 'gradlew', 'gradlew.bat']
    non_build_inputs = [':(glob,exclude)**/*.md', ':(glob,exclude)**/mockups/**',
                        ':(exclude)gradle/retired-apps.txt', f':(exclude){path}/wave/package.json',
                        f':(exclude){path}/wave/icon.png']
    if subprocess.run(['git', 'diff', '--quiet', tag + '^{commit}', 'HEAD', '--', *scope, *non_build_inputs]).returncode:
        raise ValueError(f'{path}: changes to {tag} require a versionName and versionCode bump; assets are immutable')
    return 'existing'


def verify_release_asset(tag, asset):
    release = json.loads(run('gh', 'release', 'view', tag, '--json', 'assets,isDraft'))
    assets = [item for item in release['assets'] if item['name'] == asset]
    if len(assets) != 1 or assets[0]['size'] <= 0:
        raise ValueError(f'{tag}: expected existing asset {asset}; restore the original binary, never replace it')
    if release['isDraft']:
        run('gh', 'release', 'edit', tag, '--draft=false', '--latest=false')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('path')
    parser.add_argument('binary', type=Path)
    parser.add_argument('--aapt2', default='aapt2')
    parser.add_argument('--retry-publish', action='store_true')
    parser.add_argument('--check', action='store_true', help='local only; no GitHub calls')
    args = parser.parse_args()
    path, binary = args.path, args.binary
    if path in RETIRED:
        raise ValueError(f'{path}: retired, no new release allowed')
    data = metadata(path)
    pk, version, code = identity(binary, args.aapt2)
    if pk != data['id'] or not re.fullmatch(VERSION, version) or code < 1:
        raise ValueError(f'{path}: bad {pk} or version {version} ({code})')
    tag = f'{release_name(path)}-{version}'
    asset = tag + binary.suffix
    state = release_state(path, tag, version)
    if args.check:
        print(f'{state} {tag} {asset} code={code}')
        return
    dest = Path('release-assets', asset)
    dest.parent.mkdir(exist_ok=True)
    if state == 'new':
        target = run('git', 'rev-parse', 'HEAD')
        if target != os.environ['GITHUB_SHA']:
            raise ValueError('release must be from the workflow commit')
        prior = tags_for(path)
        if prior:
            previous = prior[-1][1]
            body = json.loads(run('gh', 'release', 'view', previous, '--json', 'body'))['body']
            previous_code = re.search(r'<!-- wave-version-code: ([1-9]\d*) -->', body)
            if not previous_code or code <= int(previous_code[1]):
                raise ValueError(f'{path}: versionCode must increase from {previous}')
        shutil.copyfile(binary, dest)
        notes = data['description'] + f'\n\n<!-- wave-version-code: {code} -->'
        run('git', 'tag', tag, target)
        run('git', 'push', 'origin', f'refs/tags/{tag}')
        run('gh', 'release', 'create', tag, str(dest), '--draft', '--verify-tag', '--latest=false',
            '--title', f'{data["name"]} {version}', '--notes', notes)
        verify_release_asset(tag, asset)
    else:
        verify_release_asset(tag, asset)
        # On explicit retry only, use the actual hosted bytes; rebuilding them
        # would produce a different digest despite having identical sources.
        if args.retry_publish:
            run('gh', 'release', 'download', tag, '--pattern', asset, '--dir', str(dest.parent))
    if state == 'new' or args.retry_publish:
        if not dest.is_file():
            return
        owner_repo = os.environ['GITHUB_REPOSITORY']
        with open(os.environ['GITHUB_OUTPUT'], 'a') as output:
            print(f'binary={dest.as_posix()}', file=output)
            print(f'url=https://github.com/{owner_repo}/releases/download/{tag}/{asset}', file=output)


if __name__ == '__main__':
    try:
        main()
    except (ValueError, OSError, subprocess.CalledProcessError) as e:
        raise SystemExit(str(e)) from e
