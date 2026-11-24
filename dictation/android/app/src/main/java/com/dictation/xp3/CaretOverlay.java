package com.dictation.xp3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;

/**
 * Draws the iOS-blue ({@code #007AFF}) dictation caret and microphone badge right beside the
 * active text field's insertion cursor via {@link WindowManager.LayoutParams#TYPE_APPLICATION_OVERLAY}.
 *
 * Gracefully degrades to a no-op if overlay permission is not granted. Immediately hides when
 * dictation stops or {@code visible} becomes false.
 */
final class CaretOverlay {

    private static final int CARET_BLUE = 0xFF007AFF;
    private static final int WHITE = 0xFFFFFFFF;

    private final Context appContext;
    private final WindowManager windowManager;
    private final Handler mainHandler;
    private final float density;

    private CaretView view;
    private WindowManager.LayoutParams params;
    private boolean attached;

    CaretOverlay(Context context) {
        this.appContext = context.getApplicationContext();
        this.windowManager = (WindowManager) appContext.getSystemService(Context.WINDOW_SERVICE);
        this.mainHandler = new Handler(Looper.getMainLooper());
        this.density = appContext.getResources().getDisplayMetrics().density;
    }

    void update(final boolean visible, final float x, final float top, final float bottom) {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                if (!visible) {
                    hideOnMain();
                } else {
                    showOrMoveOnMain(x, top, bottom);
                }
            }
        });
    }

    void hide() {
        mainHandler.post(new Runnable() {
            @Override
            public void run() {
                hideOnMain();
            }
        });
    }

    private void showOrMoveOnMain(float x, float top, float bottom) {
        if (windowManager == null || !Settings.canDrawOverlays(appContext)) {
            hideOnMain();
            return;
        }
        if (Float.isNaN(x) || Float.isNaN(top) || Float.isNaN(bottom)) {
            hideOnMain();
            return;
        }

        DisplayMetrics dm = appContext.getResources().getDisplayMetrics();
        int screenW = dm.widthPixels;
        int screenH = dm.heightPixels;

        float caretW = dp(3.0f);
        float badgeD = dp(16.0f);
        float gap = dp(3.0f);
        float pad = dp(2.0f);
        float rawH = Math.abs(bottom - top);
        float caretH = clamp(rawH > 0 ? rawH : dp(18.0f), dp(14.0f), dp(44.0f));

        int winW = Math.round(pad + caretW + gap + badgeD + pad);
        int winH = Math.round(Math.max(caretH, badgeD) + 2.0f * pad);

        boolean badgeOnRight = (x + caretW * 0.5f + gap + badgeD + pad) <= (screenW - dp(2.0f));
        float caretCenterX;
        float badgeCenterX;
        int winX;
        if (badgeOnRight) {
            caretCenterX = pad + caretW * 0.5f;
            badgeCenterX = pad + caretW + gap + badgeD * 0.5f;
            winX = Math.round(x - caretCenterX);
        } else {
            badgeCenterX = pad + badgeD * 0.5f;
            caretCenterX = pad + badgeD + gap + caretW * 0.5f;
            winX = Math.round(x - caretCenterX);
        }

        float midY = (top + bottom) * 0.5f;
        int winY = Math.round(midY - winH * 0.5f);

        winX = Math.max(0, Math.min(winX, Math.max(0, screenW - winW)));
        winY = Math.max(0, Math.min(winY, Math.max(0, screenH - winH)));

        if (view == null) {
            view = new CaretView(appContext);
            params = new WindowManager.LayoutParams(
                winW,
                winH,
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE
                    | WindowManager.LayoutParams.FLAG_NOT_TOUCHABLE
                    | WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN
                    | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS,
                PixelFormat.TRANSLUCENT
            );
            params.gravity = Gravity.TOP | Gravity.START;
        }

        params.x = winX;
        params.y = winY;
        params.width = winW;
        params.height = winH;
        view.configure(caretCenterX, caretW, caretH, badgeCenterX, badgeD);

        try {
            if (!attached) {
                windowManager.addView(view, params);
                attached = true;
            } else {
                windowManager.updateViewLayout(view, params);
                view.invalidate();
            }
        } catch (RuntimeException ignored) {
            attached = false;
        }
    }

    private void hideOnMain() {
        if (attached && view != null && windowManager != null) {
            try {
                windowManager.removeViewImmediate(view);
            } catch (RuntimeException ignored) {
            }
            attached = false;
        }
    }

    private float dp(float value) {
        return value * density;
    }

    private static float clamp(float val, float min, float max) {
        return Math.max(min, Math.min(max, val));
    }

    private final class CaretView extends View {
        private final Paint caretPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint haloPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint badgePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint micFillPaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final Paint micStrokePaint = new Paint(Paint.ANTI_ALIAS_FLAG);
        private final RectF rect = new RectF();

        private float caretCx;
        private float caretW;
        private float caretH;
        private float badgeCx;
        private float badgeD;

        CaretView(Context context) {
            super(context);
            caretPaint.setColor(CARET_BLUE);
            caretPaint.setStyle(Paint.Style.STROKE);
            caretPaint.setStrokeCap(Paint.Cap.ROUND);

            haloPaint.setColor(WHITE);
            haloPaint.setStyle(Paint.Style.FILL);

            badgePaint.setColor(CARET_BLUE);
            badgePaint.setStyle(Paint.Style.FILL);

            micFillPaint.setColor(WHITE);
            micFillPaint.setStyle(Paint.Style.FILL);

            micStrokePaint.setColor(WHITE);
            micStrokePaint.setStyle(Paint.Style.STROKE);
            micStrokePaint.setStrokeCap(Paint.Cap.ROUND);
        }

        void configure(float caretCx, float caretW, float caretH, float badgeCx, float badgeD) {
            this.caretCx = caretCx;
            this.caretW = caretW;
            this.caretH = caretH;
            this.badgeCx = badgeCx;
            this.badgeD = badgeD;
            caretPaint.setStrokeWidth(caretW);
            micStrokePaint.setStrokeWidth(Math.max(1.0f, badgeD * 0.085f));
        }

        @Override
        protected void onDraw(Canvas canvas) {
            float cy = getHeight() * 0.5f;

            // Vertical iOS-blue caret.
            float halfCaret = Math.max(0f, (caretH - caretW) * 0.5f);
            canvas.drawLine(caretCx, cy - halfCaret, caretCx, cy + halfCaret, caretPaint);

            // Crisp blue badge with thin white rim.
            float r = badgeD * 0.5f;
            canvas.drawCircle(badgeCx, cy, r, haloPaint);
            canvas.drawCircle(badgeCx, cy, r - dp(0.9f), badgePaint);

            // White vector microphone glyph centered inside badge.
            float capW = badgeD * 0.25f;
            float capH = badgeD * 0.42f;
            float capTop = cy - badgeD * 0.29f;
            rect.set(badgeCx - capW * 0.5f, capTop, badgeCx + capW * 0.5f, capTop + capH);
            canvas.drawRoundRect(rect, capW * 0.5f, capW * 0.5f, micFillPaint);

            // Cradle arc around lower half of capsule.
            float arcR = badgeD * 0.22f;
            float arcCy = capTop + capH - capW * 0.45f;
            rect.set(badgeCx - arcR, arcCy - arcR, badgeCx + arcR, arcCy + arcR);
            canvas.drawArc(rect, 0f, 180f, false, micStrokePaint);

            // Stem and base bar.
            float stemTop = arcCy + arcR;
            float stemBot = stemTop + badgeD * 0.12f;
            canvas.drawLine(badgeCx, stemTop, badgeCx, stemBot, micStrokePaint);
            float baseHalf = badgeD * 0.14f;
            canvas.drawLine(badgeCx - baseHalf, stemBot, badgeCx + baseHalf, stemBot, micStrokePaint);
        }
    }
}
