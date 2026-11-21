.class Lcom/nuance/flext9_OEM/input/CandidatesListView$1;
.super Landroid/os/Handler;
.source "CandidatesListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/CandidatesListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/CandidatesListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    .line 111
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/CandidatesListView;->mTouchX:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/CandidatesListView$1;->this$0:Lcom/nuance/flext9_OEM/input/CandidatesListView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->removeHighlight()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
