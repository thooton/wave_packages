.class Lcom/android/music/RenamePlaylist$3;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->-get0(Lcom/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v0

    .line 148
    const v1, 0x1060012

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 154
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$3;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->-get0(Lcom/android/music/RenamePlaylist;)Landroid/widget/Button;

    move-result-object v0

    .line 151
    const/high16 v1, 0x1060000

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
