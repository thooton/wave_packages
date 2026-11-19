.class final Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;
.super Landroid/os/Handler;
.source "MessagingPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmscHandler"
.end annotation


# instance fields
.field mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 1

    .prologue
    .line 1256
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1257
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1258
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1261
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1262
    if-nez v0, :cond_0

    .line 1263
    return-void

    .line 1265
    :cond_0
    const-string/jumbo v1, "exception"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 1266
    if-eqz v1, :cond_1

    .line 1267
    const-string/jumbo v0, "MessagingPreferenceActivity"

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

    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v1, 0x7f0702ac

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap7(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    .line 1269
    return-void

    .line 1272
    :cond_1
    const-string/jumbo v1, "userobj"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1273
    if-nez v1, :cond_2

    .line 1274
    const-string/jumbo v0, "MessagingPreferenceActivity"

    const-string/jumbo v1, "userParams = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    return-void

    .line 1277
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1298
    :cond_3
    :goto_0
    return-void

    .line 1279
    :pswitch_0
    const-string/jumbo v0, "MessagingPreferenceActivity"

    const-string/jumbo v2, "Set SMSC successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    const v2, 0x7f0702ad

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap7(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    .line 1281
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap10(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1284
    :pswitch_1
    const-string/jumbo v2, "MessagingPreferenceActivity"

    const-string/jumbo v3, "Get SMSC successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1286
    if-eq v1, v4, :cond_3

    .line 1287
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1288
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap10(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1292
    :pswitch_2
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1293
    if-eq v0, v4, :cond_3

    .line 1294
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap11(Lcom/android/mms/ui/MessagingPreferenceActivity;I)V

    goto :goto_0

    .line 1277
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
