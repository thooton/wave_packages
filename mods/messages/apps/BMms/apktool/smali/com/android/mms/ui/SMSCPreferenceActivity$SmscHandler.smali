.class final Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;
.super Landroid/os/Handler;
.source "SMSCPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmscHandler"
.end annotation


# instance fields
.field mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V
    .locals 1

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 351
    iput-object p1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 352
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 356
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 357
    if-nez v0, :cond_0

    .line 358
    return-void

    .line 361
    :cond_0
    const-string/jumbo v1, "exception"

    .line 360
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 362
    if-eqz v1, :cond_1

    .line 363
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    const v1, 0x7f0702ac

    invoke-static {v0, v1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap2(Lcom/android/mms/ui/SMSCPreferenceActivity;I)V

    .line 365
    return-void

    .line 368
    :cond_1
    const-string/jumbo v1, "userobj"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 369
    if-nez v1, :cond_2

    .line 370
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userParams = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return-void

    .line 373
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 394
    :cond_3
    :goto_0
    return-void

    .line 375
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Set SMSC successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    const v2, 0x7f0702ad

    invoke-static {v0, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap2(Lcom/android/mms/ui/SMSCPreferenceActivity;I)V

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap4(Lcom/android/mms/ui/SMSCPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 380
    :pswitch_1
    invoke-static {}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Get SMSC successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 382
    if-eq v1, v4, :cond_3

    .line 383
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 384
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap4(Lcom/android/mms/ui/SMSCPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 388
    :pswitch_2
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 389
    if-eq v0, v4, :cond_3

    .line 390
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap5(Lcom/android/mms/ui/SMSCPreferenceActivity;I)V

    goto :goto_0

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
