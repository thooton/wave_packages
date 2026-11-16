.class public Lcom/android/mms/ui/BoxMessageItem;
.super Ljava/lang/Object;
.source "BoxMessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mBody:Ljava/lang/String;

.field mDate:J

.field mDateSent:J

.field mDateStr:Ljava/lang/String;

.field mLocked:Z

.field final mMsgId:J

.field mName:Ljava/lang/String;

.field mRead:I

.field mSmsType:I

.field mStatus:I

.field mSubID:I

.field mThreadId:J

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "BoxMessageItem"

    sput-object v0, Lcom/android/mms/ui/BoxMessageItem;->TAG:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;JLandroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/mms/ui/BoxMessageItem;->mThreadId:J

    .line 66
    iput-object p2, p0, Lcom/android/mms/ui/BoxMessageItem;->mType:Ljava/lang/String;

    .line 67
    iput-wide p3, p0, Lcom/android/mms/ui/BoxMessageItem;->mMsgId:J

    .line 69
    const-string/jumbo v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x4

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mBody:Ljava/lang/String;

    .line 71
    const/4 v0, 0x3

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mAddress:Ljava/lang/String;

    .line 72
    const/4 v0, 0x6

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/BoxMessageItem;->mDate:J

    .line 73
    const/16 v0, 0xa

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mStatus:I

    .line 74
    const/16 v0, 0x8

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mRead:I

    .line 75
    const/4 v0, 0x5

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mSubID:I

    .line 76
    const/4 v0, 0x7

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/BoxMessageItem;->mDateSent:J

    .line 77
    const/16 v0, 0x9

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mSmsType:I

    .line 78
    const/16 v0, 0xb

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mLocked:Z

    .line 79
    const/4 v0, 0x2

    invoke-interface {p5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v4, v0

    iput-wide v4, p0, Lcom/android/mms/ui/BoxMessageItem;->mThreadId:J

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mName:Ljava/lang/String;

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mDate:J

    invoke-static {p1, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BoxMessageItem;->mDateStr:Ljava/lang/String;

    .line 85
    return-void

    :cond_1
    move v0, v2

    .line 78
    goto :goto_0
.end method
