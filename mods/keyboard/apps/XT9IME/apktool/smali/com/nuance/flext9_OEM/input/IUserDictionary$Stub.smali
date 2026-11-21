.class public abstract Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;
.super Landroid/os/Binder;
.source "IUserDictionary.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/IUserDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IUserDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nuance.flext9_OEM.input.IUserDictionary"

.field static final TRANSACTION_add:I = 0x1

.field static final TRANSACTION_delete:I = 0x2

.field static final TRANSACTION_find:I = 0x6

.field static final TRANSACTION_finish:I = 0x8

.field static final TRANSACTION_getCurrentUserWord:I = 0x9

.field static final TRANSACTION_getFirst:I = 0x4

.field static final TRANSACTION_getNext:I = 0x5

.field static final TRANSACTION_hasActiveSequence:I = 0xb

.field static final TRANSACTION_isPinyinMode:I = 0xd

.field static final TRANSACTION_isStrokeOrBPMFMode:I = 0xc

.field static final TRANSACTION_resetCurrentUserWord:I = 0xa

.field static final TRANSACTION_start:I = 0x7

.field static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p0, p0, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nuance/flext9_OEM/input/IUserDictionary;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v0

    .line 26
    :cond_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nuance/flext9_OEM/input/IUserDictionary;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/nuance/flext9_OEM/input/IUserDictionary;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 225
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 42
    :sswitch_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

    .line 47
    :sswitch_1
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 57
    :goto_0
    invoke-virtual {p0, v4, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->add(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    return v2

    :cond_0
    move-object v0, v1

    .line 55
    goto :goto_0

    :cond_1
    move v0, v3

    .line 59
    goto :goto_1

    .line 64
    :sswitch_2
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 74
    :goto_2
    invoke-virtual {p0, v4, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->delete(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    return v2

    :cond_3
    move-object v0, v1

    .line 72
    goto :goto_2

    .line 81
    :sswitch_3
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    move-object v4, v0

    .line 92
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 93
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 98
    :goto_4
    invoke-virtual {p0, v5, v4, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->update(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    if-eqz v0, :cond_4

    move v3, v2

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return v2

    :cond_5
    move-object v4, v1

    .line 89
    goto :goto_3

    :cond_6
    move-object v0, v1

    .line 96
    goto :goto_4

    .line 105
    :sswitch_4
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 109
    new-instance v1, Lcom/nuance/flext9_OEM/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>()V

    .line 110
    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->getFirst(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v0, :cond_7

    move v0, v2

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    if-eqz v1, :cond_8

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    invoke-virtual {v1, p3, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    :goto_6
    return v2

    :cond_7
    move v0, v3

    .line 112
    goto :goto_5

    .line 118
    :cond_8
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 124
    :sswitch_5
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 128
    new-instance v1, Lcom/nuance/flext9_OEM/input/UserWord;

    invoke-direct {v1}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>()V

    .line 129
    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->getNext(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    if-eqz v0, :cond_9

    move v0, v2

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    if-eqz v1, :cond_a

    .line 133
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v1, p3, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_8
    return v2

    :cond_9
    move v0, v3

    .line 131
    goto :goto_7

    .line 137
    :cond_a
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 143
    :sswitch_6
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 148
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;

    .line 153
    :goto_9
    invoke-virtual {p0, v4, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->find(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z

    move-result v0

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v0, :cond_b

    move v3, v2

    :cond_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    return v2

    :cond_c
    move-object v0, v1

    .line 151
    goto :goto_9

    .line 160
    :sswitch_7
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->start(Ljava/lang/String;)Z

    move-result v0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v0, :cond_d

    move v3, v2

    :cond_d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    return v2

    .line 170
    :sswitch_8
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->finish(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    return v2

    .line 179
    :sswitch_9
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->getCurrentUserWord()Lcom/nuance/flext9_OEM/input/UserWord;

    move-result-object v0

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v0, :cond_e

    .line 183
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    invoke-virtual {v0, p3, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    :goto_a
    return v2

    .line 187
    :cond_e
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 193
    :sswitch_a
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->resetCurrentUserWord()V

    .line 195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v2

    .line 200
    :sswitch_b
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->hasActiveSequence(Ljava/lang/String;)Z

    move-result v0

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v0, :cond_f

    move v3, v2

    :cond_f
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    return v2

    .line 210
    :sswitch_c
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->isStrokeOrBPMFMode()Z

    move-result v0

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    if-eqz v0, :cond_10

    move v3, v2

    :cond_10
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return v2

    .line 218
    :sswitch_d
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;->isPinyinMode()Z

    move-result v0

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    if-eqz v0, :cond_11

    move v3, v2

    :cond_11
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    return v2

    .line 38
    nop

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
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
