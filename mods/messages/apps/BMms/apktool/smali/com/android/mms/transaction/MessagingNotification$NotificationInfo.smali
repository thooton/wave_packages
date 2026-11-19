.class final Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessagingNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationInfo"
.end annotation


# instance fields
.field public final mAttachmentBitmap:Landroid/graphics/Bitmap;

.field public final mAttachmentType:I

.field public final mClickIntent:Landroid/content/Intent;

.field public final mIsSms:Z

.field public final mMessage:Ljava/lang/String;

.field public final mSender:Lcom/android/mms/data/Contact;

.field public final mSubId:I

.field public final mSubject:Ljava/lang/String;

.field public final mThreadId:J

.field public final mTicker:Ljava/lang/CharSequence;

.field public final mTimeMillis:J

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V
    .locals 0

    .prologue
    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 633
    iput-boolean p1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    .line 634
    iput-object p2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 635
    iput-object p3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 636
    iput-object p4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    .line 637
    iput-object p5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    .line 638
    iput-wide p6, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    .line 639
    iput-object p8, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 640
    iput-object p9, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 641
    iput-object p10, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 642
    iput p11, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    .line 643
    iput-wide p12, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    .line 644
    iput p14, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubId:I

    .line 645
    return-void
.end method


# virtual methods
.method public formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    .line 653
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    .line 654
    const v1, 0x7f0c0007

    .line 653
    invoke-direct {v0, p1, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 658
    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string/jumbo v2, "\\n\\s+"

    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 660
    :goto_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 661
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 663
    iget-object v2, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v4, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 665
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v0, :cond_2

    .line 666
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 667
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 669
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 671
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 672
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 673
    invoke-virtual {v1, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 677
    :cond_4
    return-object v1

    .line 658
    :cond_5
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 682
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    .line 683
    const v0, 0x7f0c0007

    .line 682
    invoke-direct {v1, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 685
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 686
    const v0, 0x7f0c0009

    .line 685
    invoke-direct {v2, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 690
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string/jumbo v3, "\\n\\s+"

    const-string/jumbo v4, "\n"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 692
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 693
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 694
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 695
    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 696
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v6, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 698
    :cond_0
    const v1, 0x7f07028e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 699
    iget-boolean v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-nez v4, :cond_4

    .line 700
    iget-object v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 701
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 702
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 704
    :cond_1
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 705
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 707
    iget-object v5, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    .line 706
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 709
    :cond_2
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    if-lez v4, :cond_4

    .line 710
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 711
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 713
    :cond_3
    iget v4, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentType:I

    invoke-static {p1, v4}, Lcom/android/mms/transaction/MessagingNotification;->-wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 716
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 717
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 718
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 720
    :cond_5
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 721
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 723
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 722
    invoke-virtual {v3, v2, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 725
    :cond_6
    return-object v3

    .line 690
    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_0
.end method

.method public formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 730
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    .line 731
    const v0, 0x7f0c0007

    .line 730
    invoke-direct {v1, p1, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 735
    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    const-string/jumbo v2, "\\n\\s+"

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    :goto_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 739
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 740
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 741
    iget-object v3, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSubject:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 743
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 744
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 745
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v1, v4, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 747
    :cond_1
    return-object v2

    .line 735
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 648
    iget-wide v0, p0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    return-wide v0
.end method
