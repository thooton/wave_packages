.class Lcom/android/mms/ui/MessageUtils$ReportStatus;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportStatus"
.end annotation


# instance fields
.field final mDeliveryStatus:I

.field final mReadStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 749
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 750
    iput p1, p0, Lcom/android/mms/ui/MessageUtils$ReportStatus;->mDeliveryStatus:I

    .line 751
    iput p2, p0, Lcom/android/mms/ui/MessageUtils$ReportStatus;->mReadStatus:I

    .line 752
    return-void
.end method
