.class Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity$2;->onNumberSet(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    .line 1082
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get7(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;

    .line 1086
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1085
    invoke-static {v0}, Lcom/android/mms/util/Recycler;->checkForThreadsOverLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    iget-object v0, v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get7(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;->this$1:Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    iget-object v1, v1, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessages(Landroid/content/Context;)V

    .line 1089
    :cond_0
    return-void
.end method
