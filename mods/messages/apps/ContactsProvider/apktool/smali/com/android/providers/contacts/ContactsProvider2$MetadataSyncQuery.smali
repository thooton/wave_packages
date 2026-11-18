.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$MetadataSyncQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MetadataSyncQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2624
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2625
    const-string/jumbo v1, "metadata_sync._id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2626
    const-string/jumbo v1, "data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2624
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$MetadataSyncQuery;->COLUMNS:[Ljava/lang/String;

    .line 2622
    return-void
.end method
