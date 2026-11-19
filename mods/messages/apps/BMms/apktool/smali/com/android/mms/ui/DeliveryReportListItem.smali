.class public Lcom/android/mms/ui/DeliveryReportListItem;
.super Landroid/widget/LinearLayout;
.source "DeliveryReportListItem.java"


# instance fields
.field private mDeliveryDateView:Landroid/widget/TextView;

.field private mIconView:Landroid/widget/ImageView;

.field private mRecipientView:Landroid/widget/TextView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const v7, 0x7f0200ac

    const/4 v6, 0x0

    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportListItem;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070225

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 63
    invoke-static {p1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportListItem;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    const v1, 0x7f070220

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    const v2, 0x7f070221

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 74
    const v3, 0x7f07021e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 75
    const v4, 0x7f070224

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    const v5, 0x7f07030c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 91
    :cond_0
    :goto_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    :goto_2
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 82
    :cond_3
    invoke-virtual {p2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p2, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 86
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 94
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 49
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mRecipientView:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mStatusView:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mDeliveryDateView:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0f0082

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/DeliveryReportListItem;->mIconView:Landroid/widget/ImageView;

    .line 53
    return-void
.end method
