.class Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;
.super Ljava/lang/Object;
.source "RcsConfirmDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsConfirmDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoSettingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;-><init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    .line 121
    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 120
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    iget-object v1, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-static {v1}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->-wrap1(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V

    .line 123
    iget-object v1, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 124
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/RcsMessageForwardToSmsCache;->clearCacheMessage()V

    .line 125
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 126
    iget-object v0, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$GoSettingListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->finish()V

    .line 127
    return-void
.end method
