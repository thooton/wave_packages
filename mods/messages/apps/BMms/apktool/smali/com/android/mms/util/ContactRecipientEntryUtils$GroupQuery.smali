.class public Lcom/android/mms/util/ContactRecipientEntryUtils$GroupQuery;
.super Ljava/lang/Object;
.source "ContactRecipientEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactRecipientEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 142
    const-string/jumbo v1, "title"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "summ_phones"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 141
    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils$GroupQuery;->PROJECTION:[Ljava/lang/String;

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
