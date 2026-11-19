.class public Lcom/android/providers/contacts/PhoneAccountRegistrationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneAccountRegistrationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 43
    const-string/jumbo v0, "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    .line 45
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "call_log"

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v1

    .line 51
    instance-of v2, v1, Lcom/android/providers/contacts/CallLogProvider;

    if-eqz v2, :cond_0

    .line 52
    check-cast v1, Lcom/android/providers/contacts/CallLogProvider;

    invoke-virtual {v1, v0}, Lcom/android/providers/contacts/CallLogProvider;->adjustForNewPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 55
    :cond_0
    return-void
.end method
