package com.dictation.xp3;

import android.Manifest;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;

import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Family;
import com.xp3.common.ui.SelectableAdapter;
import com.xp3.common.ui.Ui;

/**
 * Settings screen in the {@code Family} look (DESIGN.md):
 * no header naming the app, no instructional text, d-pad + OK driven.
 */
public final class MainActivity extends BaseActivity {

    private static final int REQ_RECORD_AUDIO = 1;

    private static final int ROW_DICTATION = 0;
    private static final int ROW_MICROPHONE = 1;
    private static final int ROW_OVERLAY = 2;
    private static final int ROW_NOTICES = 3;
    private static final int ROW_COUNT = 4;

    private ListView listView;
    private RowAdapter adapter;
    private boolean enableAfterMicGrant;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        listView = new ListView(this);
        Family.list(listView);
        listView.setPadding(0, dp(4), 0, dp(4));
        listView.setClipToPadding(false);

        adapter = new RowAdapter();
        adapter.setSelectedPosition(0);
        listView.setAdapter(adapter);
        Ui.onSelect(listView, new Ui.Selected() {
            @Override
            public void at(int position) {
                adapter.setSelectedPosition(position);
            }
        });
        listView.setOnItemClickListener((parent, view, position, id) -> activate(position));

        setContentView(listView);
        listView.requestFocus();
        listView.setSelection(0);
    }

    @Override
    protected void onResume() {
        super.onResume();
        adapter.notifyDataSetChanged();
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_UP && !event.isCanceled() && Ui.isOk(event.getKeyCode())) {
            int pos = listView.getSelectedItemPosition();
            if (pos < 0) pos = adapter.getSelectedPosition();
            if (pos >= 0 && pos < ROW_COUNT) {
                activate(pos);
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    private void activate(int row) {
        switch (row) {
            case ROW_DICTATION:
                toggleDictation();
                break;
            case ROW_MICROPHONE:
                requestMicrophone(false);
                break;
            case ROW_OVERLAY:
                openOverlaySettings();
                break;
            case ROW_NOTICES:
                startActivity(new Intent(this, NoticesActivity.class));
                break;
            default:
                break;
        }
    }

    private void toggleDictation() {
        boolean currentlyOn = DictationPrefs.isEnabled(this);
        if (currentlyOn) {
            DictationPrefs.setEnabled(this, false);
            adapter.notifyDataSetChanged();
            return;
        }
        if (hasMicPermission()) {
            DictationPrefs.setEnabled(this, true);
            adapter.notifyDataSetChanged();
        } else {
            requestMicrophone(true);
        }
    }

    private boolean hasMicPermission() {
        return checkSelfPermission(Manifest.permission.RECORD_AUDIO) == PackageManager.PERMISSION_GRANTED;
    }

    private void requestMicrophone(boolean enableWhenGranted) {
        enableAfterMicGrant = enableWhenGranted;
        if (hasMicPermission()) {
            openAppSettings();
            return;
        }
        requestPermissions(new String[] {Manifest.permission.RECORD_AUDIO}, REQ_RECORD_AUDIO);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        if (requestCode != REQ_RECORD_AUDIO) return;
        boolean granted = grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED;
        if (granted && enableAfterMicGrant) {
            DictationPrefs.setEnabled(this, true);
        }
        enableAfterMicGrant = false;
        adapter.notifyDataSetChanged();
    }

    private void openOverlaySettings() {
        Intent intent = new Intent(
            Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
            Uri.parse("package:" + getPackageName())
        );
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            openAppSettings();
        }
    }

    private void openAppSettings() {
        Intent intent = new Intent(
            Settings.ACTION_APPLICATION_DETAILS_SETTINGS,
            Uri.parse("package:" + getPackageName())
        );
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException ignored) {
        }
    }

    private final class RowAdapter extends SelectableAdapter {
        @Override
        public int getCount() {
            return ROW_COUNT;
        }

        @Override
        public Object getItem(int position) {
            return Integer.valueOf(position);
        }

        @Override
        public long getItemId(int position) {
            return position;
        }

        @Override
        public View getView(int position, View convertView, ViewGroup parent) {
            LinearLayout row;
            TextView title;
            TextView value;
            if (convertView instanceof LinearLayout) {
                row = (LinearLayout) convertView;
                title = (TextView) row.getChildAt(0);
                value = (TextView) row.getChildAt(1);
            } else {
                row = vertical();
                row.setBackgroundResource(com.xp3.common.ui.R.drawable.family_focus);
                int padH = dp(10);
                int padV = dp(9);
                row.setPadding(padH, padV, padH, padV);

                title = text("", 14, color(R.color.text));
                title.setTextSize(13.5f);
                title.setTypeface(Family.MEDIUM);
                row.addView(title);

                value = text("", 12, color(R.color.text_muted));
                LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                lp.topMargin = dp(2);
                row.addView(value, lp);
            }

            switch (position) {
                case ROW_DICTATION: {
                    boolean on = DictationPrefs.isEnabled(MainActivity.this);
                    title.setText("Dictation");
                    value.setText(on ? "On" : "Off");
                    value.setTextColor(color(on ? R.color.live : R.color.text_muted));
                    value.setTypeface(on ? Family.MEDIUM : Typeface.DEFAULT);
                    break;
                }
                case ROW_MICROPHONE: {
                    boolean allowed = hasMicPermission();
                    title.setText("Microphone");
                    value.setText(allowed ? "Allowed" : "Denied");
                    value.setTextColor(color(allowed ? R.color.live : R.color.problem));
                    value.setTypeface(Typeface.DEFAULT);
                    break;
                }
                case ROW_OVERLAY: {
                    boolean allowed = Settings.canDrawOverlays(MainActivity.this);
                    title.setText("Caret overlay");
                    value.setText(allowed ? "Allowed" : "Denied");
                    value.setTextColor(color(allowed ? R.color.live : R.color.text_muted));
                    value.setTypeface(Typeface.DEFAULT);
                    break;
                }
                case ROW_NOTICES: {
                    title.setText("Notices");
                    value.setText("Asr4All, ExecuTorch, XNNPACK");
                    value.setTextColor(color(R.color.text_muted));
                    value.setTypeface(Typeface.DEFAULT);
                    break;
                }
                default:
                    break;
            }

            row.setSelected(isSelected(position));
            return row;
        }
    }
}
