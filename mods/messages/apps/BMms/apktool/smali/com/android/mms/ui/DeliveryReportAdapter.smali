.class public Lcom/android/mms/ui/DeliveryReportAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeliveryReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/DeliveryReportItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    const v0, 0x7f040016

    const v1, 0x7f0f0083

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DeliveryReportAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/DeliveryReportItem;

    .line 45
    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 48
    const v2, 0x7f040016

    const/4 v3, 0x0

    .line 47
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/DeliveryReportListItem;

    .line 57
    :goto_0
    iget-object v2, v0, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/mms/ui/DeliveryReportItem;->deliveryDate:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/ui/DeliveryReportListItem;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v1

    .line 50
    :cond_0
    instance-of v1, p2, Lcom/android/mms/ui/DeliveryReportListItem;

    if-eqz v1, :cond_1

    .line 51
    check-cast p2, Lcom/android/mms/ui/DeliveryReportListItem;

    move-object v1, p2

    goto :goto_0

    .line 53
    :cond_1
    return-object p2
.end method
