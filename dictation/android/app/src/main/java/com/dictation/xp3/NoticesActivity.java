package com.dictation.xp3;

import android.os.Bundle;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;

import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Family;
import com.xp3.common.ui.Ui;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Displays mandatory provenance and third-party license notices:
 * Asr4All provenance + verbatim FUTO Model Weights License (Restricted Use) 1.0 loaded from
 * {@code assets/FUTO_LICENSE.txt}, ExecuTorch BSD-3-Clause, and XNNPACK BSD-3-Clause.
 */
public final class NoticesActivity extends BaseActivity {

    private static final String PROVENANCE_NOTICE =
        "The on-device speech recognition weights bundled with this application are from Asr4All "
            + "(futo-org/asr4all-s) and are subject to the FUTO Model Weights License (Restricted Use) 1.0 "
            + "reproduced below. By using the embedded model, you are bound by the Limitations section of "
            + "that license. This application is independent and is not endorsed by or affiliated with FUTO.";

    private static final String EXECUTORCH_LICENSE =
        "Copyright (c) Meta Platforms, Inc. and affiliates.\n"
            + "All rights reserved.\n\n"
            + "Redistribution and use in source and binary forms, with or without modification, "
            + "are permitted provided that the following conditions are met:\n\n"
            + "1. Redistributions of source code must retain the above copyright notice, this list "
            + "of conditions and the following disclaimer.\n"
            + "2. Redistributions in binary form must reproduce the above copyright notice, this "
            + "list of conditions and the following disclaimer in the documentation and/or other "
            + "materials provided with the distribution.\n"
            + "3. Neither the name of the copyright holder nor the names of its contributors may be "
            + "used to endorse or promote products derived from this software without specific prior "
            + "written permission.\n\n"
            + "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND "
            + "ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED "
            + "WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.";

    private static final String XNNPACK_LICENSE =
        "Copyright (c) Facebook, Inc. and its affiliates.\n"
            + "Copyright (c) Google LLC.\n"
            + "All rights reserved.\n\n"
            + "Redistribution and use in source and binary forms, with or without modification, "
            + "are permitted provided that the following conditions are met:\n\n"
            + "1. Redistributions of source code must retain the above copyright notice, this list "
            + "of conditions and the following disclaimer.\n"
            + "2. Redistributions in binary form must reproduce the above copyright notice, this "
            + "list of conditions and the following disclaimer in the documentation and/or other "
            + "materials provided with the distribution.\n"
            + "3. Neither the name of the copyright holder nor the names of its contributors may be "
            + "used to endorse or promote products derived from this software without specific prior "
            + "written permission.\n\n"
            + "THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS \"AS IS\" AND "
            + "ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED "
            + "WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.";

    private ScrollView scrollView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        LinearLayout root = vertical();
        root.setBackgroundColor(color(R.color.page));

        // 36dp header showing where you are ("Notices", not the app name).
        TextView header = new TextView(this);
        header.setText(R.string.notices_title);
        header.setTextColor(color(R.color.on_primary));
        header.setTextSize(15f);
        header.setTypeface(Family.MEDIUM);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setPadding(dp(10), 0, dp(10), 0);
        header.setBackgroundColor(color(R.color.primary));
        root.addView(header, new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, dp(36)));

        scrollView = new ScrollView(this);
        scrollView.setFocusable(true);
        scrollView.setFocusableInTouchMode(true);
        scrollView.setDefaultFocusHighlightEnabled(false);
        scrollView.setScrollBarStyle(View.SCROLLBARS_OUTSIDE_OVERLAY);

        LinearLayout content = vertical();
        content.setPadding(0, dp(6), 0, dp(10));

        addCard(content, "Asr4All", PROVENANCE_NOTICE);
        addCard(content, "FUTO Model Weights License (Restricted Use) 1.0", readFutoLicense());
        addCard(content, "ExecuTorch (BSD-3-Clause)", EXECUTORCH_LICENSE);
        addCard(content, "XNNPACK (BSD-3-Clause)", XNNPACK_LICENSE);

        scrollView.addView(content, new ViewGroup.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT));
        root.addView(scrollView, Ui.weighted());

        setContentView(root);
        scrollView.requestFocus();
    }

    @Override
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_DOWN) {
            if (event.getKeyCode() == KeyEvent.KEYCODE_DPAD_DOWN) {
                scrollView.smoothScrollBy(0, dp(56));
                return true;
            }
            if (event.getKeyCode() == KeyEvent.KEYCODE_DPAD_UP) {
                scrollView.smoothScrollBy(0, -dp(56));
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    private void addCard(LinearLayout parent, String heading, String body) {
        LinearLayout card = vertical();
        card.setBackgroundResource(com.xp3.common.ui.R.drawable.family_card);
        int padH = dp(10);
        int padV = dp(8);
        card.setPadding(padH, padV, padH, padV);

        TextView head = text(heading, 12, color(R.color.text_muted));
        head.setTypeface(Family.MEDIUM);
        card.addView(head);

        TextView textView = text(body, 12, color(R.color.text));
        textView.setLineSpacing(dp(2), 1.0f);
        LinearLayout.LayoutParams bodyLp = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        bodyLp.topMargin = dp(4);
        card.addView(textView, bodyLp);

        LinearLayout.LayoutParams cardLp = new LinearLayout.LayoutParams(
            ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        int marginH = dp(6);
        cardLp.setMargins(marginH, 0, marginH, dp(6));
        parent.addView(card, cardLp);
    }

    private String readFutoLicense() {
        try (InputStream in = getAssets().open("FUTO_LICENSE.txt")) {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[4096];
            int n;
            while ((n = in.read(buf)) >= 0) out.write(buf, 0, n);
            return new String(out.toByteArray(), StandardCharsets.UTF_8).trim();
        } catch (IOException e) {
            return "Unable to load FUTO_LICENSE.txt";
        }
    }
}
