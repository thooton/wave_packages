package com.android.music;

import android.os.IInterface;
import android.os.RemoteException;

public interface IMediaPlaybackService extends IInterface {
    int getShuffleMode() throws RemoteException;
    void setShuffleMode(int mode) throws RemoteException;
}
