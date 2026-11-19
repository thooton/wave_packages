.class Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;
.super Ljava/lang/Object;
.source "ShortCutKeyChangeFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;->this$0:Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;->this$0:Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->-get0(Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;)Lcom/sonim/borqs/launcher/ApplicationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;->this$0:Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->-get0(Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;)Lcom/sonim/borqs/launcher/ApplicationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;->this$0:Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 104
    return-void
.end method
