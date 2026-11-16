.class Lcom/android/mms/ui/ComposeMessageActivity$99;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleMultipleMimeTypes(Landroid/content/Intent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$append:Z

.field final synthetic val$mimeType:Ljava/lang/String;

.field final synthetic val$numberToImport:I

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;ILjava/util/ArrayList;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$mimeType:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$numberToImport:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$uris:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$append:Z

    .line 11230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 11233
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get19(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setRequestedOrientation(I)V

    .line 11236
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$mimeType:Ljava/lang/String;

    move v2, v1

    move-object v1, v0

    .line 11237
    :goto_1
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$numberToImport:I

    if-ge v2, v0, :cond_2

    .line 11238
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 11239
    if-eqz v0, :cond_1

    const-string/jumbo v3, "*/*"

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 11240
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap16(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 11242
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    check-cast v0, Landroid/net/Uri;

    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->val$append:Z

    invoke-static {v1, v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap19(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 11237
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v3

    goto :goto_1

    .line 11235
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move-object v3, v1

    .line 11239
    goto :goto_2

    .line 11244
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$99$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$99$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$99;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11250
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get32(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 11251
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get40(Lcom/android/mms/ui/ComposeMessageActivity;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 11252
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap92(Lcom/android/mms/ui/ComposeMessageActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v1

    .line 11255
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$99;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->setRequestedOrientation(I)V

    .line 11256
    return-void

    .line 11250
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    move-object v3, v1

    goto :goto_2
.end method
