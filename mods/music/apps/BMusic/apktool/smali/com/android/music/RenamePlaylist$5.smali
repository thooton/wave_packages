.class Lcom/android/music/RenamePlaylist$5;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RenamePlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenamePlaylist;


# direct methods
.method constructor <init>(Lcom/android/music/RenamePlaylist;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 256
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->-get2(Lcom/android/music/RenamePlaylist;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v1, v0}, Lcom/android/music/RenamePlaylist;->-wrap0(Lcom/android/music/RenamePlaylist;Ljava/lang/String;)I

    move-result v1

    .line 261
    if-ltz v1, :cond_0

    int-to-long v2, v1

    iget-object v1, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v1}, Lcom/android/music/RenamePlaylist;->-get3(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    const v1, 0x7f070077

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 269
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v1}, Lcom/android/music/RenamePlaylist;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 272
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 273
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    iget-object v4, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v4}, Lcom/android/music/RenamePlaylist;->-get1(Lcom/android/music/RenamePlaylist;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/music/RenamePlaylist;->-wrap1(Lcom/android/music/RenamePlaylist;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 285
    const-string/jumbo v3, "_id=?"

    .line 286
    new-array v4, v6, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v5}, Lcom/android/music/RenamePlaylist;->-get3(Lcom/android/music/RenamePlaylist;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    .line 283
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/music/RenamePlaylist;->setResult(ILandroid/content/Intent;)V

    .line 289
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    .line 290
    const v1, 0x7f070026

    .line 289
    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 292
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$5;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-virtual {v0}, Lcom/android/music/RenamePlaylist;->finish()V

    .line 294
    :cond_1
    return-void
.end method
