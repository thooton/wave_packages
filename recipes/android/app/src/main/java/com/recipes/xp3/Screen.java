package com.recipes.xp3;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.TextView;

import com.xp3.common.ui.BaseActivity;
import com.xp3.common.ui.Family;

/** What the three screens share: Menu on its release, text at the family's sizes, and a confirmation. */
abstract class Screen extends BaseActivity {

    /** Menu was pressed: show this screen's popup menu. */
    abstract void menu();

    @Override
    public boolean onKeyDown(int key, KeyEvent event) {
        if (key == KeyEvent.KEYCODE_MENU) return true;
        return super.onKeyDown(key, event);
    }

    @Override
    public boolean onKeyUp(int key, KeyEvent event) {
        if (key == KeyEvent.KEYCODE_MENU) {
            if (!event.isCanceled()) menu();
            return true;
        }
        return super.onKeyUp(key, event);
    }

    /** A TextView at a fractional size: the family's 16sp, 13.5sp, 12sp and 11.5sp. */
    final TextView line(CharSequence value, float sp, int textColor) {
        TextView view = text(value, 12, textColor);
        view.setTextSize(TypedValue.COMPLEX_UNIT_SP, sp);
        return view;
    }

    /** A section heading: small, Medium, muted. */
    final TextView section(String label) {
        TextView view = line(label, 11.5f, color(R.color.text_muted));
        view.setTypeface(Family.MEDIUM);
        view.setLetterSpacing(0.02f);
        view.setSingleLine(true);
        return view;
    }

    /**
     * Asks before something that can't be undone. Cancel has the focus, so
     * a slip of OK does nothing.
     */
    final void confirm(String title, String action, final Runnable confirmed) {
        AlertDialog dialog = new AlertDialog.Builder(this)
            .setTitle(title)
            .setNegativeButton("Cancel", null)
            .setPositiveButton(action, (shown, which) -> confirmed.run())
            .create();
        dialog.show();
        Button cancel = dialog.getButton(DialogInterface.BUTTON_NEGATIVE);
        if (cancel != null) cancel.requestFocus();
    }

    final void hideKeyboard(View view) {
        InputMethodManager input = (InputMethodManager) getSystemService(Context.INPUT_METHOD_SERVICE);
        if (input != null && view != null) input.hideSoftInputFromWindow(view.getWindowToken(), 0);
    }
}
