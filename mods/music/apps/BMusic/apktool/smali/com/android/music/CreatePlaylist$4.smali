.class Lcom/android/music/CreatePlaylist$4;
.super Ljava/lang/Object;
.source "CreatePlaylist.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/android/music/CreatePlaylist$4;->this$0:Lcom/android/music/CreatePlaylist;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 160
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 164
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$4;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->-get0(Lcom/android/music/CreatePlaylist;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$4;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->-get1(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$4;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->-get1(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    iget-object v0, p0, Lcom/android/music/CreatePlaylist$4;->this$0:Lcom/android/music/CreatePlaylist;

    invoke-static {v0}, Lcom/android/music/CreatePlaylist;->-get1(Lcom/android/music/CreatePlaylist;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method
