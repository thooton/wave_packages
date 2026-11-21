.class Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUserDictionary.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/IUserDictionary;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub;
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
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 233
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 248
    :try_start_0
    const-string/jumbo v4, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    if-eqz p2, :cond_0

    .line 251
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 257
    :goto_0
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 258
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 259
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 262
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 265
    return v0

    .line 255
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 261
    throw v0

    :cond_1
    move v0, v1

    .line 259
    goto :goto_1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 273
    :try_start_0
    const-string/jumbo v4, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    if-eqz p2, :cond_0

    .line 276
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 282
    :goto_0
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 283
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 284
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 287
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 290
    return v0

    .line 280
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    .line 287
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 288
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v0

    :cond_1
    move v0, v1

    .line 284
    goto :goto_1
.end method

.method public find(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 372
    :try_start_0
    const-string/jumbo v4, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    if-eqz p2, :cond_0

    .line 375
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 381
    :goto_0
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 382
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 383
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 386
    :goto_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 389
    return v0

    .line 379
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 385
    :catchall_0
    move-exception v0

    .line 386
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw v0

    :cond_1
    move v0, v1

    .line 383
    goto :goto_1
.end method

.method public finish(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 414
    :try_start_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 417
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    return-void

    .line 419
    :catchall_0
    move-exception v0

    .line 420
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v0
.end method

.method public getCurrentUserWord()Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 430
    :try_start_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 432
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 433
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/nuance/flext9_OEM/input/UserWord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/UserWord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    :goto_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    return-object v0

    .line 437
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 440
    :catchall_0
    move-exception v0

    .line 441
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v0
.end method

.method public getFirst(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 330
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 333
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 334
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 335
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {p2, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    return v0

    .line 339
    :catchall_0
    move-exception v0

    .line 340
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    return-object v0
.end method

.method public getNext(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 351
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 354
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 355
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 356
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    invoke-virtual {p2, v2}, Lcom/nuance/flext9_OEM/input/UserWord;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_1
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    return v0

    .line 360
    :catchall_0
    move-exception v0

    .line 361
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw v0
.end method

.method public hasActiveSequence(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 466
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 469
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 470
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 473
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 476
    return v0

    .line 472
    :catchall_0
    move-exception v0

    .line 473
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v0
.end method

.method public isPinyinMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 501
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 503
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 504
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 507
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    return v0

    .line 506
    :catchall_0
    move-exception v0

    .line 507
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 506
    throw v0
.end method

.method public isStrokeOrBPMFMode()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 484
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 486
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 487
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 490
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 493
    return v0

    .line 489
    :catchall_0
    move-exception v0

    .line 490
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    throw v0
.end method

.method public resetCurrentUserWord()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 451
    :try_start_0
    const-string/jumbo v0, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 453
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    return-void

    .line 455
    :catchall_0
    move-exception v0

    .line 456
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v0
.end method

.method public start(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 397
    :try_start_0
    const-string/jumbo v3, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 400
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 401
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 404
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 407
    return v0

    .line 403
    :catchall_0
    move-exception v0

    .line 404
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 403
    throw v0
.end method

.method public update(Ljava/lang/String;Lcom/nuance/flext9_OEM/input/UserWord;Lcom/nuance/flext9_OEM/input/UserWord;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 298
    :try_start_0
    const-string/jumbo v4, "com.nuance.flext9_OEM.input.IUserDictionary"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    if-eqz p2, :cond_0

    .line 301
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 307
    :goto_0
    if-eqz p3, :cond_1

    .line 308
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v4, 0x0

    invoke-virtual {p3, v2, v4}, Lcom/nuance/flext9_OEM/input/UserWord;->writeToParcel(Landroid/os/Parcel;I)V

    .line 314
    :goto_1
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/IUserDictionary$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 315
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 316
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 322
    return v0

    .line 305
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    .line 319
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw v0

    .line 312
    :cond_1
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 316
    goto :goto_2
.end method
