.class Lcom/android/mms/ui/ComposeMessageActivity$61;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->val$error:I

    .line 5840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v6, 0x7f070179

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5843
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5844
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->val$mediaTypeStringId:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 5847
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->val$error:I

    packed-switch v0, :pswitch_data_0

    .line 5877
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->val$error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5849
    :pswitch_0
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v2, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5850
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5851
    return-void

    .line 5853
    :pswitch_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    const v1, 0x7f070174

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5854
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v4

    const v3, 0x7f070176

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5880
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 5881
    return-void

    .line 5857
    :pswitch_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 5858
    aput-object v3, v0, v4

    .line 5857
    const v1, 0x7f070177

    invoke-virtual {v2, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5861
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get17(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5862
    const v0, 0x7f07017a

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5863
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$61;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v2, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->-set7(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    :goto_1
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 5867
    goto :goto_0

    .line 5865
    :cond_0
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v3, v0, v4

    invoke-virtual {v2, v6, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5869
    :pswitch_3
    const v0, 0x7f07017b

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5870
    const v1, 0x7f07017d

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5873
    :pswitch_4
    const v0, 0x7f07017c

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5874
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v3, v1, v4

    invoke-virtual {v2, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5847
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
