.class Lcom/android/music/CreatePlaylist$5;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/CreatePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/CreatePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/CreatePlaylist;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->-get0(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 264
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v1, v0}, Lcom/android/music/CreatePlaylist;->-wrap0(Lcom/android/music/CreatePlaylist;Ljava/lang/String;)I

    move-result v1

    .line 266
    if-ltz v1, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    .line 268
    const v1, 0x7f070077

    .line 267
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v1}, Lcom/android/music/CreatePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 283
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 284
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 285
    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/music/CreatePlaylist;->setResult(ILandroid/content/Intent;)V

    .line 290
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$5;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-virtual {v0}, Lcom/android/music/CreatePlaylist;->finish()V

    goto :goto_0
.end method
