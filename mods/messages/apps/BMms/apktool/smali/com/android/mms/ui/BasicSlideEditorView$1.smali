.class Lcom/android/mms/ui/BasicSlideEditorView$1;
.super Ljava/lang/Object;
.source "BasicSlideEditorView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BasicSlideEditorView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/BasicSlideEditorView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BasicSlideEditorView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->-get1(Lcom/android/mms/ui/BasicSlideEditorView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->-get0(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView$1;->this$0:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-static {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->-get0(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 79
    :cond_0
    return-void
.end method
