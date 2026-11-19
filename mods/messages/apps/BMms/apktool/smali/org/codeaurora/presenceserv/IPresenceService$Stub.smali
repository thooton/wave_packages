.class public abstract Lorg/codeaurora/presenceserv/IPresenceService$Stub;
.super Landroid/os/Binder;
.source "IPresenceService.java"

# interfaces
.implements Lorg/codeaurora/presenceserv/IPresenceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/presenceserv/IPresenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/presenceserv/IPresenceService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p0, p0, v0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lorg/codeaurora/presenceserv/IPresenceService;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/codeaurora/presenceserv/IPresenceService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lorg/codeaurora/presenceserv/IPresenceService;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lorg/codeaurora/presenceserv/IPresenceService$Stub$Proxy;

    invoke-direct {v0, p0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    .line 50
    :sswitch_1
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->getImsEnablerState()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    return v1

    .line 58
    :sswitch_2
    const-string/jumbo v2, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {p0, v2}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->hasVTCapability(Ljava/lang/String;)Z

    move-result v2

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return v1

    .line 68
    :sswitch_3
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->invokPublish()V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    return v1

    .line 75
    :sswitch_4
    const-string/jumbo v2, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-virtual {p0, v2}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->invokeAvailabilityFetch(Ljava/lang/String;)Z

    move-result v2

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return v1

    .line 85
    :sswitch_5
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->invokeCapabilityPolling(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v1

    .line 94
    :sswitch_6
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->invokeListAvailabilityFetch()V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v1

    .line 101
    :sswitch_7
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->invokeListCapabilityPolling()V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    return v1

    .line 108
    :sswitch_8
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/presenceserv/IPresenceServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->registerCallback(Lorg/codeaurora/presenceserv/IPresenceServiceCB;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    return v1

    .line 117
    :sswitch_9
    const-string/jumbo v0, "org.codeaurora.presenceserv.IPresenceService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/presenceserv/IPresenceServiceCB$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    move-result-object v0

    .line 120
    invoke-virtual {p0, v0}, Lorg/codeaurora/presenceserv/IPresenceService$Stub;->unregisterCallback(Lorg/codeaurora/presenceserv/IPresenceServiceCB;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v1

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
