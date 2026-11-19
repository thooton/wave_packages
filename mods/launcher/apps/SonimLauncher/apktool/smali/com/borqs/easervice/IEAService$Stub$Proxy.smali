.class Lcom/borqs/easervice/IEAService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IEAService.java"

# interfaces
.implements Lcom/borqs/easervice/IEAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/borqs/easervice/IEAService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/borqs/easervice/IEAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 93
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/borqs/easervice/IEAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCurrentEvents(ILjava/lang/String;Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/borqs/easervice/EventInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 144
    :try_start_0
    const-string/jumbo v3, "com.borqs.easervice.IEAService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-object v0, p0, Lcom/borqs/easervice/IEAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 149
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 150
    sget-object v0, Lcom/borqs/easervice/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 153
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 156
    return-object v0

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v0
.end method

.method public registerEventCallback(Lcom/borqs/easervice/IEventCallback;ILjava/lang/String;Z)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 108
    :try_start_0
    const-string/jumbo v5, "com.borqs.easervice.IEAService"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/borqs/easervice/IEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 110
    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v3, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    if-eqz p4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/borqs/easervice/IEAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 115
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 118
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 121
    return v0

    :cond_1
    move v0, v1

    .line 112
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v0

    .line 118
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 119
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 117
    throw v0
.end method

.method public unregisterEventCallback(Lcom/borqs/easervice/IEventCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 128
    :try_start_0
    const-string/jumbo v3, "com.borqs.easervice.IEAService"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/borqs/easervice/IEventCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 130
    iget-object v0, p0, Lcom/borqs/easervice/IEAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 131
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 137
    return-void

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw v0
.end method
