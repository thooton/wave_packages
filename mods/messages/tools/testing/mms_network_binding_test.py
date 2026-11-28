#!/usr/bin/env python3
"""Exercise the production MMS binding helper with a fake ConnectivityManager."""
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[2]
HELPER = ROOT / 'apps/BMms/java/com/android/mms/transaction/WaveMmsNetworkBinding.java'
SOURCES = {
    'android/net/Network.java': '''package android.net;
public final class Network {
  private final int id;
  public Network(int id) { this.id = id; }
  public boolean equals(Object x) { return x instanceof Network && ((Network) x).id == id; }
  public int hashCode() { return id; }
}''',
    'android/net/ConnectivityManager.java': '''package android.net;
public class ConnectivityManager {
  private Network bound;
  public int binds, clears;
  public boolean rejectNextBind;
  public boolean bindProcessToNetwork(Network n) {
    if (rejectNextBind) { rejectNextBind = false; return false; }
    bound = n;
    if (n == null) clears++; else binds++;
    return true;
  }
  public Network getBoundNetworkForProcess() { return bound; }
}''',
    'android/content/Context.java': '''package android.content;
import android.net.ConnectivityManager;
public class Context {
  public static final String CONNECTIVITY_SERVICE = "connectivity";
  private final ConnectivityManager cm;
  public Context(ConnectivityManager cm) { this.cm = cm; }
  public Object getSystemService(String name) { return cm; }
}''',
    'android/util/Log.java': '''package android.util;
public class Log {
  public static int d(String tag, String msg) { return 0; }
  public static int w(String tag, String msg) { return 0; }
}''',
    'MmsNetworkBindingTest.java': '''
import android.content.Context;
import android.net.*;
import com.android.mms.transaction.WaveMmsNetworkBinding;

public class MmsNetworkBindingTest {
  private static void check(boolean ok, String what) {
    if (!ok) throw new AssertionError(what);
  }
  public static void main(String[] args) {
    ConnectivityManager cm = new ConnectivityManager();
    Context ctx = new Context(cm);
    Network old = new Network(100);
    Network newer = new Network(101);
    WaveMmsNetworkBinding.bind(cm, old, "1");
    check(cm.getBoundNetworkForProcess() == old, "MMS still binds its carrier network");
    WaveMmsNetworkBinding.release(ctx, 2);
    check(cm.getBoundNetworkForProcess() == old, "unrelated subscription cannot clear it");
    WaveMmsNetworkBinding.bind(cm, newer, "2");
    WaveMmsNetworkBinding.lost(ctx, old, "1");
    WaveMmsNetworkBinding.release(ctx, 1);
    check(cm.getBoundNetworkForProcess() == newer, "old loss/release preserves new binding");
    WaveMmsNetworkBinding.release(ctx, 2);
    WaveMmsNetworkBinding.lost(ctx, newer, "2");
    check(cm.getBoundNetworkForProcess() == null && cm.clears == 1, "release restores default once");
    WaveMmsNetworkBinding.bind(cm, old, "1");
    cm.rejectNextBind = true;
    WaveMmsNetworkBinding.bind(cm, newer, "2");
    WaveMmsNetworkBinding.lost(ctx, new Network(100), "1");
    check(cm.getBoundNetworkForProcess() == null && cm.clears == 2, "loss clears successful binding");
    WaveMmsNetworkBinding.bind(cm, old, "1");
    cm.bindProcessToNetwork(newer);
    WaveMmsNetworkBinding.release(ctx, 1);
    check(cm.getBoundNetworkForProcess() == newer && cm.clears == 2, "external binding is preserved");
  }
}''',
}

with tempfile.TemporaryDirectory() as temp:
    d = Path(temp)
    for name, body in SOURCES.items():
        p = d / name
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(body)
    subprocess.run(['javac', '--release', '8', '-d', temp, str(HELPER), *SOURCES], cwd=d, check=True)
    subprocess.run(['java', '-cp', temp, 'MmsNetworkBindingTest'], check=True)
print('MMS process binding tests passed')
