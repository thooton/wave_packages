"""Create an explicitly UNSIGNED signing request with stock resources and new dex."""
import re
import sys
import zipfile
from pathlib import Path

stock, compiled, output = map(Path, sys.argv[1:])
with zipfile.ZipFile(stock) as src, zipfile.ZipFile(output, 'w') as dst:
    for item in src.infolist():
        if item.filename.upper().startswith('META-INF/') or re.fullmatch(r'classes\d*\.dex', item.filename):
            continue
        dst.writestr(item, src.read(item))
    for dex in sorted(compiled.glob('classes*.dex')):
        dst.write(dex, dex.name)
