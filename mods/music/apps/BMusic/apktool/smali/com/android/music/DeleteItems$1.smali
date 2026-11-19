.class Lcom/android/music/DeleteItems$1;
.super Ljava/lang/Object;
.source "DeleteItems.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/DeleteItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/DeleteItems;


# direct methods
.method constructor <init>(Lcom/android/music/DeleteItems;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-static {v0}, Lcom/android/music/DeleteItems;->-get1(Lcom/android/music/DeleteItems;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-static {v0}, Lcom/android/music/DeleteItems;->-get1(Lcom/android/music/DeleteItems;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-static {v1}, Lcom/android/music/DeleteItems;->-get0(Lcom/android/music/DeleteItems;)[J

    move-result-object v1

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->deletePlaylist(Landroid/content/Context;I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-virtual {v0}, Lcom/android/music/DeleteItems;->finish()V

    .line 79
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    iget-object v1, p0, Lcom/android/music/DeleteItems$1;->this$0:Lcom/android/music/DeleteItems;

    invoke-static {v1}, Lcom/android/music/DeleteItems;->-get0(Lcom/android/music/DeleteItems;)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/music/MusicUtils;->deleteTracks(Landroid/content/Context;[J)V

    goto :goto_0
.end method
