.class final Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5820
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 5821
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5822
    const-string/jumbo v1, "authority"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5823
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5824
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 5820
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    .line 5819
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
