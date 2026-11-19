.class final Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddressBookIndexQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7725
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 7726
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "bucket"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "label"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "count"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 7725
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    .line 7719
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
