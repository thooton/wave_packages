.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field public static final AUDIO_ATTRIBUTES_ALARM:Landroid/media/AudioAttributes;

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

.field private static final MAILBOX_PROJECTION:[Ljava/lang/String;

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final NEW_ICC_NOTIFICATION_ID:[I

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static emergentcyAddress:Ljava/lang/String;

.field private static includeEmergencySMS:Z

.field private static mExternalDisplay:Landroid/app/ExternalDisplay;

.field private static mMultipleNotifPerThread:Z

.field private static mPopUpMessageBody:Ljava/lang/String;

.field private static mPopUpMessageTime:Ljava/lang/Long;

.field private static mPopUpSender:Ljava/lang/String;

.field private static mPopUpSenderNumber:Ljava/lang/String;

.field private static mPopUpThreadId:Ljava/lang/Long;

.field private static sCurrentlyDisplayedMsgType:J

.field private static final sCurrentlyDisplayedMsgTypeLock:Ljava/lang/Object;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sHandler:Landroid/os/Handler;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static sScreenDensity:F


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 135
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v6

    const-string/jumbo v1, "sub"

    aput-object v1, v0, v7

    const-string/jumbo v1, "sub_cs"

    aput-object v1, v0, v5

    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 134
    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 138
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 139
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "date"

    aput-object v1, v0, v4

    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    const-string/jumbo v1, "sub_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 138
    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 142
    const/16 v0, 0x7e

    const/16 v1, 0x7f

    .line 141
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->NEW_ICC_NOTIFICATION_ID:[I

    .line 145
    new-array v0, v5, [Ljava/lang/String;

    .line 146
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 147
    const-string/jumbo v1, "type"

    aput-object v1, v0, v6

    const-string/jumbo v1, "msg_box"

    aput-object v1, v0, v7

    .line 145
    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 150
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 151
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;)V

    .line 186
    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    .line 189
    const-string/jumbo v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 228
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedMsgTypeLock:Ljava/lang/Object;

    .line 233
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    .line 241
    const-string/jumbo v0, "911"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->emergentcyAddress:Ljava/lang/String;

    .line 245
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->AUDIO_ATTRIBUTES_ALARM:Landroid/media/AudioAttributes;

    .line 115
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 811
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 812
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    .line 813
    const-string/jumbo v8, "date desc"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    .line 811
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 815
    if-nez v15, :cond_0

    .line 816
    return-void

    .line 820
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 822
    const/4 v2, 0x2

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 823
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 824
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 823
    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 825
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    # PERF(mms notification): sender cached per message
    invoke-static {v0, v1, v15}, Lcom/android/mms/transaction/WavePerf;->mmsFrom(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v4

    .line 827
    const/4 v2, 0x0

    invoke-static {v4, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v13

    .line 828
    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v2

    if-nez v2, :cond_0

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07020a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 835
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 836
    const/4 v5, 0x4

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 834
    invoke-static {v2, v5}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 837
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 840
    :cond_1
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 842
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 843
    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, v2

    .line 844
    const/4 v2, 0x5

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 846
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 847
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addMmsNotificationInfos: count="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 848
    const-string/jumbo v5, ", addr = "

    .line 847
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 848
    const-string/jumbo v5, ", thread_id="

    .line 847
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    :cond_2
    const/4 v12, 0x0

    .line 853
    const/4 v5, 0x0

    .line 854
    const/4 v14, 0x0

    # PERF(mms notification): content of already seen-by-us messages comes from a cache;
    # rows past the newest few are not loaded at all (mode 0 = load, 1 = cached, 2 = skip)
    move-object/from16 v2, p0

    invoke-static {v2, v15}, Lcom/android/mms/transaction/WavePerf;->mmsNotificationMode(Landroid/content/Context;Landroid/database/Cursor;)I

    move-result v2

    if-eqz v2, :wave_load

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-static {v15}, Lcom/android/mms/transaction/WavePerf;->mmsCachedText(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v15}, Lcom/android/mms/transaction/WavePerf;->mmsCachedType(Landroid/database/Cursor;)I

    move-result v14

    goto :cond_4

    :wave_load

    .line 856
    :try_start_1
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v2, :wave_has_persister

    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    :wave_has_persister
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 857
    if-eqz v2, :cond_4

    instance-of v3, v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v3, :cond_4

    .line 859
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    .line 858
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 860
    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v14

    .line 861
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 862
    if-eqz v2, :cond_4

    .line 863
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_3

    # PERF(mms notification): only the newest message's picture is ever shown
    invoke-static {v15}, Lcom/android/mms/transaction/WavePerf;->skipMmsNotificationPicture(Landroid/database/Cursor;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 864
    const/16 v3, 0x168

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->dp2Pixels(I)I

    move-result v3

    .line 865
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12, v3, v3}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 867
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 868
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 878
    :cond_4
    # PERF(mms notification): remember what was loaded
    invoke-static {v15, v5, v14}, Lcom/android/mms/transaction/WavePerf;->mmsRemember(Landroid/database/Cursor;Ljava/lang/String;I)V

    const/4 v3, 0x0

    move-object/from16 v2, p0

    .line 877
    :try_start_2
    invoke-static/range {v2 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v2

    .line 886
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 887
    iget-object v3, v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 889
    :cond_5
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 891
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 893
    :catchall_0
    move-exception v2

    .line 894
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 893
    throw v2

    .line 872
    :catch_0
    move-exception v2

    .line 873
    :try_start_3
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MmsException loading uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 894
    :cond_6
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 896
    return-void
.end method

.method private static addNotificationReplyAction(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 1891
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 1892
    :cond_0
    return-void

    .line 1894
    :cond_1
    const v0, 0x7f070361

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1895
    const v1, 0x7f07036e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 1896
    iget-object v1, p2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 1914
    const/4 v2, 0x0

    .line 1915
    const/high16 v3, 0x8000000

    .line 1914
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1920
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 1921
    const v3, 0x7f0200dc

    .line 1920
    invoke-direct {v2, v3, v0, v1}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 1926
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 1927
    return-void
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 959
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 960
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v5, "(type = 1 AND seen = 0)"

    .line 961
    const-string/jumbo v7, "date desc"

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 959
    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 963
    if-nez v14, :cond_0

    .line 964
    return-void

    .line 967
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->includeEmergencySMS:Z

    .line 969
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 970
    const/4 v1, 0x2

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 971
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 972
    const-string/jumbo v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 974
    const v3, 0x7f0a0005

    .line 973
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aget-object v3, v1, v2

    .line 976
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 977
    const v2, 0x7f090015

    .line 976
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 978
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->emergentcyAddress:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 979
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->includeEmergencySMS:Z

    .line 982
    :cond_3
    const/4 v1, 0x0

    invoke-static {v3, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v12

    .line 983
    invoke-virtual {v12}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v1

    if-nez v1, :cond_1

    .line 988
    const/4 v1, 0x3

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 989
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 990
    const/4 v1, 0x1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 991
    const/4 v1, 0x4

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 992
    const/4 v1, 0x5

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 994
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 996
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addSmsNotificationInfos: count="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 997
    const-string/jumbo v5, ", addr="

    .line 996
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 997
    const-string/jumbo v5, ", thread_id="

    .line 996
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_4
    const/4 v2, 0x1

    .line 1002
    const/4 v5, 0x0

    .line 1003
    const/4 v11, 0x0

    .line 1004
    const/4 v13, 0x0

    move-object/from16 v1, p0

    .line 1001
    invoke-static/range {v1 .. v13}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v1

    .line 1005
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1006
    iget-object v2, v1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 1007
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1006
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1009
    :cond_5
    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1011
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1012
    const/4 v1, 0x0

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1014
    :catchall_0
    move-exception v1

    .line 1015
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1014
    throw v1

    .line 1015
    :cond_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1017
    return-void
.end method

.method public static blockingRemoveIccNotifications(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 2542
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2543
    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2547
    :goto_0
    return-void

    .line 2545
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->NEW_ICC_NOTIFICATION_ID:[I

    aget v0, v0, p1

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;J)V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 579
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 580
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 581
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 582
    return-void
.end method

.method public static blockingUpdateNewIccMessageIndicator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 16

    .prologue
    .line 425
    invoke-static/range {p3 .. p3}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v13

    .line 426
    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->getSimThreadByPhoneId(I)J

    move-result-wide v2

    sget-wide v4, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 429
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "blockingUpdateNewIccMessageIndicator displaying sim messages now"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;)V

    .line 431
    return-void

    .line 433
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v14

    .line 434
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    .line 435
    const/4 v3, 0x1

    .line 436
    const/4 v6, 0x0

    .line 437
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v7, p3

    move-wide/from16 v8, p4

    .line 435
    invoke-static/range {v2 .. v12}, Lcom/android/mms/transaction/MessagingNotification;->getNewIccMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v5

    .line 438
    const v2, 0x7f02009e

    invoke-virtual {v14, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 440
    const-string/jumbo v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 439
    check-cast v2, Landroid/app/NotificationManager;

    .line 445
    const/4 v3, -0x1

    if-ne v13, v3, :cond_6

    .line 446
    iget-object v3, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    const/4 v4, 0x0

    .line 447
    const/high16 v6, 0x8000000

    .line 446
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 454
    :goto_0
    iget-object v6, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 455
    invoke-virtual {v14, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 458
    const-string/jumbo v4, "msg"

    .line 455
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 459
    const/4 v4, 0x0

    .line 455
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 461
    const/4 v3, 0x0

    .line 462
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 463
    const/4 v4, 0x0

    .line 464
    const-string/jumbo v8, "pref_key_vibrate"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 468
    const-string/jumbo v4, "pref_key_vibrate"

    .line 469
    const/4 v8, 0x0

    .line 468
    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 479
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 480
    const/4 v3, 0x2

    .line 482
    :cond_2
    const-string/jumbo v4, "pref_key_ringtone"

    .line 483
    const/4 v8, 0x0

    .line 482
    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 484
    sget-boolean v7, Lcom/android/mms/transaction/MessagingNotification;->includeEmergencySMS:Z

    if-nez v7, :cond_3

    .line 485
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v7

    .line 486
    if-eqz v7, :cond_9

    .line 487
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v4, 0x0

    .line 488
    :goto_2
    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->AUDIO_ATTRIBUTES_ALARM:Landroid/media/AudioAttributes;

    .line 487
    invoke-virtual {v14, v4, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 493
    :cond_3
    :goto_3
    const-string/jumbo v4, "Mms"

    const-string/jumbo v7, "blockingUpdateNewIccMessageIndicator: adding sound to the notification"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    or-int/lit8 v3, v3, 0x4

    .line 495
    invoke-virtual {v14, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 499
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 498
    const/4 v4, 0x0

    .line 499
    const/4 v7, 0x0

    .line 498
    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 503
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 505
    iget-object v3, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    .line 508
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3, v14}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 509
    iget-object v4, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 508
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 508
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 520
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->notifyUserIfFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    const/4 v4, -0x1

    if-ne v13, v4, :cond_c

    .line 523
    const/16 v4, 0x80

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 528
    :goto_5
    iget v2, v3, Landroid/app/Notification;->defaults:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_4

    .line 529
    iget-object v2, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v2, :cond_5

    .line 531
    :cond_4
    const-string/jumbo v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 533
    const-string/jumbo v3, "MessagingNotification"

    .line 532
    const v4, 0x1000000a

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 534
    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 537
    :cond_5
    return-void

    .line 451
    :cond_6
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->NEW_ICC_NOTIFICATION_ID:[I

    aget v3, v3, v13

    iget-object v4, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 452
    const/high16 v6, 0x8000000

    .line 450
    move-object/from16 v0, p0

    invoke-static {v0, v3, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_0

    .line 470
    :cond_7
    const-string/jumbo v8, "pref_key_vibrateWhen"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 476
    const-string/jumbo v4, "pref_key_vibrateWhen"

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    const-string/jumbo v8, "always"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1

    .line 487
    :cond_8
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto/16 :goto_2

    .line 490
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v4, 0x0

    :goto_6
    invoke-virtual {v14, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    :cond_a
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_6

    .line 515
    :cond_b
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v14}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 516
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 515
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    goto/16 :goto_4

    .line 525
    :cond_c
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->NEW_ICC_NOTIFICATION_ID:[I

    aget v4, v4, v13

    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_5
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZLandroid/net/Uri;)V

    .line 341
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZLandroid/net/Uri;)V
    .locals 7

    .prologue
    const/16 v4, 0x7b

    const/4 v3, 0x2

    .line 348
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 349
    if-nez v0, :cond_1

    .line 350
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 351
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "blockingUpdateNewMessageIndicator: not the default sms app - skipping notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    return-void

    .line 361
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 363
    new-instance v2, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 365
    invoke-static {p0, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 366
    invoke-static {p0, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 368
    invoke-interface {v1}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 373
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 395
    :goto_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 396
    invoke-static {p0, p4}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v0

    .line 397
    if-eqz v0, :cond_2

    .line 398
    invoke-virtual {v0, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    .line 402
    :cond_2
    invoke-interface {v1}, Ljava/util/SortedSet;->clear()V

    .line 403
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 404
    return-void

    .line 375
    :cond_3
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 376
    const-string/jumbo v0, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 377
    const-string/jumbo v4, ", newMsgThreadId="

    .line 376
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_4
    invoke-static {p1, p2, v2}, Lcom/android/mms/transaction/MessagingNotification;->isInCurrentConversation(JLjava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;)V

    .line 387
    return-void

    .line 389
    :cond_5
    const-wide/16 v4, -0x2

    cmp-long v0, p1, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {p0, v0, v3, v1}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static buildNotificationAvatar(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1931
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    .line 1932
    :cond_0
    return-object v1

    .line 1934
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1937
    const v2, 0x1050006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1939
    const v3, 0x1050005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1941
    invoke-virtual {p2, p1, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1943
    if-eqz v0, :cond_4

    .line 1946
    instance-of v4, v0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v4, :cond_6

    .line 1947
    check-cast v0, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1949
    :goto_0
    if-eqz v0, :cond_3

    .line 1950
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_2

    .line 1953
    const/4 v1, 0x1

    .line 1952
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1954
    invoke-static {p1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1956
    :cond_2
    if-eqz v0, :cond_3

    .line 1957
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1976
    :cond_3
    :goto_1
    return-object v0

    .line 1960
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1961
    invoke-static {p1, p2, v3}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1963
    invoke-static {p1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1964
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v0, v1

    goto :goto_1

    .line 1966
    :cond_5
    invoke-static {p1, p2, v3}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1968
    invoke-static {p1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1970
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200d4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1972
    div-int/lit8 v3, v3, 0x2

    .line 1971
    invoke-static {v2, v3}, Lcom/android/mms/util/MaterialColorMapUtils;->vectobitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1973
    invoke-static {v0, v2}, Lcom/android/mms/util/MaterialColorMapUtils;->toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1974
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static buildNotificationTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1988
    if-eqz p2, :cond_0

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1991
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v6, 0x20

    .line 1997
    invoke-static {p1, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1999
    new-instance v2, Ljava/lang/StringBuilder;

    .line 2000
    if-nez v0, :cond_5

    .line 2001
    const-string/jumbo v0, ""

    .line 1999
    :goto_0
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2003
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2005
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v7, :cond_2

    .line 2006
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    .line 2005
    if-eqz v0, :cond_2

    .line 2007
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 2009
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2014
    :goto_1
    if-lez v0, :cond_0

    .line 2015
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2016
    const v4, 0x7f070370

    .line 2015
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2017
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07036f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2018
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2021
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2022
    :cond_1
    const-string/jumbo v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2026
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2027
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2028
    invoke-virtual {p2, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 2029
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2030
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2033
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2034
    invoke-virtual {p3, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 2035
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2038
    :cond_4
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2039
    new-instance v2, Landroid/text/style/StyleSpan;

    invoke-direct {v2, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    .line 2040
    const/16 v4, 0x21

    .line 2039
    invoke-virtual {v3, v2, v1, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2042
    return-object v3

    .line 2002
    :cond_5
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 2009
    goto/16 :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 1101
    const-string/jumbo v0, "notification"

    .line 1100
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1105
    const/16 v1, 0x7b

    if-ne v1, p1, :cond_0

    .line 1107
    const-string/jumbo v1, ":sms:"

    const/4 v2, 0x0

    .line 1106
    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildNotificationTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1109
    return-void

    .line 1111
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1112
    return-void
.end method

.method public static cancelNotificationItem(Landroid/content/Context;IJZ)V
    .locals 4

    .prologue
    .line 1116
    const/16 v0, 0x7b

    if-eq v0, p1, :cond_0

    .line 1117
    return-void

    .line 1122
    :cond_0
    if-eqz p4, :cond_1

    .line 1124
    const-string/jumbo v0, "notification"

    .line 1123
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1126
    const-string/jumbo v1, ":sms:"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 1125
    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildNotificationTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1131
    :goto_0
    return-void

    .line 1129
    :cond_1
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static doNotify(Landroid/app/Notification;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1874
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1875
    const-string/jumbo v1, ":sms:"

    invoke-static {p1, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildNotificationTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1876
    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1878
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1879
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1881
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1883
    const-string/jumbo v1, "MessagingNotification"

    .line 1882
    const v2, 0x1000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1884
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1886
    :cond_1
    return-void
.end method

.method private static doNotify(Landroid/app/Notification;Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 1855
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1857
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1859
    const-string/jumbo v2, ":sms:"

    .line 1858
    invoke-static {p1, v2, v1}, Lcom/android/mms/transaction/MessagingNotification;->buildNotificationTag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1860
    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1862
    iget v0, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 1863
    iget-object v0, p0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 1865
    :cond_0
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1867
    const-string/jumbo v1, "MessagingNotification"

    .line 1866
    const v2, 0x1000000a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 1868
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1870
    :cond_1
    return-void
.end method

.method private static final dp2Pixels(I)I
    .locals 2

    .prologue
    .line 920
    int-to-float v0, p0

    sget v1, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 754
    const v1, 0x7f07028f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 755
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 756
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    .line 757
    :goto_0
    if-ge v1, v4, :cond_1

    .line 758
    if-lez v1, :cond_0

    .line 759
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 761
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 757
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 764
    :cond_1
    return-object v3
.end method

.method private static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 900
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 902
    if-nez v0, :cond_0

    .line 903
    return v2

    .line 904
    :cond_0
    if-le v0, v3, :cond_1

    .line 905
    const/4 v0, 0x4

    return v0

    .line 907
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 908
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 909
    return v3

    .line 910
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 911
    const/4 v0, 0x2

    return v0

    .line 912
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 913
    const/4 v0, 0x3

    return v0

    .line 916
    :cond_4
    return v2
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 770
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    .line 771
    const v0, 0x7f0c0008

    .line 770
    invoke-direct {v2, p0, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 773
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 779
    :goto_0
    if-lez v0, :cond_0

    .line 780
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 782
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v0

    .line 781
    invoke-virtual {v3, v2, v1, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 783
    return-object v3

    .line 774
    :pswitch_0
    const v0, 0x7f07028a

    goto :goto_0

    .line 775
    :pswitch_1
    const v0, 0x7f07028c

    goto :goto_0

    .line 776
    :pswitch_2
    const v0, 0x7f07028b

    goto :goto_0

    .line 777
    :pswitch_3
    const v0, 0x7f07028d

    goto :goto_0

    .line 785
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 773
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static final getClickIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 4

    .prologue
    const/high16 v3, 0x34000000

    const/high16 v2, 0x10000000

    .line 1047
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-static {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 1049
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1067
    :goto_0
    return-object v0

    .line 1052
    :cond_0
    if-eqz p1, :cond_1

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1054
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1055
    :cond_1
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1056
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1057
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1060
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1061
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1064
    const-string/jumbo v1, "mailbox_id"

    .line 1065
    const/4 v2, 0x1

    .line 1064
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getCurrentlyDisplayedThreadId()J
    .locals 2

    .prologue
    .line 2605
    sget-wide v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    return-wide v0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2370
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2371
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 2372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2373
    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v4, " AND "

    .line 2372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v4, "st"

    .line 2372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2374
    const-string/jumbo v4, "="

    .line 2372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2375
    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    .line 2370
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2377
    if-nez v0, :cond_0

    .line 2378
    const/4 v0, 0x0

    return v0

    .line 2380
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2381
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2382
    return v1
.end method

.method private static getFailedIntentFromConversationMode(Landroid/content/Context;ZJ)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 2151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2152
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    .line 2151
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2153
    if-nez v1, :cond_0

    .line 2154
    return-object v5

    .line 2158
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->isFailedMessagesInSameThread(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2159
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2160
    if-eqz p1, :cond_1

    .line 2162
    const-string/jumbo v2, "failed_download_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2163
    const-string/jumbo v2, "thread_id"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2173
    return-object v0

    .line 2166
    :cond_1
    :try_start_1
    const-string/jumbo v2, "undelivered_flag"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2167
    const-string/jumbo v2, "thread_id"

    .line 2168
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageThreadId(Landroid/database/Cursor;)J

    move-result-wide v4

    .line 2167
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2174
    :catchall_0
    move-exception v0

    .line 2175
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2174
    throw v0

    .line 2171
    :cond_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getFailedIntentFromFolderMode(Landroid/content/Context;IZ)Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2189
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MAILBOX_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    .line 2188
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2190
    if-nez v1, :cond_0

    .line 2191
    return-object v5

    .line 2198
    :cond_0
    if-le p1, v7, :cond_2

    .line 2199
    :try_start_0
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->isFailedMessagesInSameBox(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2200
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageBoxId(Landroid/database/Cursor;)I

    move-result v0

    .line 2205
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2206
    const-string/jumbo v3, "mailbox_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2208
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2209
    return-object v2

    :cond_1
    move v0, v7

    .line 2202
    goto :goto_0

    .line 2214
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageType(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 2215
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageId(Landroid/database/Cursor;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2216
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 2240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2217
    return-object v5

    .line 2219
    :cond_3
    :try_start_2
    const-string/jumbo v3, "sms"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2220
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2221
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2222
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2236
    :goto_1
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2238
    return-object v0

    .line 2225
    :cond_4
    if-eqz p2, :cond_5

    .line 2227
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2228
    const/4 v2, 0x1

    .line 2229
    const-string/jumbo v3, "mailbox_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2239
    :catchall_0
    move-exception v0

    .line 2240
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2239
    throw v0

    .line 2231
    :cond_5
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2232
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2233
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2046
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 2047
    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMultiThreadsViewIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 2588
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2590
    const-string/jumbo v1, "mailbox_id"

    .line 2591
    const/4 v2, 0x1

    .line 2590
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2595
    :goto_0
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2599
    return-object v0

    .line 2593
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private static final getNewIccMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 22

    .prologue
    .line 1081
    new-instance v8, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ManageSimMessages;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    const/high16 v6, 0x34000000

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    const-string/jumbo v6, "slot"

    invoke-static/range {p5 .. p5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v7

    invoke-virtual {v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1088
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1087
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-static {v0, v1, v6, v7, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1090
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x0

    .line 1089
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1091
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1094
    new-instance v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1096
    const-wide/16 v18, 0x0

    move/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v12, p6

    move-object/from16 v15, p8

    move-object/from16 v16, p9

    move/from16 v17, p10

    move/from16 v20, p5

    .line 1094
    invoke-direct/range {v6 .. v20}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V

    return-object v6
.end method

.method private static final getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;I)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 21

    .prologue
    .line 1031
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p5

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->getClickIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v8

    .line 1034
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1033
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p7

    invoke-static {v0, v1, v6, v7, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1036
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x0

    .line 1035
    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 1040
    new-instance v6, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move/from16 v7, p1

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-wide/from16 v12, p8

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move/from16 v17, p12

    move-wide/from16 v18, p5

    move/from16 v20, p7

    invoke-direct/range {v6 .. v20}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V

    return-object v6
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getSmsNewDeliveryInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 927
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "(type = 2 AND status = 0)"

    .line 928
    const-string/jumbo v6, "date"

    move-object v0, p0

    move-object v2, p1

    .line 926
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 930
    if-nez v1, :cond_0

    .line 931
    const-string/jumbo v0, "getSmsNewDeliveryInfo null"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 932
    return-object v5

    .line 936
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 937
    const-string/jumbo v0, "getSmsNewDeliveryInfo moveToLast null"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 938
    return-object v5

    .line 941
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 942
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSmsNewDeliveryInfo moveToLast address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 943
    const-wide/16 v2, 0xbb8

    .line 945
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 946
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v0

    .line 948
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const v0, 0x7f070236

    invoke-virtual {p0, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 948
    return-object v4

    .line 951
    :catchall_0
    move-exception v0

    .line 952
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 951
    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2408
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2410
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 2406
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2415
    if-nez v1, :cond_0

    .line 2419
    return-wide v8

    .line 2423
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2424
    const-string/jumbo v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2425
    if-gez v0, :cond_1

    .line 2446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2430
    return-wide v8

    .line 2432
    :cond_1
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 2446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2437
    return-wide v2

    .line 2446
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2443
    return-wide v8

    .line 2445
    :catchall_0
    move-exception v0

    .line 2446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2445
    throw v0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2459
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2461
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 2457
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2466
    if-nez v1, :cond_0

    .line 2470
    return-wide v8

    .line 2474
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2475
    const-string/jumbo v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2476
    if-gez v0, :cond_1

    .line 2497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2481
    return-wide v8

    .line 2483
    :cond_1
    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 2497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2488
    return-wide v2

    .line 2497
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2494
    return-wide v8

    .line 2496
    :catchall_0
    move-exception v0

    .line 2497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2496
    throw v0
.end method

.method private static getUndeliveredMessageBoxId(Landroid/database/Cursor;)I
    .locals 2

    .prologue
    .line 2298
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2299
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0

    .line 2302
    :cond_0
    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0

    .line 2305
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;)I
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2246
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2247
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    .line 2246
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2248
    if-nez v0, :cond_0

    .line 2249
    const/4 v0, 0x0

    return v0

    .line 2251
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 2252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2253
    return v1
.end method

.method private static getUndeliveredMessageId(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 2289
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2290
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 2292
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getUndeliveredMessageThreadId(Landroid/database/Cursor;)J
    .locals 2

    .prologue
    .line 2258
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    .line 2261
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static getUndeliveredMessageType(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2280
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2283
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    const-string/jumbo v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-static {p0, v1, v0}, Lcom/android/mms/wave/WaveInit;->deferRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 264
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    .line 270
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 271
    const v1, 0x11200cc

    .line 270
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const-string/jumbo v0, "extdisplay"

    .line 272
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ExternalDisplay;

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mExternalDisplay:Landroid/app/ExternalDisplay;

    .line 275
    :cond_0
    return-void
.end method

.method private static isFailedMessagesInSameBox(Landroid/database/Cursor;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2310
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageBoxId(Landroid/database/Cursor;)I

    move-result v2

    .line 2311
    const/4 v1, 0x1

    .line 2312
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2313
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2314
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 2325
    :goto_0
    return v0

    .line 2319
    :cond_1
    const/4 v3, 0x3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private static isFailedMessagesInSameThread(Landroid/database/Cursor;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2267
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 2268
    const/4 v1, 0x1

    .line 2269
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2270
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    .line 2275
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2392
    if-eqz p0, :cond_0

    const-string/jumbo v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2396
    if-eqz p0, :cond_0

    const-string/jumbo v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private static isInCurrentConversation(JLjava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 407
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 409
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedMsgTypeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    sget-wide v2, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedMsgType:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 411
    const-wide/16 v2, -0x2

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit v1

    .line 410
    return v0

    .line 409
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 416
    :cond_1
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_2

    :try_start_1
    sget-wide v2, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    .line 418
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :cond_2
    monitor-exit v1

    .line 417
    return v0

    .line 416
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static newMessageAlertDialog(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2503
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/NewMessageAlertActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2505
    const v1, 0x10008000

    .line 2504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v7

    .line 2506
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->mMultipleNotifPerThread:Z

    if-eqz v0, :cond_0

    .line 2507
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 2508
    new-instance v0, Lcom/android/mms/transaction/MessageAlertObject;

    .line 2509
    iget-object v1, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    .line 2510
    invoke-virtual {v5}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v10, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v5

    .line 2508
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MessageAlertObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 2511
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2515
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/MessageAlertObject;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSender:Ljava/lang/String;

    .line 2516
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageBody:Ljava/lang/String;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageTime:Ljava/lang/Long;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPopUpThreadId:Ljava/lang/Long;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSenderNumber:Ljava/lang/String;

    .line 2515
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MessageAlertObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 2517
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    :cond_1
    const-string/jumbo v0, "alertdata"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2521
    invoke-virtual {p0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2523
    return-void
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;JZ)V

    .line 325
    const-string/jumbo v2, "MessagingNotification.nonBlockingUpdateNewMessageIndicator"

    .line 320
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 326
    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2329
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2343
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 2051
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2052
    return-void
.end method

.method private static notifyExternalDisplay(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 4

    .prologue
    .line 1773
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1774
    const-string/jumbo v1, "title"

    .line 1775
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1774
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    const-string/jumbo v1, "number"

    .line 1777
    iget-object v2, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 1776
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string/jumbo v1, "name"

    .line 1779
    iget-object v2, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1778
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mExternalDisplay:Landroid/app/ExternalDisplay;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/app/ExternalDisplay;->notifyClient(ILandroid/os/Bundle;)V

    .line 1781
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2065
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 2066
    if-nez v0, :cond_0

    .line 2067
    return-void

    .line 2076
    :cond_0
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;)I

    move-result v2

    .line 2079
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 2082
    if-le v2, v7, :cond_1

    .line 2083
    new-array v0, v7, [Ljava/lang/Object;

    .line 2084
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 2083
    const v1, 0x7f070239

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2085
    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2094
    :goto_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 2096
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2097
    invoke-static {p0, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->getFailedIntentFromFolderMode(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v2

    .line 2098
    if-nez v2, :cond_3

    .line 2099
    return-void

    .line 2087
    :cond_1
    if-eqz p1, :cond_2

    .line 2088
    const v0, 0x7f070253

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2091
    :goto_1
    const v1, 0x7f070255

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2089
    :cond_2
    const v0, 0x7f070254

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2100
    :cond_3
    if-eqz p1, :cond_6

    .line 2102
    const-string/jumbo v6, "failed_download_flag"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2111
    :goto_2
    invoke-virtual {v5, v2}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 2113
    const v2, 0x7f0200d9

    iput v2, v4, Landroid/app/Notification;->icon:I

    .line 2115
    iput-object v0, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2118
    const/high16 v2, 0x8000000

    invoke-virtual {v5, v8, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2117
    invoke-virtual {v4, p0, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2120
    if-eqz p4, :cond_5

    .line 2121
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2122
    const-string/jumbo v1, "pref_key_vibrate"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 2124
    if-eqz v1, :cond_4

    .line 2125
    iget v1, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v4, Landroid/app/Notification;->defaults:I

    .line 2128
    :cond_4
    const-string/jumbo v1, "pref_key_ringtone"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v0, v3

    :goto_3
    iput-object v0, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2134
    :cond_5
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2133
    check-cast v0, Landroid/app/NotificationManager;

    .line 2136
    if-eqz p1, :cond_9

    .line 2137
    const/16 v1, 0x213

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2141
    :goto_4
    return-void

    .line 2104
    :cond_6
    const-string/jumbo v6, "undelivered_flag"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 2107
    :cond_7
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification;->getFailedIntentFromConversationMode(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v2

    goto :goto_2

    .line 2130
    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 2139
    :cond_9
    const/16 v1, 0x315

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_4
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2055
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2056
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 2059
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 2060
    return-void
.end method

.method private static notifyUserIfFullScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2526
    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2527
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 2529
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2530
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2531
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsFullScreenMode: the top activity is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    if-eqz v0, :cond_0

    .line 2533
    const-string/jumbo v1, "com.android.browser.BrowserActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2532
    if-eqz v0, :cond_0

    .line 2534
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.mms.transaction.MESSAGE_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2535
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2536
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2539
    :cond_0
    return-void
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 544
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->includeEmergencySMS:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 545
    const v1, 0x7f090015

    .line 544
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 549
    const-string/jumbo v1, "pref_key_ringtone"

    .line 550
    const/4 v2, 0x0

    .line 549
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 553
    return-void

    .line 555
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 556
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string/jumbo v1, "Mms"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    .line 557
    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 558
    const/high16 v5, 0x3e800000    # 0.25f

    move-object v1, p0

    .line 557
    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    .line 561
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v2, v0}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Lcom/android/mms/transaction/NotificationPlayer;)V

    .line 566
    const-wide/16 v4, 0x1388

    .line 561
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 567
    return-void
.end method

.method private static sendFullNotification(Landroid/content/Context;Z)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2569
    const-string/jumbo v0, "notification"

    .line 2568
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2571
    if-eqz p1, :cond_0

    const v1, 0x7f07023d

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2573
    if-eqz p1, :cond_1

    const v1, 0x7f07023e

    :goto_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2575
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2576
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .line 2577
    const v5, 0x7f0200d9

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 2578
    iput-object v2, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2579
    invoke-virtual {v4, p0, v2, v1, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2580
    const/16 v1, 0x7d

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2581
    return-void

    .line 2572
    :cond_0
    const v1, 0x7f07023f

    goto :goto_0

    .line 2574
    :cond_1
    const v1, 0x7f070240

    goto :goto_1
.end method

.method public static setCurrentlyDisplayedMsgType(J)V
    .locals 2

    .prologue
    .line 296
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedMsgTypeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedMsgType:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 302
    return-void

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2

    .prologue
    .line 287
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 293
    return-void

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 3

    .prologue
    .line 1137
    if-nez p1, :cond_0

    .line 1138
    return-void

    .line 1142
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1143
    return-void

    .line 1146
    :cond_1
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$3;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1152
    return-void
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2386
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2387
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2389
    :cond_0
    return-void
.end method

.method public static updateMessageFullIndicator(Landroid/content/Context;ZZ)V
    .locals 1

    .prologue
    .line 2556
    if-eqz p2, :cond_0

    .line 2557
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->sendFullNotification(Landroid/content/Context;Z)V

    .line 2561
    :goto_0
    return-void

    .line 2559
    :cond_0
    const/16 v0, 0x7d

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1168
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1172
    return-void

    .line 1176
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v6

    .line 1177
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1178
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1179
    const v3, 0x11200cc

    .line 1178
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1180
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyExternalDisplay(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V

    .line 1183
    :cond_1
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1184
    iget-wide v4, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    .line 1183
    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1185
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080041

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 1183
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v15

    .line 1188
    if-eqz p1, :cond_2

    .line 1189
    iget-object v2, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1202
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1204
    const/4 v3, 0x0

    .line 1207
    const v4, 0x1050006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1209
    const v4, 0x1050005

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1210
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1211
    const/4 v2, 0x1

    if-le v6, v2, :cond_4

    :goto_0
    const/4 v2, 0x1

    move v5, v2

    .line 1212
    :goto_1
    if-eqz v5, :cond_6

    .line 1213
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getMultiThreadsViewIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1214
    const/4 v4, 0x0

    .line 1215
    const/high16 v7, 0x8000000

    .line 1214
    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1216
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x0

    aput-object v7, v4, v10

    const v7, 0x7f070285

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1217
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1218
    const v10, 0x7f0200db

    .line 1217
    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1219
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 1220
    const v11, 0x7f0200d6

    .line 1219
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1221
    invoke-static {v7, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->vectobitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1224
    div-int/lit8 v8, v8, 0x2

    .line 1223
    invoke-static {v10, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->vectobitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1225
    invoke-static {v7, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1226
    invoke-virtual {v15, v7}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v10, v3

    move-object v11, v4

    move-object v3, v2

    .line 1270
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getMultiThreadsViewIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    .line 1271
    const/4 v4, 0x0

    .line 1272
    const/high16 v7, 0x8000000

    .line 1271
    move-object/from16 v0, p0

    invoke-static {v0, v4, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 1274
    const v2, 0x7f02009e

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1277
    const-string/jumbo v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1276
    check-cast v2, Landroid/app/NotificationManager;

    .line 1280
    invoke-virtual {v15, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1282
    const-string/jumbo v3, "msg"

    .line 1280
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1283
    const/4 v3, 0x1

    .line 1280
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1287
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1288
    iget-object v2, v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getPeopleReferenceUri()Landroid/net/Uri;

    move-result-object v2

    .line 1289
    if-eqz v2, :cond_3

    .line 1290
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_3

    .line 1211
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p2

    if-le v0, v2, :cond_4

    goto/16 :goto_0

    .line 1228
    :cond_6
    iget-object v4, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    .line 1229
    iget-object v10, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 1230
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v2}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1232
    if-eqz v2, :cond_9

    .line 1235
    instance-of v10, v2, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    if-eqz v10, :cond_26

    .line 1236
    check-cast v2, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    invoke-virtual {v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1238
    :goto_4
    if-eqz v2, :cond_8

    .line 1239
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge v3, v7, :cond_7

    .line 1242
    const/4 v3, 0x1

    .line 1241
    invoke-static {v2, v8, v7, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1243
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1245
    :cond_7
    if-eqz v2, :cond_8

    .line 1246
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1267
    :cond_8
    :goto_5
    iget-object v3, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    .line 1266
    const/4 v7, 0x0

    .line 1267
    const/high16 v8, 0x8000000

    .line 1266
    move-object/from16 v0, p0

    invoke-static {v0, v7, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v10, v2

    move-object v11, v4

    goto/16 :goto_2

    .line 1249
    :cond_9
    invoke-virtual {v10}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1250
    move-object/from16 v0, p0

    invoke-static {v0, v10, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1252
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1253
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v2, v3

    goto :goto_5

    .line 1255
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v10, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1257
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/util/MaterialColorMapUtils;->getCircularBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1259
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0200d4

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1261
    div-int/lit8 v8, v8, 0x2

    .line 1260
    invoke-static {v7, v8}, Lcom/android/mms/util/MaterialColorMapUtils;->vectobitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1262
    invoke-static {v2, v7}, Lcom/android/mms/util/MaterialColorMapUtils;->toConformBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1263
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-object v2, v3

    goto :goto_5

    .line 1294
    :cond_b
    const/4 v2, 0x0

    .line 1296
    if-eqz p1, :cond_f

    .line 1297
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1299
    const/4 v3, 0x0

    .line 1300
    const-string/jumbo v7, "pref_key_vibrate"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1304
    const-string/jumbo v3, "pref_key_vibrate"

    .line 1305
    const/4 v7, 0x0

    .line 1304
    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1315
    :cond_c
    :goto_6
    if-eqz v3, :cond_d

    .line 1316
    const/4 v2, 0x2

    .line 1319
    :cond_d
    const-string/jumbo v3, "pref_key_ringtone"

    .line 1320
    const/4 v7, 0x0

    .line 1319
    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1321
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->includeEmergencySMS:Z

    if-nez v4, :cond_e

    .line 1322
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    .line 1323
    if-eqz v4, :cond_14

    .line 1324
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v3, 0x0

    .line 1325
    :goto_7
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->AUDIO_ATTRIBUTES_ALARM:Landroid/media/AudioAttributes;

    .line 1324
    invoke-virtual {v15, v3, v4}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 1330
    :cond_e
    :goto_8
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "updateNotification: new message, adding sound to the notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_f
    or-int/lit8 v2, v2, 0x4

    .line 1335
    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1339
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 1338
    const/4 v3, 0x0

    .line 1339
    const/4 v4, 0x0

    .line 1338
    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1343
    const/4 v2, 0x1

    if-ne v6, v2, :cond_1a

    .line 1345
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1346
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1347
    iget-boolean v2, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-nez v2, :cond_18

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_18

    .line 1348
    const/4 v12, 0x0

    .line 1350
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1351
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v5, v2, [Ljava/lang/String;

    .line 1352
    const-string/jumbo v2, "_id"

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const-string/jumbo v2, "thread_id"

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string/jumbo v2, "sub_id"

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const-string/jumbo v2, "m_type"

    const/4 v6, 0x3

    aput-object v2, v5, v6

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "thread_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v6, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1354
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    .line 1350
    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1355
    if-eqz v3, :cond_16

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_16

    .line 1356
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1358
    const-string/jumbo v2, "sub_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1357
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1360
    const-string/jumbo v2, "_id"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1359
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1362
    const-string/jumbo v2, "m_type"

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 1361
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1364
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 1363
    move-object/from16 v0, p0

    invoke-static {v15, v0, v9, v2, v8}, Lcom/android/mms/transaction/MessagingNotification;->addNotificationReplyAction(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLjava/lang/String;)V

    .line 1366
    const-wide/16 v18, 0x82

    cmp-long v2, v16, v18

    if-nez v2, :cond_25

    .line 1369
    const v2, 0x7f070360

    .line 1368
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1370
    new-instance v8, Landroid/content/Intent;

    .line 1371
    const-class v12, Lcom/android/mms/ui/NotificationActionHandleReceiver;

    .line 1370
    move-object/from16 v0, p0

    invoke-direct {v8, v0, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1373
    const-string/jumbo v12, "com.android.mms.DOWNLOAD"

    .line 1372
    invoke-virtual {v8, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1375
    const-string/jumbo v12, "msg_sub_id"

    .line 1374
    invoke-virtual {v8, v12, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1377
    const-string/jumbo v4, "msg_id"

    .line 1376
    invoke-virtual {v8, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1379
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 1378
    move-object/from16 v0, p0

    invoke-static {v0, v4, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1381
    const v5, 0x7f0200d7

    invoke-virtual {v15, v5, v2, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1384
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1385
    const v4, 0x7f070140

    .line 1384
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1386
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1387
    const v4, 0x7f070140

    .line 1386
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    move-object v2, v13

    move-object v4, v14

    .line 1391
    :goto_9
    if-eqz v3, :cond_10

    .line 1392
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_10
    move-object v3, v4

    .line 1400
    :goto_a
    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1402
    iget-object v4, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_19

    .line 1405
    iget-object v3, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1406
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3, v15}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1407
    iget-object v4, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    .line 1406
    invoke-virtual {v3, v4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1419
    :goto_b
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPopUpAlertEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz p1, :cond_11

    .line 1420
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mMultipleNotifPerThread:Z

    .line 1421
    iget-object v3, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mMessage:Ljava/lang/String;

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageBody:Ljava/lang/String;

    .line 1422
    iget-object v3, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSender:Ljava/lang/String;

    .line 1423
    invoke-virtual {v9}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageTime:Ljava/lang/Long;

    .line 1424
    iget-wide v4, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpThreadId:Ljava/lang/Long;

    .line 1425
    iget-object v3, v9, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSenderNumber:Ljava/lang/String;

    .line 1426
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->newMessageAlertDialog(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1558
    :cond_11
    :goto_c
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->notifyUserIfFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->doNotify(Landroid/app/Notification;Landroid/content/Context;)V

    .line 1560
    return-void

    .line 1306
    :cond_12
    const-string/jumbo v7, "pref_key_vibrateWhen"

    invoke-interface {v4, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1312
    const-string/jumbo v3, "pref_key_vibrateWhen"

    const/4 v7, 0x0

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1313
    const-string/jumbo v7, "always"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_6

    .line 1324
    :cond_13
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_7

    .line 1327
    :cond_14
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto/16 :goto_8

    :cond_15
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_d

    :cond_16
    move-object v2, v13

    move-object v4, v14

    .line 1355
    goto/16 :goto_9

    .line 1390
    :catchall_0
    move-exception v2

    move-object v3, v12

    .line 1391
    :goto_e
    if-eqz v3, :cond_17

    .line 1392
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1390
    :cond_17
    throw v2

    .line 1396
    :cond_18
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v15, v0, v9, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->addNotificationReplyAction(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLjava/lang/String;)V

    move-object v2, v13

    move-object v3, v14

    goto/16 :goto_a

    .line 1414
    :cond_19
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v2

    goto/16 :goto_b

    .line 1433
    :cond_1a
    if-nez v5, :cond_1f

    .line 1437
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1439
    new-array v2, v6, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1440
    array-length v3, v2

    .line 1441
    add-int/lit8 v3, v3, -0x1

    :goto_f
    if-ltz v3, :cond_1c

    .line 1442
    aget-object v5, v2, v3

    .line 1444
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1446
    if-eqz v3, :cond_1b

    .line 1447
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1441
    :cond_1b
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1451
    :cond_1c
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1452
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 1451
    const v5, 0x7f070285

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1453
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v15, v0, v9, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->addNotificationReplyAction(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;ZLjava/lang/String;)V

    .line 1456
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3, v15}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 1460
    if-nez v10, :cond_1d

    const/4 v3, 0x0

    .line 1456
    :goto_10
    invoke-virtual {v5, v3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1463
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPopUpAlertEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1e

    if-eqz p1, :cond_24

    .line 1464
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mMultipleNotifPerThread:Z

    .line 1465
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageBody:Ljava/lang/String;

    .line 1466
    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSender:Ljava/lang/String;

    .line 1467
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPopUpMessageTime:Ljava/lang/Long;

    .line 1468
    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget-object v4, v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mPopUpSenderNumber:Ljava/lang/String;

    .line 1469
    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-wide v4, v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mPopUpThreadId:Ljava/lang/Long;

    .line 1470
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->newMessageAlertDialog(Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object v2, v3

    goto/16 :goto_c

    .line 1460
    :cond_1d
    const-string/jumbo v3, " "

    goto :goto_10

    :cond_1e
    move-object v2, v3

    .line 1463
    goto/16 :goto_c

    .line 1477
    :cond_1f
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 1479
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1481
    :cond_20
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 1482
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1483
    iget-wide v6, v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    .line 1484
    iget-wide v6, v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1490
    :cond_21
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1491
    const-string/jumbo v2, "group_key_mms"

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1492
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 1493
    new-instance v6, Landroid/app/Notification$InboxStyle;

    invoke-direct {v6, v15}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1497
    const-string/jumbo v2, " "

    invoke-virtual {v6, v2}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1502
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1503
    const/16 v3, 0x8

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1505
    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v7, :cond_22

    .line 1506
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1507
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1505
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12

    .line 1509
    :cond_22
    invoke-virtual {v6}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1511
    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1514
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPopUpAlertEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_23

    if-eqz p1, :cond_23

    .line 1515
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mMultipleNotifPerThread:Z

    .line 1516
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->newMessageAlertDialog(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1520
    :cond_23
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->notifyUserIfFullScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    invoke-static {v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->doNotify(Landroid/app/Notification;Landroid/content/Context;)V

    .line 1547
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1554
    return-void

    .line 1390
    :catchall_1
    move-exception v2

    goto/16 :goto_e

    :cond_24
    move-object v2, v3

    goto/16 :goto_c

    :cond_25
    move-object v2, v13

    move-object v4, v14

    goto/16 :goto_9

    :cond_26
    move-object v2, v3

    goto/16 :goto_4
.end method

.method public static updateNotificationItem(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1801
    invoke-static {p0, v5, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->getClickIntent(Landroid/content/Context;ZJ)Landroid/content/Intent;

    move-result-object v0

    .line 1803
    const/high16 v1, 0x8000000

    .line 1802
    invoke-static {p0, v4, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1805
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1806
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1805
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1807
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080041

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1805
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1810
    const v1, 0x7f02009e

    .line 1805
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1811
    const-string/jumbo v1, "msg"

    .line 1805
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1819
    if-eqz p6, :cond_0

    .line 1820
    const-string/jumbo v1, "group_key_mms"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1821
    if-eqz p7, :cond_0

    .line 1822
    invoke-virtual {v0, p7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1826
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1828
    invoke-static {p4, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 1829
    invoke-static {v0, p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->buildNotificationAvatar(Landroid/app/Notification$Builder;Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/Bitmap;

    .line 1831
    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getPeopleReferenceUri()Landroid/net/Uri;

    move-result-object v2

    .line 1832
    if-eqz v2, :cond_1

    .line 1833
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1837
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const v3, 0x7f07036c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1838
    const-string/jumbo v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1839
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1840
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1844
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1845
    if-eqz p6, :cond_2

    .line 1846
    invoke-static {v0, p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->doNotify(Landroid/app/Notification;Landroid/content/Context;J)V

    .line 1851
    :goto_0
    return-void

    .line 1848
    :cond_2
    invoke-static {v0, p0}, Lcom/android/mms/transaction/MessagingNotification;->doNotify(Landroid/app/Notification;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 2349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2350
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    .line 2349
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2351
    if-nez v1, :cond_0

    .line 2352
    return-void

    .line 2355
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2356
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageThreadId(Landroid/database/Cursor;)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_1

    .line 2357
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->isFailedMessagesInSameThread(Landroid/database/Cursor;)Z

    move-result v0

    .line 2355
    if-eqz v0, :cond_1

    .line 2358
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2361
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2363
    return-void

    .line 2360
    :catchall_0
    move-exception v0

    .line 2361
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2360
    throw v0
.end method
