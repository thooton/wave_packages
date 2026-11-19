.class public Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;
.super Ljava/lang/Object;
.source "BaseRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/BaseRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DirectoryListQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 120
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "directories"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    sput-object v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    .line 121
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 122
    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "accountName"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "accountType"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "displayName"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "packageName"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "typeResourceId"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 121
    sput-object v0, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    .line 117
    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
