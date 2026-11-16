.class final Lcom/android/mms/ui/MessageUtils$14;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->onMessageContentClick(Landroid/content/Context;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$contentText:Landroid/widget/TextView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$spans:[Landroid/text/style/URLSpan;


# direct methods
.method constructor <init>([Landroid/text/style/URLSpan;Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$spans:[Landroid/text/style/URLSpan;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/mms/ui/MessageUtils$14;->val$contentText:Landroid/widget/TextView;

    .line 2542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2545
    if-ltz p2, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$14;->val$spans:[Landroid/text/style/URLSpan;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 2547
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWebUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2548
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->-wrap5(Landroid/content/Context;Ljava/lang/String;)V

    .line 2564
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2565
    return-void

    .line 2550
    :cond_1
    const-string/jumbo v1, "tel:"

    .line 2551
    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2552
    const-string/jumbo v1, "tel:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2553
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2554
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->showNumberOptions(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2556
    :cond_2
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2557
    const-string/jumbo v1, "mailto:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2558
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->showEmailOptions(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2560
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$14;->val$spans:[Landroid/text/style/URLSpan;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$14;->val$contentText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
