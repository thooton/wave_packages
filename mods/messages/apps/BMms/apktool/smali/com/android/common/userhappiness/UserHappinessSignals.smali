.class public Lcom/android/common/userhappiness/UserHappinessSignals;
.super Ljava/lang/Object;
.source "UserHappinessSignals.java"


# static fields
.field private static mHasVoiceLoggingInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/userhappiness/UserHappinessSignals;->mHasVoiceLoggingInfo:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setHasVoiceLoggingInfo(Z)V
    .locals 0

    .prologue
    .line 40
    sput-boolean p0, Lcom/android/common/userhappiness/UserHappinessSignals;->mHasVoiceLoggingInfo:Z

    .line 41
    return-void
.end method

.method public static userAcceptedImeText(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/common/userhappiness/UserHappinessSignals;->mHasVoiceLoggingInfo:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "app_name"

    const-string/jumbo v2, "voiceime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v1, "extra_event"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    const-string/jumbo v1, ""

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->setHasVoiceLoggingInfo(Z)V

    .line 60
    :cond_0
    return-void
.end method
