.class Lcom/android/mms/ui/MessagingPreferenceActivity$4;
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
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 1112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onNumberSet(I)V
    .locals 4

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-get8(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/ext/util/RecyclerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0, v1, p1}, Lcom/android/mms/ext/util/RecyclerExt;->setMessagesExpiryDays(Landroid/content/Context;I)V

    .line 1115
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap4(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MessagingPreferenceActivity$4$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity$4;)V

    .line 1122
    const/4 v2, 0x0

    const v3, 0x7f0701dd

    .line 1116
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 1123
    return-void
.end method
