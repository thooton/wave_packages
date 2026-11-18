.class public Lcom/android/providers/contacts/MetadataEntryParser$FieldData;
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
    name = "FieldData"
.end annotation


# instance fields
.field final mDataHashId:Ljava/lang/String;

.field final mIsPrimary:Z

.field final mIsSuperPrimary:Z

.field final mUsageStatsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZLjava/util/ArrayList;)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;->mDataHashId:Ljava/lang/String;

    .line 86
    iput-boolean p2, p0, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;->mIsPrimary:Z

    .line 87
    iput-boolean p3, p0, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;->mIsSuperPrimary:Z

    .line 88
    iput-object p4, p0, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;->mUsageStatsList:Ljava/util/ArrayList;

    .line 89
    return-void
.end method
