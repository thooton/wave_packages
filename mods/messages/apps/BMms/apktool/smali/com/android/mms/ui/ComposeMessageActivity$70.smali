.class Lcom/android/mms/ui/ComposeMessageActivity$70;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->val$uri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->val$append:Z

    .line 5993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5996
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->val$uri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$70;->val$append:Z

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap20(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5997
    return-void
.end method
