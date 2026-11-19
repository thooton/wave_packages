.class Lcom/android/mms/ui/SmsPreferenceActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SmsPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    .line 139
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/SmsPreferenceActivity;->-wrap3(Lcom/android/mms/ui/SmsPreferenceActivity;)V

    .line 145
    :cond_0
    return-void
.end method
