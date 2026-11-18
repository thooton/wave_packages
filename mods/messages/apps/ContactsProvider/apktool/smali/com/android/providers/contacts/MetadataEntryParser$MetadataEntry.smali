.class public Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;
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
    name = "MetadataEntry"
.end annotation


# instance fields
.field final mAggregationDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;",
            ">;"
        }
    .end annotation
.end field

.field final mFieldDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$FieldData;",
            ">;"
        }
    .end annotation
.end field

.field final mPinned:I

.field final mRawContactInfo:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

.field final mSendToVoicemail:I

.field final mStarred:I


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;IIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$FieldData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mRawContactInfo:Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    .line 139
    iput p2, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mSendToVoicemail:I

    .line 140
    iput p3, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mStarred:I

    .line 141
    iput p4, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mPinned:I

    .line 142
    iput-object p5, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mFieldDatas:Ljava/util/ArrayList;

    .line 143
    iput-object p6, p0, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;->mAggregationDatas:Ljava/util/ArrayList;

    .line 144
    return-void
.end method
