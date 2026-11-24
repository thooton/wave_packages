.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;,
        Lcom/android/mms/ui/MessageItem$PduLoadedCallback;,
        Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;
    }
.end annotation


# static fields
.field private static DEFAULT_SUB_ID:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mWaveTextReady:Z

.field mWavePduPending:Z

.field mWaveTimestampPending:Z

.field mWaveTimestampMillis:J

.field mBody:Ljava/lang/String;

.field final mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field private mCanClusterWithNextMessage:Z

.field private mCanClusterWithPreviousMessage:Z

.field mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mCountDown:I

.field mDate:J

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mHasAttachmentToSave:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mIsDrmRingtoneWithRights:Z

.field mIsForwardable:Z

.field mIsRcsBurnMessage:Z

.field private mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

.field mLastSendingState:Z

.field mLayoutType:I

.field mLocked:Z

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field mMmsStatus:I

.field final mMsgId:J

.field private mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

.field mRcsChatType:I

.field mRcsFileSize:I

.field mRcsIsDownload:I

.field mRcsMessageId:Ljava/lang/String;

.field mRcsMimeType:Ljava/lang/String;

.field mRcsMsgState:I

.field mRcsPath:Ljava/lang/String;

.field mRcsThumbPath:Ljava/lang/String;

.field mRcsType:I

.field mReadReport:Z

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubId:I

.field mSubject:Ljava/lang/String;

.field mTextContentType:Ljava/lang/String;

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/util/ItemLoadedFuture;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem$PduLoadedCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;ZJ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MessageItem;->formatTimeStamp(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageItem;->isAttachmentSaveable(Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageItem;->isDrmRingtoneWithRights(Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageItem;->isForwardable(Lcom/google/android/mms/pdu/PduBody;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string/jumbo v0, "Mms"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/ui/MessageItem;->DEFAULT_SUB_ID:I

    .line 74
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    .line 138
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mIsForwardable:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mHasAttachmentToSave:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mIsDrmRingtoneWithRights:Z

    .line 145
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mCountDown:I

    .line 161
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 162
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 163
    iput-object p5, p0, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 164
    iput-object p2, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 165
    iput-object p4, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 167
    const-string/jumbo v0, "sms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 168
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 170
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 172
    const/16 v0, 0x10

    shr-long v6, v4, v0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    .line 173
    const/16 v0, 0x10

    shr-long/2addr v4, v0

    .line 175
    :cond_0
    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    .line 177
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 189
    :goto_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 191
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 192
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 193
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 194
    invoke-static {p1}, Lcom/android/mms/ui/WaveTimeFormat;->meLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 202
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsPath:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsPath:Ljava/lang/String;

    .line 204
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsThumbPath:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsThumbPath:Ljava/lang/String;

    .line 205
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMsgType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsType:I

    .line 206
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsBurnMessage:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-le v0, v3, :cond_8

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsRcsBurnMessage:Z

    .line 208
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsIsDownload:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsIsDownload:I

    .line 209
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMsgState:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsMsgState:I

    .line 210
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMimeType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsMimeType:Ljava/lang/String;

    .line 211
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsFileSize:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsFileSize:I

    .line 212
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsChatType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsChatType:I

    .line 213
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMessageId:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsMessageId:Ljava/lang/String;

    .line 215
    :cond_1
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 217
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSubId:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    .line 219
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-nez v0, :cond_3

    .line 220
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    .line 222
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 224
    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_2

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 227
    :cond_2
    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    invoke-direct {p0, p1, v1, v4, v5}, Lcom/android/mms/ui/MessageItem;->formatTimeStamp(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 241
    :cond_3
    :goto_3
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_c

    :goto_4
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 242
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 321
    :goto_5
    # PERF: mCanClusterWithPreviousMessage is only read by hidden mAvatar (View.GONE);
    # skip 2 cursor seeks + full canClusterWithMessage() comparison per row.
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithPreviousMessage:Z

    .line 327
    :goto_6
    invoke-interface {p3}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 328
    invoke-direct {p0, p3}, Lcom/android/mms/ui/MessageItem;->canClusterWithMessage(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithNextMessage:Z

    .line 329
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 333
    :goto_7
    return-void

    .line 178
    :cond_4
    const-wide/16 v6, 0x40

    cmp-long v0, v4, v6

    if-ltz v0, :cond_5

    .line 180
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 181
    :cond_5
    const-wide/16 v6, 0x20

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    .line 183
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 186
    :cond_6
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_0

    .line 200
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 206
    goto/16 :goto_2

    .line 230
    :cond_9
    invoke-static {p1}, Lcom/android/mms/ui/WaveMessageUi;->showDateSent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 231
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDateSent:I

    .line 230
    :goto_8
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 234
    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_a

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 237
    :cond_a
    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/android/mms/ui/MessageItem;->formatTimeStamp(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_3

    .line 232
    :cond_b
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    goto :goto_8

    :cond_c
    move v1, v2

    .line 241
    goto/16 :goto_4

    .line 243
    :cond_d
    const-string/jumbo v0, "mms"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 244
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 245
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 246
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 247
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 248
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    iget v4, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSubId:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    .line 251
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 252
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 253
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 254
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 252
    invoke-direct {v4, v5, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 255
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 257
    :cond_e
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 258
    iput-object v6, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 259
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 260
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 261
    iput-object v6, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 262
    iput v2, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 263
    iput-object v6, p0, Lcom/android/mms/ui/MessageItem;->mTextContentType:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 266
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsStatus:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    .line 267
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsTextOnly:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    :goto_a
    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 272
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v3, 0x82

    if-eq v0, v3, :cond_11

    move v0, v1

    .line 274
    :goto_b
    # PERF(mms rows): plain text from the cursor, no per-message PDU load
    invoke-static {p0, p3}, Lcom/android/mms/ui/WaveTextMms;->bind(Lcom/android/mms/ui/MessageItem;Landroid/database/Cursor;)Z
    move-result v3
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mWaveTextReady:Z
    if-nez v3, :wave_mms_ready
    # FIX(conversation reveal): cached PDU callbacks can run inline, so set this first.
    const/4 v3, 0x1
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mWavePduPending:Z

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getPduLoaderManager()Lcom/android/mms/util/PduLoaderManager;

    move-result-object v3

    .line 275
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 276
    new-instance v5, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MessageItem$PduLoadedMessageItemCallback;-><init>(Lcom/android/mms/ui/MessageItem;)V

    .line 274
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/mms/util/PduLoaderManager;->getPdu(Landroid/net/Uri;ZLcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    :wave_mms_ready
    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    if-nez v0, :cond_12

    .line 279
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 294
    :goto_c
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_14

    .line 296
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 308
    :goto_d
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    .line 310
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    goto/16 :goto_5

    :cond_f
    move v0, v2

    .line 257
    goto :goto_9

    :cond_10
    move v0, v3

    .line 268
    goto :goto_a

    :cond_11
    move v0, v2

    .line 272
    goto :goto_b

    .line 283
    :cond_12
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 284
    const/16 v3, 0x80

    if-ne v0, v3, :cond_13

    .line 285
    invoke-direct {p0}, Lcom/android/mms/ui/MessageItem;->checkDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    .line 289
    :catch_0
    move-exception v0

    .line 290
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Value for delivery report was invalid."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto :goto_c

    .line 287
    :cond_13
    :try_start_1
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_c

    .line 300
    :cond_14
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 301
    const/16 v3, 0x80

    if-ne v0, v3, :cond_15

    :goto_e
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_d

    .line 302
    :catch_1
    move-exception v0

    .line 303
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Value for read report was invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto :goto_d

    :cond_15
    move v1, v2

    .line 301
    goto :goto_e

    .line 313
    :cond_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 314
    const v1, 0x7f090019

    .line 313
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 314
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDateSent:I

    .line 313
    :goto_f
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 315
    const-wide/16 v4, 0x3e8

    .line 313
    mul-long/2addr v0, v4

    iput-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    goto/16 :goto_5

    .line 315
    :cond_17
    iget v0, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    goto :goto_f

    .line 318
    :cond_18
    new-instance v0, Lcom/google/android/mms/MmsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type of the message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_19
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithPreviousMessage:Z

    goto/16 :goto_6

    .line 331
    :cond_1a
    iput-boolean v2, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithNextMessage:Z

    goto/16 :goto_7
.end method

.method private canClusterWithMessage(Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    return v3

    .line 342
    :cond_0
    const-wide/16 v0, 0x0

    .line 343
    const-string/jumbo v2, "sms"

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSubId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 345
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 346
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 353
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MessageItem;->isSameSub(I)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageItem;->isSameBox(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageItem;->isInDateDelta(J)Z

    move-result v0

    .line 353
    if-eqz v0, :cond_2

    .line 355
    const/4 v0, 0x1

    return v0

    .line 347
    :cond_1
    const-string/jumbo v2, "mms"

    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 349
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 350
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDate:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    mul-long/2addr v0, v6

    goto :goto_0

    .line 357
    :cond_2
    return v3

    :cond_3
    move v2, v3

    move v4, v3

    goto :goto_0
.end method

.method private checkDeliveryStatus()Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 640
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "m_id"

    aput-object v0, v2, v1

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 643
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 644
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 645
    if-eqz v0, :cond_7

    .line 646
    const-string/jumbo v3, "m_id=? and m_type=?"

    .line 647
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v4, v1

    .line 648
    const/16 v0, 0x86

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 649
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    .line 649
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 652
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 653
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    if-eqz v1, :cond_0

    .line 659
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 665
    :cond_0
    if-eqz v6, :cond_1

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    return-object v0

    .line 655
    :cond_2
    :try_start_3
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    if-eqz v1, :cond_3

    .line 659
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 665
    :cond_3
    if-eqz v6, :cond_4

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 655
    :cond_4
    return-object v0

    .line 657
    :catchall_0
    move-exception v0

    .line 658
    if-eqz v1, :cond_5

    .line 659
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 657
    :cond_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 664
    :catchall_1
    move-exception v0

    .line 665
    if-eqz v6, :cond_6

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 664
    :cond_6
    throw v0

    .line 665
    :cond_7
    if-eqz v6, :cond_8

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_8
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    return-object v0
.end method

.method private formatTimeStamp(Landroid/content/Context;ZJ)Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    invoke-static {p1, p3, p4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/WaveTimeFormat;->meLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    sget-object v0, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 410
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 412
    :cond_0
    return-void

    .line 405
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private isAttachmentSaveable(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 3

    .prologue
    .line 526
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 527
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 528
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 529
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageItem;->isContentTypeWorthToSave(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mHasAttachmentToSave:Z

    .line 526
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    return-void
.end method

.method private isContentTypeWorthToSave(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 519
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    .line 519
    if-nez v0, :cond_0

    .line 520
    invoke-static {p1}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v0

    .line 519
    if-nez v0, :cond_0

    .line 521
    const-string/jumbo v0, "application/ogg"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 519
    if-nez v0, :cond_0

    .line 522
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 519
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDrmRingtoneWithRights(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4

    .prologue
    .line 536
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 537
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 538
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-static {v2}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v2

    .line 541
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 540
    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 542
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 544
    const/4 v2, 0x2

    .line 543
    invoke-static {v1, v2}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v1

    .line 542
    if-eqz v1, :cond_0

    .line 545
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mIsDrmRingtoneWithRights:Z

    .line 536
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    :cond_1
    return-void
.end method

.method private isForwardable(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 552
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 553
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 554
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 555
    invoke-static {v3}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 557
    const/4 v3, 0x3

    .line 556
    invoke-static {v2, v3}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 555
    if-eqz v2, :cond_0

    .line 558
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mIsForwardable:Z

    .line 552
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-void
.end method

.method private isInDateDelta(J)Z
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 372
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 373
    :goto_0
    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 374
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 375
    const/4 v0, 0x0

    return v0

    .line 372
    :cond_0
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isMe(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 436
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 437
    if-eq p1, v1, :cond_2

    .line 438
    if-nez p1, :cond_3

    move v0, v1

    .line 439
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    if-eq p1, v1, :cond_5

    .line 441
    if-nez p1, :cond_0

    move v2, v1

    .line 442
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    xor-int/lit8 v0, v1, 0x1

    return v0

    :cond_2
    move v0, v1

    .line 437
    goto :goto_0

    :cond_3
    move v0, v2

    .line 438
    goto :goto_0

    :cond_4
    move v0, v2

    .line 436
    goto :goto_0

    :cond_5
    move v2, v1

    .line 440
    goto :goto_1
.end method

.method private isSameBox(I)Z
    .locals 2

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageItem;->isMe(I)Z

    move-result v0

    .line 368
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMe()Z

    move-result v1

    .line 369
    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSameSub(I)Z
    .locals 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    sget v1, Lcom/android/mms/ui/MessageItem;->DEFAULT_SUB_ID:I

    if-ne v0, v1, :cond_0

    .line 362
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 363
    :goto_0
    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 362
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public cancelPduLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    invoke-interface {v0}, Lcom/android/mms/util/ItemLoadedFuture;->isDone()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 679
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    sget-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelPduLoading for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/mms/util/ItemLoadedFuture;->cancel(Landroid/net/Uri;)V

    .line 684
    :cond_1
    iput-object v3, p0, Lcom/android/mms/ui/MessageItem;->mItemLoadedFuture:Lcom/android/mms/util/ItemLoadedFuture;

    .line 685
    return-void
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 483
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 484
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCanClusterWithNextMessage()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithNextMessage:Z

    return v0
.end method

.method public getCanClusterWithPreviousMessage()Z
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mCanClusterWithPreviousMessage:Z

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 714
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 496
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getMmsDownloadStatus()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMmsStatus:I

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getMmsDownloadStatus(I)I

    move-result v0

    return v0
.end method

.method public getMsgBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgDownlaodState()I
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsIsDownload:I

    return v0
.end method

.method public getRcsMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsMsgFileSize()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsFileSize:I

    return v0
.end method

.method public getRcsMsgState()I
    .locals 1

    .prologue
    .line 750
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsMsgState:I

    return v0
.end method

.method public getRcsMsgType()I
    .locals 1

    .prologue
    .line 738
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsType:I

    return v0
.end method

.method public getRcsPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRcsThumbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsThumbPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 3

    # PERF(inline text): clustered rows may never display their timestamp.
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mWaveTimestampPending:Z
    if-eqz v0, :wave_read_timestamp
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;
    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mWaveTimestampMillis:J
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    move-result-object v0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageItem;->setTimestamp(Ljava/lang/String;)V

    :wave_read_timestamp
    .line 702
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public isCdmaInboxMessage()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 386
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    .line 392
    :goto_0
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-eq v3, v1, :cond_0

    .line 393
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-nez v3, :cond_1

    .line 394
    :cond_0
    const/4 v3, 0x2

    if-ne v3, v0, :cond_3

    move v0, v1

    :goto_1
    move v2, v0

    .line 392
    :cond_1
    return v2

    .line 389
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v2

    .line 394
    goto :goto_1
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 423
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 464
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_2

    .line 465
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 467
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 468
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 469
    :cond_0
    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 464
    goto :goto_0

    :cond_3
    move v0, v2

    .line 465
    goto :goto_0

    :cond_4
    move v0, v2

    .line 463
    goto :goto_0
.end method

.method public isFailedRcsTextMessage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 812
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    .line 813
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 812
    :cond_0
    return v0
.end method

.method public isGroupChatMessageWithoutNotification()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 799
    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mRcsChatType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 800
    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mRcsType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 799
    :cond_0
    return v0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageItem;->isMe(I)Z

    move-result v0

    return v0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string/jumbo v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 446
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v0, v5, :cond_3

    move v0, v1

    .line 447
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 448
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 449
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v3, v5, :cond_4

    :cond_0
    move v2, v1

    .line 451
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    move v0, v2

    .line 446
    goto :goto_0

    .line 450
    :cond_4
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    move v2, v1

    goto :goto_1
.end method

.method public isRcsBurnMessage()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsRcsBurnMessage:Z

    return v0
.end method

.method public isRcsMessage()Z
    .locals 1

    .prologue
    .line 769
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRcsChatType:I

    packed-switch v0, :pswitch_data_0

    .line 776
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 774
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSentMms()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 479
    return-void
.end method

.method public setDate(J)V
    .locals 1

    .prologue
    .line 710
    iput-wide p1, p0, Lcom/android/mms/ui/MessageItem;->mDate:J

    .line 711
    return-void
.end method

.method public setOnPduLoaded(Lcom/android/mms/ui/MessageItem$PduLoadedCallback;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mPduLoadedCallback:Lcom/android/mms/ui/MessageItem$PduLoadedCallback;

    .line 675
    return-void
.end method

.method public setRcsThumbPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mRcsThumbPath:Ljava/lang/String;

    .line 735
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mWaveTimestampPending:Z
    .line 706
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 707
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    const-string/jumbo v1, " box: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 510
    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    const-string/jumbo v1, " uri: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 511
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    const-string/jumbo v1, " address: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    const-string/jumbo v1, " contact: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    const-string/jumbo v1, " read: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string/jumbo v1, " delivery status: "

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
