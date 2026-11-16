.class final Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;
.super Ljava/lang/Object;
.source "DeliveryReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DeliveryReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsReportStatus"
.end annotation


# instance fields
.field final deliveryStatus:I

.field final readStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    iput p1, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->deliveryStatus:I

    .line 381
    iput p2, p0, Lcom/android/mms/ui/DeliveryReportActivity$MmsReportStatus;->readStatus:I

    .line 382
    return-void
.end method
