package com.sonim.borqs.launcher;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;

/**
 * Launcher Improved: replaces the stock DrawerAdapter (same constructor, same drawer_item cells).
 * Supports the lifted lavender "moving" card, and the dimmed-source / hovered-folder states used
 * during Move (into folder). The list can be swapped (a folder's list is replaced on rebuild).
 */
public class DrawerAdapter extends BaseAdapter {
    private static final int SELECTION = 0xFF9599E4;   // stock tray's lavender

    private final Context mContext;
    private ArrayList mPacsForAdapter;
    private Object mMoving;
    private Object mDimmed;
    private Object mHover;

    public DrawerAdapter(Context context, ArrayList list) {
        mContext = context;
        mPacsForAdapter = list;
    }

    void setList(ArrayList list) {
        mPacsForAdapter = list;
        notifyDataSetChanged();
    }

    void setMoving(Object item) {
        mMoving = item;
        notifyDataSetChanged();
    }

    void setPickerState(Object dimmed, Object hover) {
        mDimmed = dimmed;
        mHover = hover;
        notifyDataSetChanged();
    }

    @Override
    public int getCount() {
        return mPacsForAdapter == null ? 0 : mPacsForAdapter.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0L;
    }

    static class ViewHolder {
        ImageView icon;
        TextView text;
    }

    @Override
    public View getView(int i, View view, ViewGroup parent) {
        ViewHolder holder;
        if (view == null) {
            view = LayoutInflater.from(mContext).inflate(WaveR.LAYOUT_DRAWER_ITEM, null);
            holder = new ViewHolder();
            holder.text = (TextView) view.findViewById(WaveR.ID_ICON_TEXT);
            holder.icon = (ImageView) view.findViewById(WaveR.ID_ICON_IMAGE);
            view.setTag(holder);
        } else {
            holder = (ViewHolder) view.getTag();
        }
        view.animate().cancel();
        view.setTranslationX(0f);
        view.setTranslationY(0f);

        Object item = mPacsForAdapter != null && i < mPacsForAdapter.size() ? mPacsForAdapter.get(i) : null;
        if (item instanceof LauncherActivity.AppsAndFolder) {
            LauncherActivity.AppsAndFolder af = (LauncherActivity.AppsAndFolder) item;
            Drawable icon = af.getIcon();
            holder.icon.setImageDrawable(icon);
            holder.text.setText(af.getName());
        }
        float d = mContext.getResources().getDisplayMetrics().density;
        boolean moving = item != null && item == mMoving;
        boolean hover = item != null && item == mHover;
        if (moving || hover) {
            GradientDrawable card = new GradientDrawable();
            card.setColor(SELECTION);
            card.setStroke(Math.round(2 * d), SELECTION);
            card.setCornerRadius(6 * d);
            view.setBackground(card);
        } else {
            view.setBackground(null);
        }
        if (moving) {
            view.setScaleX(WaveGridAnim.CARRY_SCALE);
            view.setScaleY(WaveGridAnim.CARRY_SCALE);
            view.setTranslationZ(6 * d);
        } else {
            view.setScaleX(1f);
            view.setScaleY(1f);
            view.setTranslationZ(0f);
        }
        view.setAlpha(item != null && item == mDimmed ? 0.3f : 1f);
        return view;
    }
}
