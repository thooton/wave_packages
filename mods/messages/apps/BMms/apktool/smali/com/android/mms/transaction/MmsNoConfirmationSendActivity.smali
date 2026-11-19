.class public Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;
.super Landroid/app/Activity;
.source "MmsNoConfirmationSendActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->LOG_TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->finish()V

    .line 57
    return-void

    .line 59
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    const-string/jumbo v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 61
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 62
    const-string/jumbo v3, "address"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDestination()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 66
    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    .line 65
    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 67
    if-eqz v0, :cond_2

    .line 68
    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->finish()V

    .line 74
    return-void

    .line 71
    :cond_2
    sget-object v0, Lcom/android/mms/transaction/MmsNoConfirmationSendActivity;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "No URI --- Cannot send"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
