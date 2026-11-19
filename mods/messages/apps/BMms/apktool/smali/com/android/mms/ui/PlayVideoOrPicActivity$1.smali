.class Lcom/android/mms/ui/PlayVideoOrPicActivity$1;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PlayVideoOrPicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get1(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap4(Lcom/android/mms/ui/PlayVideoOrPicActivity;Z)V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$1;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap4(Lcom/android/mms/ui/PlayVideoOrPicActivity;Z)V

    goto :goto_0
.end method
