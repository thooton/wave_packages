.class public Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;
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
    name = "UsageStats"
.end annotation


# instance fields
.field final mLastTimeUsed:J

.field final mTimesUsed:I

.field final mUsageType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;->mUsageType:Ljava/lang/String;

    .line 70
    iput-wide p2, p0, Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;->mLastTimeUsed:J

    .line 71
    iput p4, p0, Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;->mTimesUsed:I

    .line 72
    return-void
.end method
