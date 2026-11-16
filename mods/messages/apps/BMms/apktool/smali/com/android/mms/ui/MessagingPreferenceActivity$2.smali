.class Lcom/android/mms/ui/MessagingPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 4

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get7(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/util/Recycler;->setMessageLimit(Landroid/content/Context;I)V

    .line 1081
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap6(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1082
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$2;)V

    .line 1090
    const/4 v2, 0x0

    const v3, 0x7f0701dd

    .line 1082
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 1091
    return-void
.end method
