.class public abstract Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;
.super Landroid/os/Binder;
.source "IUserDictionaryConfig.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

.field static final TRANSACTION_getCurrentUserSelectedLanguageId:I = 0x5

.field static final TRANSACTION_isAlphabeticLanguageEnabled:I = 0x4

.field static final TRANSACTION_isChineseSimplifyEnabled:I = 0x3

.field static final TRANSACTION_isChineseTraditionalEnabled:I = 0x2

.field static final TRANSACTION_isLanguageChange:I = 0x6

.field static final TRANSACTION_query:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p0, p0, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v0

    .line 29
    :cond_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 101
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 45
    :sswitch_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v1

    .line 50
    :sswitch_1
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-virtual {p0, v0, v2}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->query(Ljava/lang/String;Ljava/util/List;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 58
    return v1

    .line 62
    :sswitch_2
    const-string/jumbo v2, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->isChineseTraditionalEnabled()Z

    move-result v2

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    return v1

    .line 70
    :sswitch_3
    const-string/jumbo v2, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->isChineseSimplifyEnabled()Z

    move-result v2

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return v1

    .line 78
    :sswitch_4
    const-string/jumbo v2, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->isAlphabeticLanguageEnabled()Z

    move-result v2

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v2, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return v1

    .line 86
    :sswitch_5
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->getCurrentUserSelectedLanguageId()I

    move-result v0

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    return v1

    .line 94
    :sswitch_6
    const-string/jumbo v2, "com.nuance.flext9_OEM.input.IUserDictionaryConfig"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionaryConfig$Stub;->isLanguageChange()Z

    move-result v2

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return v1

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
