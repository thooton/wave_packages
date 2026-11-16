.class Lcom/android/mms/ui/NewMessageAlertActivity$3;
.super Ljava/lang/Object;
.source "NewMessageAlertActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/NewMessageAlertActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/NewMessageAlertActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/NewMessageAlertActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageAlertActivity$3;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity$3;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->-wrap0(Lcom/android/mms/ui/NewMessageAlertActivity;)V

    .line 101
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity$3;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->finish()V

    .line 102
    return-void
.end method
