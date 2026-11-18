.class final Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 84
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "typeResourceId"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "exportSupport"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "shortcutSupport"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "photoSupport"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 84
    sput-object v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
