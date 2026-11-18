.class public interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Tables"
.end annotation


# static fields
.field public static final SEQUENCE_TABLES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 179
    const-string/jumbo v1, "contacts"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "raw_contacts"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "stream_items"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "stream_item_photos"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "photo_files"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "groups"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "directories"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 178
    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;->SEQUENCE_TABLES:[Ljava/lang/String;

    .line 149
    return-void
.end method
