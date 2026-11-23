#!/usr/bin/env python3
"""linkcheck.py <apk> <owner-prefix>...: check method/field targets.
Matching members must exist in the APK's dex files, with the right static-ness.
Catches a smali hook calling a Java method that was renamed, or Java calling a stock member that
doesn't exist (the stubs only promise it). Uses apktool's baksmali on the built APK."""
import os, re, shutil, subprocess, sys, tempfile

apk = sys.argv[1]
PREFIXES = tuple(sys.argv[2:])
if not PREFIXES:
    sys.exit("linkcheck: at least one owner prefix is required")
temp = tempfile.TemporaryDirectory()
tmp = temp.name
subprocess.run([shutil.which("apktool") or "apktool", "d", "-q", "-r", "-f", apk, "-o", tmp], check=True)

PRIVATE = set()   # (class, member) declared private
classes = {}   # name -> {"super": str, "methods": {name+sig: static}, "fields": {name:type: static}}
for root, _, files in os.walk(tmp):
    for f in files:
        if not f.endswith(".smali"): continue
        text = open(os.path.join(root, f)).read()
        name = re.search(r"^\.class.* (L\S+;)", text, re.M).group(1)
        sup = re.search(r"^\.super (L\S+;)", text, re.M)
        meths, fields = {}, {}
        for m in re.finditer(r"^\.(method|field) (.*)$", text, re.M):
            words = m.group(2).split(" = ")[0].split()      # modifiers..., member
            member, mods = words[-1], words[:-1]
            (meths if m.group(1) == "method" else fields)[member] = "static" in mods
            if "private" in mods: PRIVATE.add((name, member))
        classes[name] = {"super": sup.group(1) if sup else None, "methods": meths, "fields": fields, "text": text}

JAR = os.environ.get("ANDROID_JAR")
_fw = {}
def framework(cls):
    """(super, methods, fields) of a framework class from android.jar, via javap; None if unknown."""
    if cls in _fw: return _fw[cls]
    out = subprocess.run(["javap", "-s", "-p", "-cp", JAR, cls[1:-1].replace("/", ".")],
                         capture_output=True, text=True).stdout if JAR else ""
    if not out:
        _fw[cls] = None
        return None
    head = re.search(r"(?:class|interface) \S+(?: extends ([\w.$]+))?", out)
    sup = "L" + head.group(1).replace(".", "/") + ";" if head and head.group(1) else (None if cls == "Ljava/lang/Object;" else "Ljava/lang/Object;")
    meths, fields = set(), set()
    for m in re.finditer(r"^\s+(.*?);\n\s+descriptor: (\S+)", out, re.M):
        decl, desc = m.groups()
        if "(" in decl:
            name = re.search(r"([\w$<>]+)\(", decl).group(1)
            if name == cls[1:-1].replace("/", ".") or name.endswith("." + cls.split("/")[-1][:-1]): name = "<init>"
            meths.add(name + desc)
        else:
            fields.add(decl.split()[-1] + ":" + desc)
    _fw[cls] = (sup, meths, fields)
    return _fw[cls]

def find(cls, kind, member):
    while cls in classes:
        if member in classes[cls][kind]: return classes[cls][kind][member]
        cls = classes[cls]["super"]
    if cls is None: return None
    if framework_has(cls, kind, member): return "external"
    # Not in android.jar: a hidden API if a real framework class (not just Object) could hold it.
    return "hidden" if cls != "Ljava/lang/Object;" else None
    return None

def framework_has(cls, kind, member):
    """In android.jar's view of cls and its supers? (False also for hidden APIs, which stock uses.)"""
    while cls is not None:
        fw = framework(cls)
        if fw is None: return True         # not in android.jar: can't tell
        if member in (fw[1] if kind == "methods" else fw[2]): return True
        cls = fw[0]
    return False

bad, n, hidden = [], 0, set()
for name, c in classes.items():
    for m in re.finditer(r"^\s*invoke-(\w+)(?:/range)? \{[^}\n]*\}, (L[^;]+;)->(\S+)", c["text"], re.M):
        kind, owner, member = m.groups()
        if not owner.startswith(PREFIXES): continue
        n += 1
        st = find(owner, "methods", member)
        if st == "hidden": hidden.add(f"{owner}->{member}"); continue
        if st is None: bad.append(f"{name}: no method {owner}->{member}")
        elif (owner, member) in PRIVATE and owner != name: bad.append(f"{name}: calls private {owner}->{member}")
        elif st != "external" and (kind == "static") != st: bad.append(f"{name}: invoke-{kind} on {'static' if st else 'instance'} {owner}->{member}")
    for m in re.finditer(r"^\s*([is])(?:get|put)(?:-[\w-]+)? [^,\n]+(?:, [^,\n]+)?, (L[^;]+;)->(\S+)", c["text"], re.M):
        kind, owner, member = m.groups()
        if not owner.startswith(PREFIXES): continue
        n += 1
        st = find(owner, "fields", member)
        if st == "hidden": hidden.add(f"{owner}->{member}"); continue
        if st is None: bad.append(f"{name}: no field {owner}->{member}")
        elif (owner, member) in PRIVATE and owner != name: bad.append(f"{name}: uses private {owner}->{member}")
        elif st != "external" and (kind == "s") != st: bad.append(f"{name}: {kind}get/put on {'static' if st else 'instance'} field {owner}->{member}")
if bad:
    sys.exit("linkcheck failed:\n  " + "\n  ".join(sorted(set(bad))))
print(f"linkcheck OK ({n} references matching {len(PREFIXES)} prefixes resolved"
      + (f"; framework members not in the public android.jar: {', '.join(sorted(hidden))}" if hidden else "") + ")")
