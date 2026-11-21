.class Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/flext9_OEM/input/CandidatesListView$GetMoreWordsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseGetMoreWordsHandler"
.end annotation


# instance fields
.field mCIV:Lcom/nuance/flext9_OEM/input/ChineseInputView;

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/ChineseInputView;Lcom/nuance/flext9_OEM/input/ChineseInputView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;->this$0:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    .line 66
    return-void
.end method


# virtual methods
.method public requestMoreWords()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/flext9_OEM/input/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/ChineseInputView;->postAddMoreSuggestions()V

    .line 69
    return-void
.end method
