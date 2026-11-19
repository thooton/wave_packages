.class public Lcom/android/mms/transaction/DefaultRetryScheme;
.super Lcom/android/mms/transaction/AbstractRetryScheme;
.source "DefaultRetryScheme.java"


# static fields
.field private static sDefaultRetryScheme:[I


# instance fields
.field private mCustomeRetryTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p2}, Lcom/android/mms/transaction/AbstractRetryScheme;-><init>(I)V

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCustomeRetryTimes:I

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    .line 45
    iget v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    if-gez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 46
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    sget-object v1, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 47
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 46
    :goto_1
    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCustomeRetryTimes:I

    .line 50
    return-void

    .line 45
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_0

    .line 47
    :cond_1
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    goto :goto_1
.end method


# virtual methods
.method public getRetryLimit()I
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCustomeRetryTimes:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 55
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    array-length v0, v0

    return v0

    .line 57
    :cond_0
    iget v0, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mCustomeRetryTimes:I

    return v0
.end method

.method public getWaitingInterval()J
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/transaction/DefaultRetryScheme;->sDefaultRetryScheme:[I

    iget v1, p0, Lcom/android/mms/transaction/DefaultRetryScheme;->mRetriedTimes:I

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
