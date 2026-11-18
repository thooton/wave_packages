.class Lcom/android/music/RenamePlaylist$4;
.super Ljava/lang/Object;
.source "RenamePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/android/music/RenamePlaylist$4;->this$0:Lcom/android/music/RenamePlaylist;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/music/RenamePlaylist$4;->this$0:Lcom/android/music/RenamePlaylist;

    invoke-static {v0}, Lcom/android/music/RenamePlaylist;->-wrap2(Lcom/android/music/RenamePlaylist;)V

    .line 168
    return-void
.end method
