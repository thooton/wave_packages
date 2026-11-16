.class Lcom/android/mms/ui/NewMessageAlertActivity$2;
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
    iput-object p1, p0, Lcom/android/mms/ui/NewMessageAlertActivity$2;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity$2;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->-get0(Lcom/android/mms/ui/NewMessageAlertActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/NewMessageAlertActivity;->-set0(Lcom/android/mms/ui/NewMessageAlertActivity;I)I

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageAlertActivity$2;->this$0:Lcom/android/mms/ui/NewMessageAlertActivity;

    invoke-static {v0}, Lcom/android/mms/ui/NewMessageAlertActivity;->-wrap1(Lcom/android/mms/ui/NewMessageAlertActivity;)V

    .line 94
    return-void
.end method
