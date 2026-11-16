.class final Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;
.super Landroid/os/Handler;
.source "SmsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SmscHandler"
.end annotation


# instance fields
.field mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 1

    .prologue
    .line 746
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 747
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    .line 748
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 752
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 753
    if-nez v0, :cond_0

    .line 754
    return-void

    .line 757
    :cond_0
    const-string/jumbo v1, "exception"

    .line 756
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 758
    if-eqz v1, :cond_1

    .line 759
    invoke-static {}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get0()Ljava/lang/String;

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

    .line 760
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    const v1, 0x7f0702ac

    invoke-static {v0, v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap2(Lcom/android/mms/ui/SmsPreferenceActivity;I)V

    .line 761
    return-void

    .line 764
    :cond_1
    const-string/jumbo v1, "userobj"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 765
    if-nez v1, :cond_2

    .line 766
    invoke-static {}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "userParams = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    return-void

    .line 769
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 790
    :cond_3
    :goto_0
    return-void

    .line 771
    :pswitch_0
    invoke-static {}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Set SMSC successfully"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    const v2, 0x7f0702ad

    invoke-static {v0, v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap2(Lcom/android/mms/ui/SmsPreferenceActivity;I)V

    .line 773
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v0, v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap4(Lcom/android/mms/ui/SmsPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 776
    :pswitch_1
    invoke-static {}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Get SMSC successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    const-string/jumbo v2, "slot"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 778
    if-eq v1, v4, :cond_3

    .line 779
    const-string/jumbo v2, "slot"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 780
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap4(Lcom/android/mms/ui/SmsPreferenceActivity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 784
    :pswitch_2
    const-string/jumbo v0, "slot"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 785
    if-eq v0, v4, :cond_3

    .line 786
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$SmscHandler;->mOwner:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap5(Lcom/android/mms/ui/SmsPreferenceActivity;I)V

    goto :goto_0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
