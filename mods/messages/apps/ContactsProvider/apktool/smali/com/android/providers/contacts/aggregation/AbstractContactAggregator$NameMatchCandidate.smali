.class public Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;
.super Ljava/lang/Object;
.source "AbstractContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/AbstractContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NameMatchCandidate"
.end annotation


# instance fields
.field mLookupType:I

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    .line 213
    iput p2, p0, Lcom/android/providers/contacts/aggregation/AbstractContactAggregator$NameMatchCandidate;->mLookupType:I

    .line 214
    return-void
.end method
