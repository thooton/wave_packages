.class public Lcom/android/mms/transaction/PduParserUtil;
.super Ljava/lang/Object;
.source "PduParserUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static shouldParseContentDisposition()Z
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCarrierConfigValues()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "supportMmsContentDisposition"

    const/4 v2, 0x1

    # FIX(mms crash): carrier config is null while the SIM isn't loaded (e.g. MMS push at boot);
    # stock code then crashed PushReceiver and lost the notification. Default to true.
    if-nez v0, :wave_has_config

    return v2

    :wave_has_config

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
