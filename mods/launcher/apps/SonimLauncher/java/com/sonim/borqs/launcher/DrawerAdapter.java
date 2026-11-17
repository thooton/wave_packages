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
 * Launcher Argon: replaces the stock DrawerAdapter (same constructor, same drawer_item cells).
 * Adds the "moving" card: the entry being moved sits on a solid lavender card, as in the old
 * standalone Launcher. The list can be swapped (a folder's list is replaced on rebuild).
 */
public class DrawerAdapter extends BaseAdapter {
    private static final int SELECTION = 0xFF9599E4;   // stock tray's lavender

    private final Context mContext;
    private ArrayList mPacsForAdapter;
    private Object mMoving;

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
            view = LayoutInflater.from(mContext).inflate(ArgonR.LAYOUT_DRAWER_ITEM, null);
            holder = new ViewHolder();
            holder.text = (TextView) view.findViewById(ArgonR.ID_ICON_TEXT);
            holder.icon = (ImageView) view.findViewById(ArgonR.ID_ICON_IMAGE);
            view.setTag(holder);
        } else {
            holder = (ViewHolder) view.getTag();
        }
        Object item = mPacsForAdapter != null && i < mPacsForAdapter.size() ? mPacsForAdapter.get(i) : null;
        if (item instanceof LauncherActivity.AppsAndFolder) {
            LauncherActivity.AppsAndFolder af = (LauncherActivity.AppsAndFolder) item;
            Drawable icon = af.getIcon();
            holder.icon.setImageDrawable(icon);
            holder.text.setText(af.getName());
        }
        if (item != null && item == mMoving) {
            GradientDrawable card = new GradientDrawable();
            float d = mContext.getResources().getDisplayMetrics().density;
            card.setColor(SELECTION);
            card.setStroke(Math.round(2 * d), SELECTION);
            card.setCornerRadius(6 * d);
            view.setBackground(card);
        } else {
            view.setBackground(null);
        }
        return view;
    }
}
