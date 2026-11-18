.class final Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;
.super Ljava/lang/Object;
.source "SearchIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/SearchIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContactIndexQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "mimetype"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "data2"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "data3"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "data4"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "data5"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "data6"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "data7"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "data8"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "data9"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "data10"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "data11"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "data12"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "data13"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "data14"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/android/providers/contacts/SearchIndexManager$ContactIndexQuery;->COLUMNS:[Ljava/lang/String;

    .line 57
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
