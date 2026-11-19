.class Lcom/android/ex/chips/Queries;
.super Ljava/lang/Object;
.source "Queries.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/Queries$1;,
        Lcom/android/ex/chips/Queries$2;,
        Lcom/android/ex/chips/Queries$Query;
    }
.end annotation


# static fields
.field public static final EMAIL:Lcom/android/ex/chips/Queries$Query;

.field public static final PHONE:Lcom/android/ex/chips/Queries$Query;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/android/ex/chips/Queries$1;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 32
    const-string/jumbo v2, "display_name"

    aput-object v2, v1, v4

    .line 33
    const-string/jumbo v2, "data1"

    aput-object v2, v1, v5

    .line 34
    const-string/jumbo v2, "data2"

    aput-object v2, v1, v6

    .line 35
    const-string/jumbo v2, "data3"

    aput-object v2, v1, v7

    .line 36
    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v8

    .line 37
    const-string/jumbo v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 38
    const-string/jumbo v2, "photo_thumb_uri"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 39
    const-string/jumbo v2, "display_name_source"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 40
    const-string/jumbo v2, "lookup"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 41
    const-string/jumbo v2, "mimetype"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 42
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/Queries$1;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    .line 51
    new-instance v0, Lcom/android/ex/chips/Queries$2;

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    .line 52
    const-string/jumbo v2, "display_name"

    aput-object v2, v1, v4

    .line 53
    const-string/jumbo v2, "data1"

    aput-object v2, v1, v5

    .line 54
    const-string/jumbo v2, "data2"

    aput-object v2, v1, v6

    .line 55
    const-string/jumbo v2, "data3"

    aput-object v2, v1, v7

    .line 56
    const-string/jumbo v2, "contact_id"

    aput-object v2, v1, v8

    .line 57
    const-string/jumbo v2, "_id"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 58
    const-string/jumbo v2, "photo_thumb_uri"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 59
    const-string/jumbo v2, "display_name_source"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 60
    const-string/jumbo v2, "lookup"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 61
    const-string/jumbo v2, "mimetype"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 62
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    invoke-direct {v0, v1, v2, v3}, Lcom/android/ex/chips/Queries$2;-><init>([Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    .line 29
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
