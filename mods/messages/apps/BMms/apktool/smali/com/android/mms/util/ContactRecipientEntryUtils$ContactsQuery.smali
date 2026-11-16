.class public Lcom/android/mms/util/ContactRecipientEntryUtils$ContactsQuery;
.super Ljava/lang/Object;
.source "ContactRecipientEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactRecipientEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 124
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    .line 125
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "photo_thumb_uri"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "data2"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "data3"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 132
    const-string/jumbo v1, "_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "sort_key"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 124
    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
