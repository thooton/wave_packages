.class Lcom/android/mms/ui/SlideView$4;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->enableMMSConformanceMode(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/mms/ui/SlideView$Position;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideView$4;->this$0:Lcom/android/mms/ui/SlideView;

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/mms/ui/SlideView$Position;Lcom/android/mms/ui/SlideView$Position;)I
    .locals 4

    .prologue
    .line 633
    iget v1, p1, Lcom/android/mms/ui/SlideView$Position;->mLeft:I

    .line 634
    iget v0, p1, Lcom/android/mms/ui/SlideView$Position;->mTop:I

    .line 635
    iget v2, p2, Lcom/android/mms/ui/SlideView$Position;->mLeft:I

    .line 636
    iget v3, p2, Lcom/android/mms/ui/SlideView$Position;->mTop:I

    .line 637
    sub-int/2addr v0, v3

    .line 638
    if-nez v0, :cond_0

    .line 639
    sub-int v0, v1, v2

    .line 641
    :cond_0
    if-nez v0, :cond_1

    .line 643
    const/4 v0, -0x1

    return v0

    .line 645
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 632
    check-cast p1, Lcom/android/mms/ui/SlideView$Position;

    check-cast p2, Lcom/android/mms/ui/SlideView$Position;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/SlideView$4;->compare(Lcom/android/mms/ui/SlideView$Position;Lcom/android/mms/ui/SlideView$Position;)I

    move-result v0

    return v0
.end method
