.class public final Lcom/android/mms/ExceedMessageSizeException;
.super Lcom/android/mms/ContentRestrictionException;
.source "ExceedMessageSizeException.java"


# static fields
.field private static final serialVersionUID:J = 0x5c416c21a8bc3882L


# instance fields
.field private mMmsSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ExceedMessageSizeException;->mMmsSize:I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ExceedMessageSizeException;->mMmsSize:I

    .line 34
    return-void
.end method


# virtual methods
.method public getMmsSize()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/android/mms/ExceedMessageSizeException;->mMmsSize:I

    return v0
.end method

.method public putMmsSize(I)Lcom/android/mms/ExceedMessageSizeException;
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/android/mms/ExceedMessageSizeException;->mMmsSize:I

    .line 38
    return-object p0
.end method
