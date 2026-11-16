.class public final Lcom/android/mms/UnsupportContentTypeException;
.super Lcom/android/mms/ContentRestrictionException;
.source "UnsupportContentTypeException.java"


# static fields
.field private static final serialVersionUID:J = 0x253ff03fb5b89761L


# instance fields
.field private mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/mms/ContentRestrictionException;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/mms/UnsupportContentTypeException;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public putContentType(Ljava/lang/String;)Lcom/android/mms/UnsupportContentTypeException;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/mms/UnsupportContentTypeException;->mContentType:Ljava/lang/String;

    .line 38
    return-object p0
.end method
