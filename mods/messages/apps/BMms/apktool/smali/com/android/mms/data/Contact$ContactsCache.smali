.class Lcom/android/mms/data/Contact$ContactsCache;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactsCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_PROJECTION:[Ljava/lang/String;

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

.field private static final SELF_PROJECTION:[Ljava/lang/String;

.field static sStaticKeyBuffer:Ljava/nio/CharBuffer;


# instance fields
.field private final mContactsHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsMultiple:Z

.field private final mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;


# direct methods
.method static synthetic -get0(Lcom/android/mms/data/Contact$ContactsCache;)Lcom/android/mms/data/Contact$ContactsCache$TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->remove(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->updateContact(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 480
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 482
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    .line 483
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 484
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    .line 485
    const-string/jumbo v1, "data3"

    aput-object v1, v0, v5

    .line 486
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v6

    .line 487
    const-string/jumbo v1, "contact_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 488
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v7

    .line 489
    const-string/jumbo v1, "contact_status"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 490
    const-string/jumbo v1, "data4"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 491
    const-string/jumbo v1, "photo_id"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 492
    const-string/jumbo v1, "lookup"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 493
    const-string/jumbo v1, "send_to_voicemail"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 482
    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 508
    new-array v0, v6, [Ljava/lang/String;

    .line 509
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 510
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v4

    .line 511
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v5

    .line 508
    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    .line 519
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 524
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 525
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    .line 526
    const-string/jumbo v1, "data4"

    aput-object v1, v0, v4

    .line 527
    const-string/jumbo v1, "contact_presence"

    aput-object v1, v0, v5

    .line 528
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v6

    .line 529
    const-string/jumbo v1, "display_name"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 530
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    .line 531
    const-string/jumbo v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 532
    const-string/jumbo v1, "send_to_voicemail"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 524
    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1209
    invoke-static {v7}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    .line 440
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    .line 546
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 545
    iput-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    .line 548
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mIsMultiple:Z

    .line 559
    iput-object p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    .line 560
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/mms/data/Contact$ContactsCache;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    .line 755
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get5(Lcom/android/mms/data/Contact;)I

    move-result v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get5(Lcom/android/mms/data/Contact;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 756
    return v5

    .line 759
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get4(Lcom/android/mms/data/Contact;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get4(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 760
    return v5

    .line 763
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get15(Lcom/android/mms/data/Contact;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get15(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 764
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "person id changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    return v5

    .line 770
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get16(Lcom/android/mms/data/Contact;)I

    move-result v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get16(Lcom/android/mms/data/Contact;)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 771
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 772
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "presence changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    :cond_4
    return v5

    .line 777
    :cond_5
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get19(Lcom/android/mms/data/Contact;)Z

    move-result v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get19(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eq v0, v1, :cond_6

    .line 778
    return v5

    .line 781
    :cond_6
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get10(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get10(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_7

    .line 782
    return v5

    .line 785
    :cond_7
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 786
    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 788
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 789
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "name changed: %s -> %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :cond_8
    return v5

    .line 794
    :cond_9
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get8(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get8(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->-wrap1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 797
    const-string/jumbo v2, "Mms"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 798
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "label changed: %s -> %s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_a
    return v5

    .line 803
    :cond_b
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get3(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    invoke-static {p2}, Lcom/android/mms/data/Contact;->-get3(Lcom/android/mms/data/Contact;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    .line 804
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 805
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "avatar changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_c
    return v5

    .line 810
    :cond_d
    return v6
.end method

.method private fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1016
    monitor-enter p1

    .line 1017
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set3(Lcom/android/mms/data/Contact;I)I

    .line 1018
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->-set2(Lcom/android/mms/data/Contact;J)J

    .line 1019
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set5(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1020
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1021
    const/4 v2, 0x4

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->-set11(Lcom/android/mms/data/Contact;J)J

    .line 1023
    const/4 v2, 0x5

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1022
    invoke-direct {p0, v2}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set12(Lcom/android/mms/data/Contact;I)I

    .line 1024
    const/4 v2, 0x6

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set13(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1025
    const/4 v2, 0x7

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/mms/data/Contact;->-set9(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    const/16 v2, 0xa

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set15(Lcom/android/mms/data/Contact;Z)Z

    .line 1027
    const/16 v0, 0x9

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set6(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1029
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fillPhoneTypeContact: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1031
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1031
    const-string/jumbo v1, ", presence="

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1031
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get16(Lcom/android/mms/data/Contact;)I

    move-result v1

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1032
    const-string/jumbo v1, " SendToVoicemail: "

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1032
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get19(Lcom/android/mms/data/Contact;)Z

    move-result v1

    .line 1030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p1

    .line 1035
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1037
    monitor-enter p1

    .line 1038
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set1(Lcom/android/mms/data/Contact;[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 1040
    return-void

    :cond_1
    move v0, v1

    .line 1026
    goto :goto_0

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1037
    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 1043
    monitor-enter p1

    .line 1044
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1045
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    const v1, 0x7f07012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1048
    :cond_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "fillSelfContact: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1050
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 1049
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p1

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1055
    monitor-enter p1

    .line 1056
    :try_start_1
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set1(Lcom/android/mms/data/Contact;[B)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p1

    .line 1058
    return-void

    .line 1043
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 1055
    :catchall_1
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 628
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "get(%s, %s, %s)"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/Contact;->logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 633
    const-string/jumbo p1, ""

    .line 645
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact$ContactsCache;->internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 648
    monitor-enter v1

    .line 651
    :goto_1
    if-eqz p3, :cond_3

    :try_start_0
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get18(Lcom/android/mms/data/Contact;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    .line 653
    :try_start_1
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 654
    :catch_0
    move-exception v2

    goto :goto_1

    .line 637
    :cond_1
    const-string/jumbo v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-direct {p0, v6}, Lcom/android/mms/data/Contact$ContactsCache;->setMultiple(Z)V

    goto :goto_0

    .line 640
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/mms/data/Contact$ContactsCache;->setMultiple(Z)V

    goto :goto_0

    .line 661
    :cond_3
    :try_start_2
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get7(Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get18(Lcom/android/mms/data/Contact;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 662
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/mms/data/Contact;->-set4(Lcom/android/mms/data/Contact;Z)Z

    .line 664
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "async update for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " canBlock: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 666
    const-string/jumbo v2, " isStale: "

    .line 665
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 666
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get7(Lcom/android/mms/data/Contact;)Z

    move-result v2

    .line 665
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 670
    :cond_4
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache$1;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/data/Contact$ContactsCache$1;-><init>(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V

    .line 681
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->-set14(Lcom/android/mms/data/Contact;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v1

    .line 686
    if-eqz v0, :cond_6

    .line 687
    if-eqz p3, :cond_7

    .line 688
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 693
    :cond_6
    :goto_2
    return-object v1

    .line 648
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 690
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->pushTask(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;
    .locals 2

    .prologue
    .line 879
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get6(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    invoke-direct {p0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForSelf()Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0

    .line 881
    :cond_0
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 882
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0

    .line 883
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 885
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 886
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    return-object v0

    .line 890
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0

    .line 893
    :cond_3
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 894
    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method private getContactInfoForEmailAddress(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 10

    .prologue
    const/4 v0, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1125
    new-instance v9, Lcom/android/mms/data/Contact;

    invoke-direct {v9, p1, v6}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact;)V

    .line 1126
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set3(Lcom/android/mms/data/Contact;I)I

    .line 1127
    const-string/jumbo v0, "mailto"

    invoke-static {v0, p1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set10(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1129
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1130
    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 1131
    sget-object v3, Lcom/android/mms/data/Contact$ContactsCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    .line 1132
    const-string/jumbo v4, "UPPER(data1)=UPPER(?) AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    .line 1133
    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v8

    .line 1129
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1136
    if-eqz v1, :cond_4

    .line 1138
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1140
    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1141
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v9, v2, v3}, Lcom/android/mms/data/Contact;->-set2(Lcom/android/mms/data/Contact;J)J

    .line 1143
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1142
    invoke-direct {p0, v0}, Lcom/android/mms/data/Contact$ContactsCache;->getPresenceIconResourceId(I)I

    move-result v0

    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set12(Lcom/android/mms/data/Contact;I)I

    .line 1144
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v9, v2, v3}, Lcom/android/mms/data/Contact;->-set11(Lcom/android/mms/data/Contact;J)J

    .line 1146
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v7, :cond_5

    move v0, v7

    .line 1145
    :goto_0
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set15(Lcom/android/mms/data/Contact;Z)Z

    .line 1148
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1150
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1152
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1153
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 1154
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getContactInfoForEmailAddress: name="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1156
    const-string/jumbo v2, ", email="

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1156
    const-string/jumbo v2, ", presence="

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1157
    invoke-static {v9}, Lcom/android/mms/data/Contact;->-get16(Lcom/android/mms/data/Contact;)I

    move-result v2

    .line 1155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move v0, v7

    :goto_1
    :try_start_2
    monitor-exit v9

    .line 1163
    if-eqz v0, :cond_0

    .line 1164
    invoke-direct {p0, v9}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarData(Lcom/android/mms/data/Contact;)[B

    move-result-object v0

    .line 1165
    monitor-enter v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1166
    :try_start_3
    invoke-static {v9, v0}, Lcom/android/mms/data/Contact;->-set1(Lcom/android/mms/data/Contact;[B)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1173
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1176
    :cond_4
    return-object v9

    :cond_5
    move v0, v8

    .line 1146
    goto :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v9

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1172
    :catchall_1
    move-exception v0

    .line 1173
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1172
    throw v0

    .line 1165
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v9

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    move v0, v8

    goto :goto_1
.end method

.method private getContactInfoForPhoneNumber(Ljava/lang/String;)Lcom/android/mms/data/Contact;
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 938
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 941
    :cond_0
    new-instance v6, Lcom/android/mms/data/Contact;

    invoke-direct {v6, p1, v5}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact;)V

    .line 942
    invoke-static {v6, v8}, Lcom/android/mms/data/Contact;->-set3(Lcom/android/mms/data/Contact;I)I

    .line 943
    const-string/jumbo v0, "tel"

    invoke-static {v0, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/mms/data/Contact;->-set10(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;

    .line 945
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queryContactInfoByNumber: number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 949
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 952
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 954
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-static {p1, v3}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 957
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 958
    const-string/jumbo v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE  (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 959
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object v1, v4, v10

    aput-object v2, v4, v8

    aput-object v0, v4, v11

    aput-object v2, v4, v9

    .line 966
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 967
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 966
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 968
    if-nez v1, :cond_3

    .line 969
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 970
    const-string/jumbo v2, " contact uri used "

    .line 969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 970
    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 969
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-object v6

    .line 961
    :cond_2
    const-string/jumbo v3, " Data._ID IN  (SELECT DISTINCT lookup.data_id  FROM  (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE min_match = ?) AS lookup  WHERE lookup.normalized_number = ? OR (lookup.len <= ? AND  substr(?, ? - lookup.len + 1) = lookup.normalized_number))"

    .line 962
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 963
    aput-object v1, v4, v10

    aput-object v7, v4, v8

    aput-object v2, v4, v11

    aput-object v0, v4, v9

    const/4 v0, 0x4

    aput-object v2, v4, v0

    goto :goto_0

    .line 975
    :cond_3
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 976
    invoke-direct {p0, v6, v1}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 979
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 982
    :cond_5
    return-object v6

    .line 978
    :catchall_0
    move-exception v0

    .line 979
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 978
    throw v0
.end method

.method private getContactInfoForSelf()Lcom/android/mms/data/Contact;
    .locals 7

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 989
    new-instance v6, Lcom/android/mms/data/Contact;

    const/4 v0, 0x1

    invoke-direct {v6, v0, v3}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact;)V

    .line 990
    invoke-static {v6, v1}, Lcom/android/mms/data/Contact;->-set3(Lcom/android/mms/data/Contact;I)I

    .line 992
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    const-string/jumbo v0, "getContactInfoForSelf"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 996
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->SELF_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 995
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 997
    if-nez v1, :cond_1

    .line 998
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getContactInfoForSelf() returned NULL cursor! contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 999
    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    return-object v6

    .line 1004
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1005
    invoke-direct {p0, v6, v1}, Lcom/android/mms/data/Contact$ContactsCache;->fillSelfContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1012
    return-object v6

    .line 1007
    :cond_2
    :try_start_1
    invoke-direct {p0, v6}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarUri(Lcom/android/mms/data/Contact;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1009
    :catchall_0
    move-exception v0

    .line 1010
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1009
    throw v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    return v0

    .line 1118
    :cond_0
    return v0
.end method

.method private internalGet(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1212
    monitor-enter p0

    .line 1215
    if-nez p2, :cond_0

    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1216
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    .line 1215
    if-nez v1, :cond_0

    .line 1217
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    move v3, v0

    .line 1218
    :goto_0
    if-eqz v3, :cond_1

    move-object v1, p1

    .line 1221
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1222
    if-eqz v0, :cond_4

    .line 1223
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1224
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_6

    .line 1225
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1226
    if-eqz v3, :cond_2

    .line 1227
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit p0

    .line 1228
    return-object v1

    :cond_0
    move v3, v0

    .line 1215
    goto :goto_0

    .line 1219
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 1231
    :cond_2
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    monitor-exit p0

    .line 1232
    return-object v1

    .line 1224
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 1237
    :cond_4
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1239
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 1241
    :goto_3
    if-eqz p2, :cond_5

    .line 1242
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/data/Contact;-><init>(ZLcom/android/mms/data/Contact;)V

    .line 1244
    :goto_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    .line 1245
    return-object v0

    .line 1243
    :cond_5
    :try_start_3
    new-instance v0, Lcom/android/mms/data/Contact;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 1212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    move-object v1, v0

    goto :goto_3
.end method

.method private key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1183
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1184
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->mark()Ljava/nio/Buffer;

    .line 1186
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1188
    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 1189
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1190
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1191
    invoke-virtual {p2, v2}, Ljava/nio/CharBuffer;->put(C)Ljava/nio/CharBuffer;

    .line 1192
    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1197
    :cond_1
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->reset()Ljava/nio/Buffer;

    .line 1198
    if-lez v0, :cond_2

    .line 1199
    invoke-virtual {p2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1202
    :cond_2
    return-object p1
.end method

.method private loadAvatarData(Lcom/android/mms/data/Contact;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->loadAvatarUri(Lcom/android/mms/data/Contact;)Landroid/net/Uri;

    move-result-object v1

    .line 1091
    iget-object v2, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1090
    invoke-static {v2, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 1094
    if-eqz v1, :cond_0

    .line 1095
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v0, v2, [B

    .line 1096
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    :cond_0
    if-eqz v1, :cond_1

    .line 1103
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1109
    :cond_1
    :goto_0
    return-object v0

    .line 1105
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1098
    :catch_1
    move-exception v2

    .line 1102
    if-eqz v1, :cond_1

    .line 1103
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1105
    :catch_2
    move-exception v1

    goto :goto_0

    .line 1100
    :catchall_0
    move-exception v0

    .line 1102
    if-eqz v1, :cond_2

    .line 1103
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1100
    :cond_2
    :goto_1
    throw v0

    .line 1105
    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method private loadAvatarUri(Lcom/android/mms/data/Contact;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1061
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get6(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get15(Lcom/android/mms/data/Contact;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1062
    :cond_0
    return-object v4

    .line 1061
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get2(Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1065
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadAvatarUri: name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 1071
    :cond_2
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get6(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1075
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/mms/data/Contact;->setThumbnailUri(Landroid/net/Uri;)V

    .line 1077
    return-object v0

    .line 1073
    :cond_3
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get15(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private remove(Lcom/android/mms/data/Contact;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1265
    monitor-enter p0

    .line 1266
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 1267
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1268
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    .line 1267
    if-nez v0, :cond_2

    .line 1269
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v0

    move v5, v0

    .line 1270
    :goto_0
    if-eqz v5, :cond_3

    move-object v3, v4

    .line 1272
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1273
    if-eqz v0, :cond_1

    .line 1274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v1

    .line 1275
    :goto_2
    if-ge v2, v6, :cond_0

    .line 1276
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1277
    if-eqz v5, :cond_4

    .line 1278
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1279
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1289
    :cond_0
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1294
    return-void

    .line 1267
    :cond_2
    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    .line 1271
    :cond_3
    :try_start_1
    sget-object v0, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, v4, v0}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    .line 1283
    :cond_4
    invoke-static {v1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1284
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1275
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2
.end method

.method private setMultiple(Z)V
    .locals 0

    .prologue
    .line 551
    iput-boolean p1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mIsMultiple:Z

    .line 552
    return-void
.end method

.method private updateContact(Lcom/android/mms/data/Contact;)V
    .locals 5

    .prologue
    .line 814
    if-nez p1, :cond_0

    .line 815
    return-void

    .line 818
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfo(Lcom/android/mms/data/Contact;)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 819
    monitor-enter p1

    .line 820
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->contactChanged(Lcom/android/mms/data/Contact;Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 821
    const-string/jumbo v1, "Mms"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateContact: contact changed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 826
    :cond_1
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/android/mms/data/Contact;->-wrap0(Lcom/android/mms/data/Contact;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 827
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set8(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 829
    :cond_2
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get8(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set5(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get15(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->-set11(Lcom/android/mms/data/Contact;J)J

    .line 831
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get16(Lcom/android/mms/data/Contact;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set12(Lcom/android/mms/data/Contact;I)I

    .line 832
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get17(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set13(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 833
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get3(Lcom/android/mms/data/Contact;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set1(Lcom/android/mms/data/Contact;[B)[B

    .line 834
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get2(Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set0(Lcom/android/mms/data/Contact;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 835
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get4(Lcom/android/mms/data/Contact;)J

    move-result-wide v2

    invoke-static {p1, v2, v3}, Lcom/android/mms/data/Contact;->-set2(Lcom/android/mms/data/Contact;J)J

    .line 836
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get5(Lcom/android/mms/data/Contact;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set3(Lcom/android/mms/data/Contact;I)I

    .line 837
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get13(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set9(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 838
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 839
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get19(Lcom/android/mms/data/Contact;)Z

    move-result v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set15(Lcom/android/mms/data/Contact;Z)Z

    .line 840
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get14(Lcom/android/mms/data/Contact;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set10(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;

    .line 841
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get10(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/mms/data/Contact;->-set6(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    invoke-static {v0}, Lcom/android/mms/data/Contact;->-get20(Lcom/android/mms/data/Contact;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set16(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;

    .line 844
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-wrap3(Lcom/android/mms/data/Contact;)V

    .line 852
    invoke-static {p1}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 857
    invoke-static {}, Lcom/android/mms/data/Contact;->-get9()Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :try_start_1
    invoke-static {}, Lcom/android/mms/data/Contact;->-get9()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1

    .line 860
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact$UpdateListener;

    .line 861
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 862
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_3
    invoke-interface {v0, p1}, Lcom/android/mms/data/Contact$UpdateListener;->onUpdate(Lcom/android/mms/data/Contact;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 857
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0

    .line 868
    :cond_4
    monitor-enter p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 869
    const/4 v0, 0x0

    :try_start_4
    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->-set14(Lcom/android/mms/data/Contact;Z)Z

    .line 870
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p1

    .line 873
    return-void

    .line 868
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method


# virtual methods
.method dump()V
    .locals 7

    .prologue
    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "**** Contact cache dump ****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 566
    iget-object v1, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 567
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 568
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ==> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    monitor-exit p0

    .line 572
    return-void
.end method

.method public get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 1

    .prologue
    .line 624
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/data/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 702
    array-length v0, p1

    if-nez v0, :cond_0

    .line 703
    return-object v4

    .line 705
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    array-length v6, p1

    move v3, v1

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v0, p1, v3

    .line 708
    check-cast v0, Landroid/net/Uri;

    .line 709
    const-string/jumbo v7, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 710
    if-eqz v2, :cond_1

    .line 712
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    .line 707
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    .line 714
    :cond_1
    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    goto :goto_1

    .line 719
    :cond_2
    if-eqz v2, :cond_3

    return-object v4

    .line 721
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 723
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 724
    sget-object v1, Lcom/android/mms/data/Contact$ContactsCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact$ContactsCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    .line 723
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 727
    :goto_2
    if-nez v1, :cond_4

    .line 728
    return-object v4

    .line 731
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 734
    :goto_3
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 735
    new-instance v2, Lcom/android/mms/data/Contact;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 736
    const/4 v4, 0x3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 735
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/Contact;)V

    .line 737
    invoke-direct {p0, v2, v1}, Lcom/android/mms/data/Contact$ContactsCache;->fillPhoneTypeContact(Lcom/android/mms/data/Contact;Landroid/database/Cursor;)V

    .line 738
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 739
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v4, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/android/mms/data/Contact;->-get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/mms/data/Contact$ContactsCache;->sStaticKeyBuffer:Ljava/nio/CharBuffer;

    invoke-direct {p0, v5, v6}, Lcom/android/mms/data/Contact$ContactsCache;->key(Ljava/lang/String;Ljava/nio/CharBuffer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 744
    :catchall_0
    move-exception v0

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 744
    throw v0

    .line 745
    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 747
    return-object v0

    :cond_6
    move-object v1, v4

    goto :goto_2

    :cond_7
    move v0, v2

    goto/16 :goto_1
.end method

.method public getMe(Z)Lcom/android/mms/data/Contact;
    .locals 2

    .prologue
    .line 620
    const-string/jumbo v0, "Self_Item_Key"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;ZZ)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getMultiple()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mIsMultiple:Z

    return v0
.end method

.method invalidate()V
    .locals 4

    .prologue
    .line 1252
    monitor-enter p0

    .line 1253
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mContactsHash:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1254
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1255
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    const/4 v3, 0x1

    :try_start_1
    invoke-static {v0, v3}, Lcom/android/mms/data/Contact;->-set4(Lcom/android/mms/data/Contact;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1252
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1255
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    monitor-exit p0

    .line 1261
    return-void
.end method

.method isAlphaNumber(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 917
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 919
    return v0

    .line 921
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    return v0

    .line 924
    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 925
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 926
    return v0

    .line 930
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/mms/data/Contact$ContactsCache;->mTaskQueue:Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method
