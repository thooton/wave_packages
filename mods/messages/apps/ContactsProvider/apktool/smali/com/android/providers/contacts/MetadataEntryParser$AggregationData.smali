.class public Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;
.super Ljava/lang/Object;
.source "MetadataEntryParser.java"


# annotations
.annotation build Lcom/android/providers/contacts/util/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/MetadataEntryParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AggregationData"
.end annotation


# instance fields
.field final mRawContactInfo1:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

.field final mRawContactInfo2:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

.field final mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;->mRawContactInfo1:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    .line 119
    iput-object p2, p0, Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;->mRawContactInfo2:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    .line 120
    iput-object p3, p0, Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;->mType:Ljava/lang/String;

    .line 121
    return-void
.end method
