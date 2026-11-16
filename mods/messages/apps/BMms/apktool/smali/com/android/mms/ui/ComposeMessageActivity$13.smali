.class Lcom/android/mms/ui/ComposeMessageActivity$13;
.super Landroid/os/Handler;
.source "ComposeMessageActivity.java"


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
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6240
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method

.method private getAttachmentPostfix(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 6256
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$13;->isValidUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6257
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 6258
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 6259
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v2, 0x7f070174

    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap17(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6263
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isValidUri(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 6269
    if-nez p1, :cond_1

    .line 6270
    :goto_0
    if-eqz v1, :cond_2

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6271
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6272
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 6273
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 6272
    if-eqz v2, :cond_2

    .line 6275
    const-string/jumbo v2, "."

    .line 6274
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 6276
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 6277
    const-string/jumbo v2, ""

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 6276
    :cond_0
    return v0

    .line 6269
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 6280
    :cond_2
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 6243
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 6252
    :goto_0
    return-void

    .line 6245
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$13;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$13;->getAttachmentPostfix(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 6245
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 6243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
