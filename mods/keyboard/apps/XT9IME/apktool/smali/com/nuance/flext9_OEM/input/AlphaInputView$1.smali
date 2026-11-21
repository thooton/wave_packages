.class Lcom/nuance/flext9_OEM/input/AlphaInputView$1;
.super Landroid/os/Handler;
.source "AlphaInputView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/AlphaInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    .line 123
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->hideCandidateView()V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    .line 135
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 137
    const v2, 0x7f090103

    .line 135
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getHeight()I

    move-result v2

    .line 139
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-get0(Lcom/nuance/flext9_OEM/input/AlphaInputView;)Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v3

    .line 138
    add-int/2addr v2, v3

    .line 133
    invoke-static {v0, v1, v4, v2}, Lcom/nuance/flext9_OEM/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 144
    :pswitch_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    .line 145
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    const v2, 0x7f090153

    .line 145
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getHeight()I

    move-result v2

    .line 149
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-get0(Lcom/nuance/flext9_OEM/input/AlphaInputView;)Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v3

    .line 148
    add-int/2addr v2, v3

    .line 143
    invoke-static {v0, v1, v4, v2}, Lcom/nuance/flext9_OEM/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 154
    :pswitch_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/AlphaInputView;->mContext:Landroid/content/Context;

    .line 155
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 156
    const v2, 0x7f09014e

    .line 155
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-get0(Lcom/nuance/flext9_OEM/input/AlphaInputView;)Lcom/nuance/flext9_OEM/input/CandidatesListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/flext9_OEM/input/CandidatesListView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 153
    invoke-static {v0, v1, v4, v2}, Lcom/nuance/flext9_OEM/input/QuickToast;->show(Landroid/content/Context;Ljava/lang/CharSequence;II)V

    goto :goto_0

    .line 162
    :pswitch_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-set0(Lcom/nuance/flext9_OEM/input/AlphaInputView;Z)Z

    goto :goto_0

    .line 166
    :pswitch_6
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-wrap0(Lcom/nuance/flext9_OEM/input/AlphaInputView;Lcom/nuance/flext9_OEM/input/AlphaInputView$DoubleTapRecaptureMsg;)V

    goto/16 :goto_0

    .line 170
    :pswitch_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-wrap2(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V

    goto/16 :goto_0

    .line 174
    :pswitch_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInputView$1;->this$0:Lcom/nuance/flext9_OEM/input/AlphaInputView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/AlphaInputView;->-wrap1(Lcom/nuance/flext9_OEM/input/AlphaInputView;)V

    goto/16 :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
