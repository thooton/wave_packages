.class public Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;
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
    name = "RawContactInfo"
.end annotation


# instance fields
.field final mAccountName:Ljava/lang/String;

.field final mAccountType:Ljava/lang/String;

.field final mBackupId:Ljava/lang/String;

.field final mDataSet:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;->mBackupId:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;->mAccountType:Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;->mAccountName:Ljava/lang/String;

    .line 105
    iput-object p4, p0, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;->mDataSet:Ljava/lang/String;

    .line 106
    return-void
.end method
