.class Lcom/android/mms/ui/ComposeMessageActivity$22;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$ViewOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addEmojiPackageListener()V
    .locals 2

    .prologue
    .line 10520
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10521
    const/16 v1, 0x7b

    .line 10520
    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsUtils;->startEmojiStore(Landroid/app/Activity;I)V

    .line 10522
    return-void
.end method

.method public emojiSelectListener(Lcom/suntek/mway/rcs/client/aidl/plugin/entity/emoticon/EmoticonBO;)V
    .locals 2

    .prologue
    .line 10489
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 10490
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/emoticon/EmoticonBO;->getEmoticonId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsEmoId(Ljava/lang/String;)V

    .line 10491
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {p1}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/emoticon/EmoticonBO;->getEmoticonName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsEmoName(Ljava/lang/String;)V

    .line 10492
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get18(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 10493
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 10494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->rcsSend()V

    .line 10495
    return-void
.end method

.method public faceTextSelectListener(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 10499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10500
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 10501
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 10502
    return-void
.end method

.method public onEmojiDeleteListener()V
    .locals 1

    .prologue
    .line 10506
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$22;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$22$1;->start()V

    .line 10516
    return-void
.end method

.method public viewOpenOrCloseListener(Z)V
    .locals 2

    .prologue
    .line 10526
    if-eqz p1, :cond_0

    .line 10527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get7(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200ef

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 10531
    :goto_0
    return-void

    .line 10529
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$22;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get7(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;

    move-result-object v0

    const v1, 0x7f0200ee

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method
