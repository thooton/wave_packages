.class public Lcom/android/mms/data/Contact;
.super Ljava/lang/Object;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/Contact$1;,
        Lcom/android/mms/data/Contact$2;,
        Lcom/android/mms/data/Contact$3;,
        Lcom/android/mms/data/Contact$ContactsCache;,
        Lcom/android/mms/data/Contact$UpdateListener;
    }
.end annotation


# static fields
.field private static contactUpdateHandler:Landroid/os/Handler;

.field private static invalidateCache:Ljava/lang/Runnable;

.field private static final mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/data/Contact$UpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

.field private static final sContactsObserver:Landroid/database/ContentObserver;


# instance fields
.field private mAvatar:Landroid/graphics/drawable/BitmapDrawable;

.field private mAvatarData:[B

.field private mColor:I

.field private mContactMethodId:J

.field private mContactMethodType:I

.field private mIsMe:Z

.field private mIsStale:Z

.field private mLabel:Ljava/lang/String;

.field private mLookupKey:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNameAndNumber:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mNumberE164:Ljava/lang/String;

.field private mNumberIsModified:Z

.field private mPeopleReferenceUri:Landroid/net/Uri;

.field private mPersonId:J

.field private mPresenceResId:I

.field private mPresenceText:Ljava/lang/String;

.field private mQueryPending:Z

.field private mRecipientId:J

.field private mSendToVoicemail:Z

.field private mThumbnailUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->contactUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->invalidateCache:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/mms/data/Contact;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPeopleReferenceUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/mms/data/Contact;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide v0
.end method

.method static synthetic -get16(Lcom/android/mms/data/Contact;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/mms/data/Contact;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/data/Contact;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/data/Contact;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mContactMethodId:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/mms/data/Contact;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/data/Contact;->mContactMethodType:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsMe:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/mms/data/Contact;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/mms/data/Contact;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/data/Contact;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/data/Contact;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPeopleReferenceUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/mms/data/Contact;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    return-wide p1
.end method

.method static synthetic -set12(Lcom/android/mms/data/Contact;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mPresenceText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mQueryPending:Z

    return p1
.end method

.method static synthetic -set15(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return p1
.end method

.method static synthetic -set16(Lcom/android/mms/data/Contact;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/data/Contact;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mContactMethodId:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/mms/data/Contact;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/data/Contact;->mContactMethodType:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/data/Contact;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/mms/data/Contact;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/data/Contact;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->isSpecialPhoneNumber(Lcom/android/mms/data/Contact;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/data/Contact;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/android/mms/data/Contact$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/mms/data/Contact$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    .line 74
    new-instance v0, Lcom/android/mms/data/Contact$2;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$2;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->invalidateCache:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/android/mms/data/Contact$3;

    invoke-direct {v0}, Lcom/android/mms/data/Contact$3;-><init>()V

    sput-object v0, Lcom/android/mms/data/Contact;->contactUpdateHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string/jumbo v0, "Self_Item_Key"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/Contact;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mIsMe:Z

    .line 141
    return-void
.end method

.method synthetic constructor <init>(ZLcom/android/mms/data/Contact;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/data/Contact;-><init>(Z)V

    return-void
.end method

.method public static addListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    .prologue
    .line 339
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 340
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 342
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static clearListener()V
    .locals 2

    .prologue
    .line 351
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 352
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 353
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 355
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static dump()V
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->dump()V

    .line 438
    return-void
.end method

.method private static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 226
    if-eqz p0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 244
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public static get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0, p0, p1}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method public static getByPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 1
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
    .line 203
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;->getContactInfoForPhoneUris([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMe(Z)Lcom/android/mms/data/Contact;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    return-object v0
.end method

.method private getRoundDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 414
    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 415
    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 417
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 421
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    if-eqz v0, :cond_0

    .line 422
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v0}, Lcom/android/mms/data/Contact$ContactsCache;->-get0(Lcom/android/mms/data/Contact$ContactsCache;)Lcom/android/mms/data/Contact$ContactsCache$TaskStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/mms/data/Contact$ContactsCache$TaskStack;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 424
    :cond_0
    new-instance v0, Lcom/android/mms/data/Contact$ContactsCache;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/data/Contact$ContactsCache;-><init>(Landroid/content/Context;Lcom/android/mms/data/Contact$ContactsCache;)V

    sput-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    .line 426
    invoke-static {p0}, Lcom/android/mms/data/RecipientIdCache;->init(Landroid/content/Context;)V

    .line 433
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/data/Contact;->sContactsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 432
    invoke-static {p0, v1, v3, v2}, Lcom/android/mms/wave/WaveInit;->deferContentObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 434
    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mContactMethodId:J

    .line 145
    iput-object p2, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 147
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 148
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    .line 150
    iput v2, p0, Lcom/android/mms/data/Contact;->mPresenceResId:I

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 152
    iput-boolean v2, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    .line 153
    iput v2, p0, Lcom/android/mms/data/Contact;->mColor:I

    .line 154
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static invalidateCache()V
    .locals 2

    .prologue
    .line 207
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string/jumbo v0, "invalidateCache"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->log(Ljava/lang/String;)V

    .line 218
    :cond_0
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->invalidate()V

    .line 219
    return-void
.end method

.method private static isSpecialPhoneNumber(Lcom/android/mms/data/Contact;)Z
    .locals 2

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1303
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Contact$ContactsCache;->isAlphaNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 1306
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1298
    const-string/jumbo v0, "Mms"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-void
.end method

.method public static varargs logWithTrace(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x7

    .line 168
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v1, "] "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string/jumbo v1, " <- "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    array-length v1, v2

    if-le v1, v0, :cond_1

    .line 179
    :goto_0
    const/4 v1, 0x3

    :goto_1
    if-ge v1, v0, :cond_2

    .line 180
    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v4, v1, 0x1

    if-eq v4, v0, :cond_0

    .line 183
    const-string/jumbo v4, " <- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_1
    array-length v0, v2

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method private notSynchronizedUpdateNameAndNumber()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public static removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V
    .locals 2

    .prologue
    .line 345
    sget-object v1, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    monitor-enter v1

    .line 346
    :try_start_0
    sget-object v0, Lcom/android/mms/data/Contact;->mListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 348
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized existsInDatabase()Z
    .locals 4

    .prologue
    monitor-enter p0

    .line 335
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    if-eqz v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mAvatarData:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 403
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/Contact;->getRoundDrawable(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p2, v0

    :cond_1
    monitor-exit p0

    return-object p2

    .line 406
    :cond_2
    :try_start_1
    # PERF: mAvatar is already rounded and cached; return directly instead of re-allocating
    # an ARGB_8888 Bitmap + Canvas + PorterDuff SRC_IN on every inbox bind and scroll.
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContactColor()I
    .locals 1

    .prologue
    .line 1323
    iget v0, p0, Lcom/android/mms/data/Contact;->mColor:I

    return v0
.end method

.method public getContactMethodId()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mContactMethodId:J

    return-wide v0
.end method

.method public getContactMethodType()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/android/mms/data/Contact;->mContactMethodType:I

    return v0
.end method

.method public declared-synchronized getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLookup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLookupKey:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 292
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameAndNumber()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNameForAvatar()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 1330
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 1333
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    .line 262
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeopleReferenceUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mPeopleReferenceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public declared-synchronized getPersonId()J
    .locals 2

    .prologue
    monitor-enter p0

    .line 1311
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mPersonId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipientId()J
    .locals 2

    .prologue
    monitor-enter p0

    .line 305
    :try_start_0
    iget-wide v0, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSendToVoicemail()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mSendToVoicemail:Z

    return v0
.end method

.method public getThumbnailUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Landroid/net/Uri;

    return-object v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    monitor-enter p0

    .line 317
    :try_start_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCreatedByMultipleCellPhone()Z
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact$ContactsCache;->getMultiple()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isEmail()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    # PERF(recipient setup): the framework email pattern requires an @. Phone
    # numbers need neither address extraction nor regex matcher allocation.
    if-eqz v0, :wave_not_email
    const/16 v1, 0x40
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
    move-result v1
    if-ltz v1, :wave_not_email
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0
    goto :wave_email_done

    :wave_not_email
    const/4 v0, 0x0

    :wave_email_done
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsMe:Z

    return v0
.end method

.method public isNumberModified()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    return v0
.end method

.method public declared-synchronized reload()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 257
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mIsStale:Z

    .line 258
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    iget-object v1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/Contact$ContactsCache;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 259
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeFromCache()V
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/android/mms/data/Contact;->sContactCache:Lcom/android/mms/data/Contact$ContactsCache;

    invoke-static {v0, p0}, Lcom/android/mms/data/Contact$ContactsCache;->-wrap0(Lcom/android/mms/data/Contact$ContactsCache;Lcom/android/mms/data/Contact;)V

    .line 200
    return-void
.end method

.method public setContactColor(I)V
    .locals 0

    .prologue
    .line 1319
    iput p1, p0, Lcom/android/mms/data/Contact;->mColor:I

    .line 1320
    return-void
.end method

.method public setIsNumberModified(Z)V
    .locals 0

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z

    .line 286
    return-void
.end method

.method public declared-synchronized setNumber(Ljava/lang/String;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 266
    :try_start_0
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumberE164:Ljava/lang/String;

    .line 268
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {p1, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    .line 272
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/data/Contact;->notSynchronizedUpdateNameAndNumber()V

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/Contact;->mNumberIsModified:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 274
    return-void

    .line 270
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipientId(J)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 309
    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/data/Contact;->mRecipientId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 310
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setThumbnailUri(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 1347
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1350
    :goto_0
    const-string/jumbo v1, "photo"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1351
    iput-object v0, p0, Lcom/android/mms/data/Contact;->mThumbnailUri:Landroid/net/Uri;

    .line 1352
    return-void

    .line 1349
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 158
    const-string/jumbo v1, "{ number=%s, name=%s, nameAndNumber=%s, label=%s, person_id=%d, hash=%d method_id=%d }"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNumber:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 160
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mName:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 161
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mNameAndNumber:Ljava/lang/String;

    :goto_2
    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 162
    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/Contact;->mLabel:Ljava/lang/String;

    :goto_3
    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 163
    iget-wide v4, p0, Lcom/android/mms/data/Contact;->mPersonId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x4

    aput-object v0, v2, v3

    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x5

    aput-object v0, v2, v3

    .line 164
    iget-wide v4, p0, Lcom/android/mms/data/Contact;->mContactMethodId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v2, v3

    .line 158
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 160
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1

    .line 161
    :cond_2
    const-string/jumbo v0, "null"

    goto :goto_2

    .line 162
    :cond_3
    const-string/jumbo v0, "null"

    goto :goto_3
.end method
