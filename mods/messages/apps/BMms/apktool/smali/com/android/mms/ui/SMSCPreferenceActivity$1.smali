.class Lcom/android/mms/ui/SMSCPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSCPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 103
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SMSCPreferenceActivity;->-wrap3(Lcom/android/mms/ui/SMSCPreferenceActivity;)V

    .line 109
    :cond_0
    return-void
.end method
