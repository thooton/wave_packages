.class interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NicknameQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 835
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 836
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 837
    const-string/jumbo v1, "raw_contact_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 838
    const-string/jumbo v1, "data1"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 835
    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    .line 829
    return-void
.end method
