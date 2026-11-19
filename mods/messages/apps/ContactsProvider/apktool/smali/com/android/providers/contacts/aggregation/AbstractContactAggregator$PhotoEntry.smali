.class Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final fileSize:I

.field final pixelCount:I

.field final synthetic this$0:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;II)V
    .locals 0

    .prologue
    .line 1702
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->this$0:Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1703
    iput p2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->pixelCount:I

    .line 1704
    iput p3, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->fileSize:I

    .line 1705
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;IILcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;II)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)I
    .locals 2

    .prologue
    .line 1709
    if-nez p1, :cond_0

    .line 1710
    const/4 v0, -0x1

    return v0

    .line 1712
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->pixelCount:I

    if-ne v0, v1, :cond_1

    .line 1713
    iget v0, p1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->fileSize:I

    iget v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->fileSize:I

    sub-int/2addr v0, v1

    return v0

    .line 1715
    :cond_1
    iget v0, p1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->pixelCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1707
    check-cast p1, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;

    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$PhotoEntry;)I

    move-result v0

    return v0
.end method
