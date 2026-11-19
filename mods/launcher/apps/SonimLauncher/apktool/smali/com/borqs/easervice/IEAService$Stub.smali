.class public abstract Lcom/borqs/easervice/IEAService$Stub;
.super Landroid/os/Binder;
.source "IEAService.java"

# interfaces
.implements Lcom/borqs/easervice/IEAService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/borqs/easervice/IEAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/borqs/easervice/IEAService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.borqs.easervice.IEAService"

    invoke-virtual {p0, p0, v0}, Lcom/borqs/easervice/IEAService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/borqs/easervice/IEAService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.borqs.easervice.IEAService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/borqs/easervice/IEAService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/borqs/easervice/IEAService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/borqs/easervice/IEAService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/borqs/easervice/IEAService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.borqs.easervice.IEAService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v1

    .line 47
    :sswitch_1
    const-string/jumbo v2, "com.borqs.easervice.IEAService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/borqs/easervice/IEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/borqs/easervice/IEventCallback;

    move-result-object v2

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 56
    :cond_0
    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/borqs/easervice/IEAService$Stub;->registerEventCallback(Lcom/borqs/easervice/IEventCallback;ILjava/lang/String;Z)I

    move-result v0

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return v1

    .line 63
    :sswitch_2
    const-string/jumbo v0, "com.borqs.easervice.IEAService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/borqs/easervice/IEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/borqs/easervice/IEventCallback;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/borqs/easervice/IEAService$Stub;->unregisterEventCallback(Lcom/borqs/easervice/IEventCallback;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v1

    .line 72
    :sswitch_3
    const-string/jumbo v2, "com.borqs.easervice.IEAService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    move v0, v1

    .line 79
    :cond_1
    invoke-virtual {p0, v2, v3, v0}, Lcom/borqs/easervice/IEAService$Stub;->getCurrentEvents(ILjava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 82
    return v1

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
