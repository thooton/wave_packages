.class interface abstract Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupQuery;
.super Ljava/lang/Object;
.source "CommonNicknameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "NicknameLookupQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 130
    const-string/jumbo v1, "cluster"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 129
    sput-object v0, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache$NicknameLookupQuery;->COLUMNS:[Ljava/lang/String;

    .line 126
    return-void
.end method
