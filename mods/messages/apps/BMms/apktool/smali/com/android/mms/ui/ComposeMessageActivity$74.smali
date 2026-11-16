.class Lcom/android/mms/ui/ComposeMessageActivity$74;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$mimeType:Ljava/lang/String;

    .line 6099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 6102
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 6103
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$uri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/ThumbnailManager;->removeBackingStoreThumbnail(Landroid/net/Uri;)V

    .line 6104
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$mimeType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$74;->val$uri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap19(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 6105
    return-void
.end method
