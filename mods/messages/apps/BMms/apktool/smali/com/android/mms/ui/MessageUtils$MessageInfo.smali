.class Lcom/android/mms/ui/MessageUtils$MessageInfo;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageInfo"
.end annotation


# instance fields
.field private count:I

.field private size:J


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MessageUtils$MessageInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->count:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageUtils$MessageInfo;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->size:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MessageUtils$MessageInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->count:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MessageUtils$MessageInfo;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->size:J

    return-wide p1
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 2652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2653
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->count:I

    .line 2654
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageUtils$MessageInfo;->size:J

    .line 2652
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageUtils$MessageInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageUtils$MessageInfo;-><init>()V

    return-void
.end method
