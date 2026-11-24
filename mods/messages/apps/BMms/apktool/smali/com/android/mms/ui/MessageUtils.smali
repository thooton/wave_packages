.class public Lcom/android/mms/ui/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageUtils$MessageInfo;,
        Lcom/android/mms/ui/MessageUtils$ReportStatus;,
        Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;,
        Lcom/android/mms/ui/MessageUtils$ShowDialog;
    }
.end annotation


# static fields
.field private static final BOOKMARKS_URI:Landroid/net/Uri;

.field public static final ICC1_URI:Landroid/net/Uri;

.field public static final ICC2_URI:Landroid/net/Uri;

.field public static final ICC_SMS_URI:Landroid/net/Uri;

.field public static final ICC_URI:Landroid/net/Uri;

.field public static final MESSAGES_COUNT_URI:Landroid/net/Uri;

.field public static final MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

.field public static MULTI_SIM_NAME:Ljava/lang/String;

.field private static final NUMERIC_CHARS_SUGAR:[C

.field private static final URI_PHONE_FEATURE:Landroid/net/Uri;

.field public static WAPPUSH:Ljava/lang/String;

.field private static final WEB_SCHEMA:[Ljava/lang/String;

.field private static isLayoutRtl:Z

.field private static mCanShowDialog:Z

.field private static memoryStatusDialog:Landroid/app/AlertDialog;

.field private static numericSugarMap:Ljava/util/HashMap;

.field private static sErrorDialogIsShown:Z

.field private static sLocalNumber:Ljava/lang/String;

.field private static sNoSubjectStrings:[Ljava/lang/String;

.field private static sNotificationNumberPattern:Ljava/util/regex/Pattern;

.field private static final sRecipientAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sSMSBasicPermissions:[Ljava/lang/String;

.field public static sSMSExtendPermissions:[Ljava/lang/String;

.field public static sSameRecipientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVideoDuration:[I


# direct methods
.method static synthetic -get0()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sNotificationNumberPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    sput-object p0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/mms/ui/MessageUtils;->sErrorDialogIsShown:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getMmsUsed(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;
    .locals 1

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSmsUsed(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->addToLabel(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->loadUrlDialog(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->loadUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->showUrlOptions(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v3, 0xb

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 171
    const-string/jumbo v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ICC_URI:Landroid/net/Uri;

    .line 172
    const-string/jumbo v0, "content://sms/icc1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ICC1_URI:Landroid/net/Uri;

    .line 173
    const-string/jumbo v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ICC2_URI:Landroid/net/Uri;

    .line 182
    const-string/jumbo v0, "perferred_name_sub"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MULTI_SIM_NAME:Ljava/lang/String;

    .line 194
    const-string/jumbo v0, "content://browser/bookmarks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->BOOKMARKS_URI:Landroid/net/Uri;

    .line 215
    const-string/jumbo v0, "content://sms/iccsms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->ICC_SMS_URI:Landroid/net/Uri;

    .line 219
    sput-boolean v1, Lcom/android/mms/ui/MessageUtils;->isLayoutRtl:Z

    .line 239
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 238
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    .line 243
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    .line 242
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sVideoDuration:[I

    .line 249
    new-array v0, v3, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    .line 264
    new-instance v0, Ljava/util/HashMap;

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    .line 266
    const-string/jumbo v0, "Browser Information"

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->WAPPUSH:Ljava/lang/String;

    .line 268
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v2, "http://"

    aput-object v2, v0, v1

    const-string/jumbo v2, "https://"

    aput-object v2, v0, v5

    const-string/jumbo v2, "rtsp://"

    aput-object v2, v0, v6

    .line 267
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->WEB_SCHEMA:[Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    .line 305
    const-string/jumbo v0, "content://com.qualcomm.qti.phonefeature.FEATURE_PROVIDER"

    .line 304
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->URI_PHONE_FEATURE:Landroid/net/Uri;

    .line 311
    const-string/jumbo v0, "content://mms-sms/messagescount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MESSAGES_COUNT_URI:Landroid/net/Uri;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sSameRecipientList:Ljava/util/ArrayList;

    move v0, v1

    .line 341
    :goto_0
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 342
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    sget-object v3, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v3, v3, v0

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->NUMERIC_CHARS_SUGAR:[C

    aget-char v4, v4, v0

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    const-string/jumbo v0, "^1065(\\d)*$|^1069(\\d)*$|^100(\\d)*$|^95[15](\\d)*$|^12306$"

    .line 348
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sNotificationNumberPattern:Ljava/util/regex/Pattern;

    .line 371
    new-array v0, v6, [Ljava/lang/String;

    .line 372
    const-string/jumbo v2, "delivery_status"

    aput-object v2, v0, v1

    .line 373
    const-string/jumbo v2, "read_status"

    aput-object v2, v0, v5

    .line 371
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    .line 393
    new-array v0, v7, [Ljava/lang/String;

    .line 394
    const-string/jumbo v2, "android.permission.READ_SMS"

    aput-object v2, v0, v1

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v5

    .line 395
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    aput-object v2, v0, v6

    .line 393
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSBasicPermissions:[Ljava/lang/String;

    .line 397
    new-array v0, v5, [Ljava/lang/String;

    .line 398
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    .line 397
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSExtendPermissions:[Ljava/lang/String;

    .line 153
    return-void

    .line 243
    nop

    :array_0
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x5a
        0x78
    .end array-data

    .line 249
    :array_1
    .array-data 2
        0x2ds
        0x2es
        0x2cs
        0x28s
        0x29s
        0x20s
        0x2fs
        0x5cs
        0x2as
        0x23s
        0x2bs
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    return-void
.end method

.method private static addToLabel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2888
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT"

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2889
    const-string/jumbo v1, "title"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2890
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2891
    const-string/jumbo v1, "extend"

    const-string/jumbo v2, "outside"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2893
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2899
    :goto_0
    return-void

    .line 2894
    :catch_0
    move-exception v0

    .line 2895
    const v1, 0x7f0702b8

    .line 2896
    const/4 v2, 0x0

    .line 2895
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2897
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static callBinder(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2071
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPhoneFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2072
    return-object v2

    .line 2074
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/MessageUtils;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 2458
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDownload(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    const/16 v0, 0x213

    .line 2460
    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2462
    const/4 v0, 0x1

    return v0

    .line 2464
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 2448
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2451
    const/16 v0, 0x315

    .line 2450
    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2452
    const/4 v0, 0x1

    return v0

    .line 2454
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static capturePicture(Landroid/app/Activity;I)V
    .locals 3

    .prologue
    .line 1210
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v1, "output"

    sget-object v2, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1212
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1213
    return-void
.end method

.method private static cellularNetworkAvailable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 3257
    const/4 v1, 0x0

    .line 3259
    const-string/jumbo v0, "phone"

    .line 3258
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3260
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 3262
    if-eqz v0, :cond_0

    .line 3263
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    .line 3264
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3265
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    .line 3269
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static checkIdp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 3042
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v1

    .line 3043
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->checkIdpEnable(Landroid/content/Context;I)Z

    move-result v2

    .line 3044
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->isRoaming(I)Z

    .line 3045
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    .line 3046
    const-string/jumbo v0, "+62"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3047
    const-string/jumbo v3, "+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3049
    if-eq v0, v5, :cond_1

    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->isRoaming(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 3050
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3051
    const-string/jumbo v4, "0"

    .line 3050
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3051
    const-string/jumbo v4, "+62"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3050
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3059
    :goto_0
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkIdp : number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " sub = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3060
    const-string/jumbo v5, " isCDMA = "

    .line 3059
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3060
    const-string/jumbo v4, " isEnable = "

    .line 3059
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3061
    const-string/jumbo v2, " checked number = "

    .line 3059
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    return-object v0

    :cond_0
    move-object v0, p1

    .line 3045
    goto :goto_0

    .line 3052
    :cond_1
    if-eq v3, v5, :cond_2

    .line 3053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3054
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->getIdpPrefixNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 3053
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3055
    const-string/jumbo v4, "+"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 3053
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method private static checkIdpEnable(Landroid/content/Context;I)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3026
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3028
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "international_prefix_enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3027
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 3029
    return v3

    .line 3031
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkIsPhoneMemoryFull(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 2639
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isPhoneMemoryFull()Z

    move-result v0

    .line 2640
    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateMessageFullIndicator(Landroid/content/Context;ZZ)V

    .line 2641
    return v0
.end method

.method public static checkIsPhoneMessageFull(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2632
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isPhoneMemoryFull()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isPhoneSmsCountFull(Landroid/content/Context;)Z

    move-result v0

    .line 2633
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateMessageFullIndicator(Landroid/content/Context;ZZ)V

    .line 2634
    return v0

    :cond_0
    move v0, v1

    .line 2632
    goto :goto_0
.end method

.method public static checkPermissionsIfNeeded(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    # PERF: revoking runtime permissions SIGKILLs the process on Android, so once all basic +
    # extended permissions are verified and initPermissionRelated() has run, skip all 14-16
    # PackageManagerService Binder IPCs on subsequent Activity opens.
    sget-boolean v0, Lcom/android/mms/wave/WaveInit;->sAllPermissionsGranted:Z

    if-eqz v0, :wave_check_perms

    const/4 v0, 0x0

    return v0

    :wave_check_perms
    .line 3323
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3324
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->initPermissionRelated()V

    .line 3325
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSExtendPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/wave/WaveInit;->sAllPermissionsGranted:Z

    .line 3326
    const/4 v0, 0x0

    return v0

    .line 3329
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSExtendPermissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->launchPermissionCheckActivity(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 3330
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3331
    const/4 v0, 0x1

    return v0
.end method

.method public static cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    return-object p1

    .line 445
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 447
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 446
    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    .line 450
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    array-length v1, v0

    .line 451
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    .line 452
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 453
    return-object v3

    .line 451
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_3
    return-object p1
.end method

.method private static confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    .prologue
    .line 1652
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1653
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1654
    const v1, 0x7f07024a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1655
    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1656
    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1657
    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1658
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1660
    return-void
.end method

.method public static convertIdp(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3012
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3013
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->getIdpPrefixNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3014
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3015
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3018
    :cond_0
    return-object p1
.end method

.method public static convertToVcardType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 899
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 900
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 901
    if-lez v0, :cond_0

    .line 902
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 903
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    const-string/jumbo v0, "text/x-vCard"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 908
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2796
    const-string/jumbo v0, "clipboard"

    .line 2795
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2797
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2798
    return-void
.end method

.method public static dialNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 2036
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2038
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2039
    return-void
.end method

.method private static extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1677
    if-eqz p1, :cond_0

    .line 1678
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1680
    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1664
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1665
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1667
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1668
    const-string/jumbo v0, ""

    return-object v0

    .line 1669
    :cond_0
    if-nez v1, :cond_1

    .line 1670
    return-object v0

    .line 1672
    :cond_1
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 14

    .prologue
    .line 1716
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1717
    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1718
    const/4 v8, 0x1

    .line 1719
    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_0
    if-ge v10, v12, :cond_5

    aget-object v13, v11, v10

    .line 1720
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 1722
    if-nez v7, :cond_2

    .line 1723
    if-nez p2, :cond_0

    .line 1729
    const/4 v0, 0x0

    return-object v0

    .line 1732
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://mms-sms/canonical-address/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1733
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    .line 1734
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1733
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1735
    if-eqz v1, :cond_2

    .line 1737
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1738
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1739
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1742
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1746
    :cond_2
    if-nez v7, :cond_3

    .line 1719
    :goto_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    .line 1741
    :catchall_0
    move-exception v0

    .line 1742
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1741
    throw v0

    .line 1749
    :cond_3
    if-eqz v8, :cond_4

    .line 1750
    const/4 v0, 0x0

    .line 1754
    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v0

    goto :goto_1

    .line 1752
    :cond_4
    const-string/jumbo v0, ";"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v8

    goto :goto_2

    .line 1757
    :cond_5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_6
    move-object v0, v9

    goto :goto_3
.end method

.method public static extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/text/style/URLSpan;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1685
    array-length v1, p0

    .line 1686
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1689
    aget-object v3, p0, v0

    invoke-virtual {v3}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1691
    :cond_0
    return-object v2
.end method

.method public static formatMemorySize(J)Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x400

    const/4 v1, 0x0

    .line 2728
    const/4 v0, 0x0

    .line 2729
    new-instance v3, Ljava/text/DecimalFormat;

    invoke-direct {v3}, Ljava/text/DecimalFormat;-><init>()V

    .line 2732
    cmp-long v2, p0, v6

    if-ltz v2, :cond_1

    .line 2733
    const-string/jumbo v2, " KB"

    .line 2734
    div-long/2addr p0, v6

    .line 2735
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    .line 2736
    cmp-long v4, p0, v6

    if-ltz v4, :cond_0

    .line 2737
    const-string/jumbo v2, " MB"

    .line 2738
    div-long/2addr p0, v6

    .line 2739
    const/4 v0, 0x1

    .line 2746
    :cond_0
    :goto_0
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/text/DecimalFormat;->setGroupingSize(I)V

    .line 2747
    invoke-virtual {v3, p0, p1}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    .line 2749
    if-eqz v2, :cond_3

    .line 2750
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 2751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " KB)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2756
    :goto_1
    return-object v0

    .line 2743
    :cond_1
    const-string/jumbo v2, " B"

    goto :goto_0

    .line 2753
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_1
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 1

    .prologue
    # PERF: cached day/year boundaries + minute-bucket LRU cache (eliminates 2x Time + ICU lock).
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/ui/WaveTimeFormat;->format(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivatedIccCardCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2284
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2285
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    move v1, v0

    .line 2288
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2292
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2293
    add-int/lit8 v0, v0, 0x1

    .line 2288
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2296
    :cond_1
    # FEAT(imessage): allow sending over Wi-Fi without a SIM when iMessage is connected
    invoke-static {v0}, Lcom/android/mms/wave/WaveIMessageHost;->activatedIccCardCount(I)I

    move-result v0

    return v0
.end method

.method public static getAddressByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2209
    const-string/jumbo v7, ""

    .line 2210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    return-object v7

    .line 2216
    :cond_0
    const-string/jumbo v0, "\'"

    const-string/jumbo v1, "\'\'"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2219
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 2220
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "raw_contact_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    .line 2221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mimetype =? AND data1 like \'%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2222
    const-string/jumbo v4, "%\' "

    .line 2221
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2222
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    const/4 v8, 0x0

    aput-object v5, v4, v8

    .line 2223
    const/4 v5, 0x0

    .line 2219
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2225
    if-nez v1, :cond_2

    .line 2241
    if-eqz v1, :cond_1

    .line 2242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2226
    :cond_1
    return-object v7

    .line 2229
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2230
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2231
    const-string/jumbo v2, "raw_contact_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 2234
    const-string/jumbo v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    :cond_3
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/MessageUtils;->queryPhoneNumbersWithRaw(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2240
    :catchall_0
    move-exception v0

    .line 2241
    :goto_1
    if-eqz v1, :cond_4

    .line 2242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2240
    :cond_4
    throw v0

    .line 2239
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 2241
    if-eqz v1, :cond_6

    .line 2242
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2246
    :cond_6
    return-object v0

    .line 2240
    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public static getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1761
    new-array v3, v7, [Ljava/lang/String;

    .line 1762
    const-string/jumbo v0, "recipient_ids"

    aput-object v0, v3, v1

    .line 1765
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1766
    const-string/jumbo v1, "simple"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1767
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    .line 1767
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1770
    if-eqz v1, :cond_1

    .line 1772
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1774
    const/4 v2, 0x1

    .line 1773
    invoke-static {p0, v0, v2}, Lcom/android/mms/ui/MessageUtils;->getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1775
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 1780
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1776
    return-object v0

    .line 1780
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1783
    :cond_1
    return-object v5

    .line 1779
    :catchall_0
    move-exception v0

    .line 1780
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1779
    throw v0
.end method

.method public static getAttachmentType(Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/MultimediaMessagePdu;)I
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 912
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 913
    :cond_0
    return v5

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 917
    if-le v1, v4, :cond_2

    .line 918
    return v6

    .line 919
    :cond_2
    if-ne v1, v4, :cond_b

    .line 921
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 922
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 923
    const/4 v0, 0x2

    return v0

    .line 926
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 927
    return v6

    .line 930
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 931
    const/4 v0, 0x3

    return v0

    .line 934
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 935
    return v4

    .line 938
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 939
    const/4 v0, 0x5

    return v0

    .line 942
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 943
    const/4 v0, 0x6

    return v0

    .line 946
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 947
    return v3

    .line 951
    :cond_9
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    .line 952
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 953
    return v3

    .line 957
    :cond_b
    return v5
.end method

.method public static getCellBroadcastIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 3002
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3003
    new-instance v1, Landroid/content/ComponentName;

    .line 3004
    const-string/jumbo v2, "com.android.cellbroadcastreceiver"

    .line 3005
    const-string/jumbo v3, "com.android.cellbroadcastreceiver.CellBroadcastListActivity"

    .line 3003
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3006
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3007
    return-object v0
.end method

.method private static getDiscardMessageId(I)I
    .locals 2

    .prologue
    .line 1454
    const v0, 0x7f070183

    .line 1459
    const/4 v1, -0x2

    if-eq v1, p0, :cond_0

    .line 1460
    if-lez p0, :cond_1

    const v0, 0x7f070182

    .line 1463
    :cond_0
    :goto_0
    return v0

    .line 1461
    :cond_1
    const v0, 0x7f070181

    goto :goto_0
.end method

.method public static getDisplayTime(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0xa

    .line 961
    div-int/lit16 v0, p0, 0x3e8

    .line 962
    div-int/lit8 v1, v0, 0x3c

    .line 963
    rem-int/lit8 v0, v0, 0x3c

    .line 964
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 965
    if-ge v1, v4, :cond_0

    .line 966
    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 969
    const-string/jumbo v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    if-ge v0, v4, :cond_1

    .line 971
    const-string/jumbo v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 3150
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 3154
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3155
    invoke-static {p1}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3156
    const-string/jumbo v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 3168
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 3169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3176
    :cond_1
    :goto_1
    return-object v3

    .line 3158
    :cond_2
    :try_start_1
    const-string/jumbo v0, "media"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3160
    const-string/jumbo v0, "_data"

    .line 3159
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    goto :goto_0

    .line 3168
    :cond_3
    if-eqz v1, :cond_4

    .line 3169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3163
    :cond_4
    return-object v3

    .line 3165
    :catch_0
    move-exception v0

    .line 3166
    :try_start_2
    const-string/jumbo v2, "Mms"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3168
    if-eqz v1, :cond_1

    .line 3169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3167
    :catchall_0
    move-exception v0

    .line 3168
    if-eqz v1, :cond_5

    .line 3169
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 3167
    :cond_5
    throw v0

    .line 3172
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3173
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getFontSize()I
    .locals 3

    .prologue
    .line 2169
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    .line 2168
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2173
    const-string/jumbo v1, "pref_key_message_font_size"

    .line 2174
    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 2172
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2171
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2175
    return v0
.end method

.method public static getIccUriBySubscription(I)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 2471
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getIccUriBySubscription slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    packed-switch p0, :pswitch_data_0

    .line 2478
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->ICC_URI:Landroid/net/Uri;

    return-object v0

    .line 2474
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->ICC1_URI:Landroid/net/Uri;

    return-object v0

    .line 2476
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->ICC2_URI:Landroid/net/Uri;

    return-object v0

    .line 2472
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getIdpPrefixNumber(Landroid/content/Context;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 3035
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3036
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "international_prefix_number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3035
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3037
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "01033"

    :cond_0
    return-object v0
.end method

.method public static getLocalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1467
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalNumber(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1471
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    # FEAT(self number): learned own number when the SIM doesn't carry one
    invoke-static {v0}, Lcom/android/mms/wave/WaveSelf;->localNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    .line 1473
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sLocalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 460
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 461
    :cond_0
    return-object v3

    .line 463
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->isLayoutRtl:Z

    .line 466
    const-string/jumbo v0, "mms"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 467
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 468
    packed-switch v0, :pswitch_data_0

    .line 475
    :pswitch_0
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "No details could be retrieved."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const-string/jumbo v0, ""

    return-object v0

    :cond_2
    move v0, v1

    .line 463
    goto :goto_0

    .line 470
    :pswitch_1
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 473
    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 479
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/android/mms/ui/MessageUtils;->getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 468
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 414
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 416
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 418
    const/16 v0, 0x11

    .line 417
    invoke-virtual {v1, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 419
    :goto_0
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->is3GPP(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 420
    if-eqz v0, :cond_1

    const-string/jumbo v0, "video/3gpp"
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 420
    return-object v0

    .line 417
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 420
    :cond_1
    :try_start_1
    const-string/jumbo v0, "audio/3gpp"

    goto :goto_1

    .line 421
    :cond_2
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->is3GPP2(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 422
    if-eqz v0, :cond_3

    const-string/jumbo v0, "video/3gpp2"
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :goto_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 422
    return-object v0

    :cond_3
    :try_start_2
    const-string/jumbo v0, "audio/3gpp2"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 427
    :cond_4
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 431
    :goto_3
    const-string/jumbo v0, "video/3gpp"

    return-object v0

    .line 424
    :catch_0
    move-exception v0

    .line 425
    :try_start_3
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "Unable to open 3GP file to determine mimetype"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 427
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_3

    .line 426
    :catchall_0
    move-exception v0

    .line 427
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 426
    throw v0
.end method

.method public static getMissingBasicPermissions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 3349
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSBasicPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getMissingPermissions([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMissingPermissions([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 3335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3336
    const/4 v0, 0x0

    array-length v2, p0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 3337
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3338
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3336
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3342
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 3343
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3344
    return-object v0
.end method

.method public static getMmsDownloadStatus(I)I
    .locals 1

    .prologue
    .line 2417
    const/16 v0, 0x87

    if-ne v0, p0, :cond_0

    .line 2418
    return p0

    .line 2419
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2420
    const/16 v0, 0x83

    if-eq v0, p0, :cond_1

    .line 2421
    and-int/lit8 v0, p0, -0x5

    return v0

    .line 2423
    :cond_1
    return p0
.end method

.method public static getMmsReportStatus(Landroid/content/Context;J)Lcom/android/mms/ui/MessageUtils$ReportStatus;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 723
    sget-object v0, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    .line 724
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 725
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 726
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 725
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 729
    if-nez v1, :cond_0

    .line 730
    return-object v4

    .line 734
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 735
    new-instance v4, Lcom/android/mms/ui/MessageUtils$ReportStatus;

    .line 736
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 737
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 735
    invoke-direct {v4, v0, v2}, Lcom/android/mms/ui/MessageUtils$ReportStatus;-><init>(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v0

    .line 740
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 739
    throw v0

    .line 740
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 742
    return-object v4
.end method

.method private static getMmsUsed(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 2687
    const-wide/16 v8, 0x0

    .line 2688
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2689
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 2690
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 2691
    const-string/jumbo v0, "m_size"

    aput-object v0, v3, v7

    .line 2692
    const-string/jumbo v4, "m_type = 128 OR m_type = 132 OR m_type = 130"

    move-object v0, p0

    move-object v6, v5

    .line 2688
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2694
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2695
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-wide v2, v8

    .line 2697
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2698
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    const-wide/32 v0, 0xc800

    :goto_1
    add-long/2addr v2, v0

    goto :goto_0

    :cond_0
    move-wide v0, v8

    move v2, v7

    .line 2705
    :goto_2
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MMS count = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " size = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    new-instance v4, Lcom/android/mms/ui/MessageUtils$MessageInfo;

    invoke-direct {v4, v5}, Lcom/android/mms/ui/MessageUtils$MessageInfo;-><init>(Lcom/android/mms/ui/MessageUtils$MessageInfo;)V

    .line 2707
    invoke-static {v4, v2}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-set0(Lcom/android/mms/ui/MessageUtils$MessageInfo;I)I

    .line 2708
    mul-int/lit8 v2, v2, 0x3

    int-to-long v2, v2

    const-wide/16 v6, 0x400

    mul-long/2addr v2, v6

    .line 2709
    cmp-long v5, v0, v2

    if-gez v5, :cond_1

    move-wide v0, v2

    :cond_1
    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-set1(Lcom/android/mms/ui/MessageUtils$MessageInfo;J)J

    .line 2710
    return-object v4

    .line 2699
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v0, v0

    goto :goto_1

    .line 2702
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-wide v0, v2

    move v2, v4

    goto :goto_2

    .line 2701
    :catchall_0
    move-exception v0

    .line 2702
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2701
    throw v0

    :cond_4
    move-wide v0, v8

    move v2, v7

    goto :goto_2
.end method

.method public static getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2125
    if-nez p0, :cond_0

    .line 2127
    return-object v5

    .line 2131
    :cond_0
    const-string/jumbo v0, "telecom"

    .line 2130
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 2133
    const-string/jumbo v1, "phone"

    .line 2132
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2135
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 2138
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 2140
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    .line 2141
    if-ne v4, p1, :cond_1

    .line 2142
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 2146
    :cond_2
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "phoneAccountHandle is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2147
    return-object v5
.end method

.method private static getMultimediaMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 10

    .prologue
    .line 551
    const/16 v0, 0x12

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 552
    const/16 v1, 0x82

    if-ne v0, v1, :cond_0

    .line 553
    invoke-static {p0, p1}, Lcom/android/mms/ui/MessageUtils;->getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 556
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 557
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 559
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 560
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 564
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    const v1, 0x7f070200

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    const v1, 0x7f070202

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    instance-of v1, v0, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 577
    check-cast v1, Lcom/google/android/mms/pdu/RetrieveConf;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    .line 580
    sget-boolean v6, Lcom/android/mms/ui/MessageUtils;->isLayoutRtl:Z

    if-eqz v6, :cond_1

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x202d

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v6, 0x202c

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 584
    const v6, 0x7f070204

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 587
    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 589
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    :cond_3
    instance-of v1, v0, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v1, :cond_5

    .line 595
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    const v1, 0x7f070205

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 598
    if-eqz v1, :cond_d

    .line 599
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    .line 601
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 602
    const/4 v6, 0x1

    invoke-static {v1, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 604
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    :cond_5
    :goto_1
    instance-of v1, v0, Lcom/google/android/mms/pdu/SendReq;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 613
    check-cast v1, Lcom/google/android/mms/pdu/SendReq;

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/SendReq;->getBcc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 614
    if-eqz v1, :cond_6

    array-length v6, v1

    if-lez v6, :cond_6

    .line 615
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 616
    const v6, 0x7f070206

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-static {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_6
    const/16 v1, 0xa

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 623
    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 624
    const/4 v6, 0x3

    if-ne v1, v6, :cond_e

    .line 625
    const v6, 0x7f070209

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    :goto_2
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    const/4 v8, 0x1

    .line 632
    invoke-static {p0, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 637
    const v6, 0x7f07020a

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 640
    if-eqz v6, :cond_7

    .line 641
    invoke-virtual {v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .line 642
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    :cond_7
    const/16 v6, 0xa

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 647
    const v6, 0x7f07020d

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    const v0, 0x7f07020b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit16 v0, p2, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 655
    const-string/jumbo v0, " KB"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 659
    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getMmsReportStatus(Landroid/content/Context;J)Lcom/android/mms/ui/MessageUtils$ReportStatus;

    move-result-object v1

    .line 660
    const/16 v0, 0x14

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 661
    const/4 v0, 0x0

    .line 662
    if-eqz v4, :cond_8

    .line 663
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 665
    :cond_8
    const/16 v4, 0x80

    if-ne v0, v4, :cond_9

    .line 666
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 667
    const v0, 0x7f070228

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    if-nez v1, :cond_10

    .line 669
    const v0, 0x7f07021e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_9
    :goto_3
    const/16 v0, 0x15

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 694
    const/4 v0, 0x0

    .line 695
    if-eqz v4, :cond_a

    .line 696
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 698
    :cond_a
    const/16 v4, 0x80

    if-ne v0, v4, :cond_b

    .line 699
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const v0, 0x7f070229

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    if-nez v1, :cond_11

    .line 702
    const v0, 0x7f070222

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    :cond_b
    :goto_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 566
    :catch_0
    move-exception v0

    .line 567
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 590
    :cond_c
    const v1, 0x7f0701ab

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 607
    :cond_d
    const-string/jumbo v1, "Mms"

    const-string/jumbo v6, "recipient list is empty!"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 626
    :cond_e
    const/4 v6, 0x1

    if-ne v1, v6, :cond_f

    .line 627
    const v6, 0x7f070207

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 629
    :cond_f
    const v6, 0x7f070207

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 671
    :cond_10
    iget v0, v1, Lcom/android/mms/ui/MessageUtils$ReportStatus;->mDeliveryStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 686
    const v0, 0x7f070221

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 673
    :sswitch_0
    const v0, 0x7f07021e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 677
    :sswitch_1
    const v0, 0x7f070220

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 680
    :sswitch_2
    const v0, 0x7f070224

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 683
    :sswitch_3
    const v0, 0x7f07030c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 704
    :cond_11
    iget v0, v1, Lcom/android/mms/ui/MessageUtils$ReportStatus;->mReadStatus:I

    packed-switch v0, :pswitch_data_0

    .line 712
    const v0, 0x7f070222

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 706
    :pswitch_0
    const v0, 0x7f07021f

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 709
    :pswitch_1
    const v0, 0x7f070223

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 671
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_3
        0x81 -> :sswitch_1
        0x82 -> :sswitch_2
        0x86 -> :sswitch_1
    .end sparse-switch

    .line 704
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getNotificationIndDetails(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xa

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 487
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 488
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 492
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    const v1, 0x7f070200

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    const v1, 0x7f070203

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    .line 507
    sget-boolean v4, Lcom/android/mms/ui/MessageUtils;->isLayoutRtl:Z

    if-eqz v4, :cond_0

    .line 508
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x202d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x202c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 510
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 511
    const v4, 0x7f070204

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 514
    invoke-static {v1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 516
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 521
    new-array v1, v9, [Ljava/lang/Object;

    .line 524
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 523
    invoke-static {p0, v4, v5, v9}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    .line 522
    const v4, 0x7f070134

    .line 521
    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    const v1, 0x7f07020a

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 531
    if-eqz v1, :cond_2

    .line 532
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    :cond_2
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    const v1, 0x7f070211

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageClass()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 542
    const v1, 0x7f07020b

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v0

    const-wide/16 v4, 0x3ff

    add-long/2addr v0, v4

    const-wide/16 v4, 0x400

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const v0, 0x7f070135

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 494
    :catch_0
    move-exception v0

    .line 495
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to load the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 517
    :cond_3
    const v1, 0x7f0701ab

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public static getPath(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1014
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1015
    :cond_0
    return-object v1

    .line 1017
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1018
    :cond_2
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1019
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1020
    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 1021
    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1022
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1032
    :goto_0
    if-nez v0, :cond_5

    .line 1033
    return-object v1

    .line 1024
    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1025
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_4
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1028
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 1035
    :cond_5
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private static getPriorityDescription(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 887
    packed-switch p1, :pswitch_data_0

    .line 894
    :pswitch_0
    const v1, 0x7f07020f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 889
    :pswitch_1
    const v1, 0x7f07020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 891
    :pswitch_2
    const v1, 0x7f070210

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 887
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getRecipientsByIds(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1696
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1697
    if-eqz v0, :cond_0

    .line 1698
    return-object v0

    .line 1700
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1701
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->extractIdsToAddresses(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1702
    if-nez v0, :cond_1

    .line 1704
    const-string/jumbo v0, ""

    return-object v0

    .line 1706
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1710
    :goto_0
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->sRecipientAddress:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    return-object v0

    .line 1708
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getSimThreadByPhoneId(I)J
    .locals 2

    .prologue
    .line 2198
    packed-switch p0, :pswitch_data_0

    .line 2204
    const-wide/16 v0, -0x5

    return-wide v0

    .line 2200
    :pswitch_0
    const-wide/16 v0, -0x3

    return-wide v0

    .line 2202
    :pswitch_1
    const-wide/16 v0, -0x4

    return-wide v0

    .line 2198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getSmsMessageCount(Landroid/content/Context;)I
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 2762
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2763
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 2762
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2765
    if-eqz v1, :cond_1

    .line 2767
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2768
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2773
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2777
    :goto_1
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSmsMessageCount : msgCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    return v0

    .line 2770
    :cond_0
    :try_start_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "getSmsMessageCount returned no rows!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v7

    goto :goto_0

    .line 2772
    :catchall_0
    move-exception v0

    .line 2773
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2772
    throw v0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method public static getSmsPreferStoreLocation(Landroid/content/Context;I)I
    .locals 3

    .prologue
    .line 2582
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2585
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2586
    if-nez p1, :cond_0

    .line 2587
    const-string/jumbo v1, "pref_key_sms_store_card1"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2595
    :goto_0
    return v0

    .line 2589
    :cond_0
    const-string/jumbo v1, "pref_key_sms_store_card2"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 2592
    :cond_1
    const-string/jumbo v1, "pref_key_sms_store_single"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private static getSmsUsed(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;
    .locals 10

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 2659
    const-wide/16 v8, 0x0

    .line 2660
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2661
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2662
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 2663
    const-string/jumbo v0, "body"

    aput-object v0, v3, v7

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 2660
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2665
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2666
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-wide v0, v8

    .line 2668
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2669
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2670
    if-eqz v5, :cond_0

    .line 2671
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    move-wide v0, v8

    move v2, v7

    .line 2678
    :goto_1
    new-instance v3, Lcom/android/mms/ui/MessageUtils$MessageInfo;

    invoke-direct {v3, v4}, Lcom/android/mms/ui/MessageUtils$MessageInfo;-><init>(Lcom/android/mms/ui/MessageUtils$MessageInfo;)V

    .line 2679
    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-set0(Lcom/android/mms/ui/MessageUtils$MessageInfo;I)I

    .line 2680
    invoke-static {v3, v0, v1}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-set1(Lcom/android/mms/ui/MessageUtils$MessageInfo;J)J

    .line 2681
    const-string/jumbo v4, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SMS count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " size = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    return-object v3

    .line 2675
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2674
    :catchall_0
    move-exception v0

    .line 2675
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2674
    throw v0

    :cond_3
    move-wide v0, v8

    move v2, v7

    goto :goto_1
.end method

.method public static getSmscFromSub(Landroid/content/Context;ILandroid/os/Message;)V
    .locals 2

    .prologue
    .line 2090
    if-nez p2, :cond_0

    .line 2091
    return-void

    .line 2093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Get: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 2094
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2095
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2096
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2097
    const-string/jumbo v1, "callback"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2098
    const-string/jumbo v1, "get_smsc"

    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->callBinder(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2099
    return-void
.end method

.method public static getStoreUnused()J
    .locals 4

    .prologue
    .line 2599
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2600
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2601
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 2602
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 2603
    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTextFontSize(Landroid/content/Context;)F
    .locals 5

    .prologue
    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v3, 0x41a00000    # 20.0f

    .line 2403
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2405
    const-string/jumbo v1, "smsfontsize"

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2406
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 2408
    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 2409
    return v3

    .line 2410
    :cond_0
    cmpl-float v1, v0, v4

    if-lez v1, :cond_1

    .line 2411
    return v4

    .line 2413
    :cond_1
    return v0
.end method

.method public static getTextMessageDetails(Landroid/content/Context;Landroid/database/Cursor;Z)Ljava/lang/String;
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/4 v0, 0x0

    const/4 v10, 0x3

    const/16 v9, 0xa

    const/4 v8, 0x1

    .line 757
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "getTextMessageDetails"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 763
    const v1, 0x7f070200

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 767
    const-string/jumbo v0, "rcs_chat_type"

    .line 766
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 769
    const-string/jumbo v0, "rcs_msg_type"

    .line 768
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 770
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->isRcsMessage(I)Z

    move-result v1

    .line 771
    if-eqz v1, :cond_6

    .line 772
    const v1, 0x7f070086

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 781
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    const v1, 0x7f070087

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    if-ne v0, v8, :cond_8

    .line 784
    const v0, 0x7f07008b

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    :cond_0
    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 800
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 801
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 802
    const v0, 0x7f070205

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :goto_2
    const-string/jumbo v0, ""

    .line 808
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/mms/ui/MessageUtils;->WAPPUSH:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 809
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    const-string/jumbo v4, ":"

    .line 809
    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 811
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 812
    const v5, 0x7f0a0005

    .line 811
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aget-object v0, v0, v4

    .line 818
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 819
    invoke-static {v0, v8}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 823
    :cond_1
    sget-boolean v4, Lcom/android/mms/ui/MessageUtils;->isLayoutRtl:Z

    if-eqz v4, :cond_10

    .line 824
    const/16 v4, 0x202d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x202c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 830
    :goto_4
    if-ne v1, v8, :cond_2

    .line 831
    const-string/jumbo v0, "date_sent"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 832
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    .line 833
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    const v0, 0x7f070207

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    :cond_2
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 841
    if-ne v1, v10, :cond_11

    .line 842
    const v0, 0x7f070209

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    :goto_5
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 850
    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    invoke-static {v1}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 854
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 856
    shr-long v4, v0, v11

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 857
    shr-long/2addr v0, v11

    .line 859
    :cond_3
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 860
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const v4, 0x7f070228

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-wide/16 v4, 0x40

    cmp-long v4, v0, v4

    if-ltz v4, :cond_13

    .line 864
    const v0, 0x7f070221

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :cond_4
    :goto_6
    const-string/jumbo v0, "error_code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 876
    if-eqz v0, :cond_5

    .line 877
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 878
    const v4, 0x7f070212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 882
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 774
    :cond_6
    const v1, 0x7f070201

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 777
    :cond_7
    const v1, 0x7f070201

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 785
    :cond_8
    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 786
    const v0, 0x7f070089

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 787
    :cond_9
    if-ne v0, v10, :cond_a

    .line 788
    const v0, 0x7f07008a

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 789
    :cond_a
    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    .line 790
    const v0, 0x7f07008c

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 791
    :cond_b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 792
    const v0, 0x7f07008d

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 793
    :cond_c
    const/16 v1, 0x9

    if-ne v0, v1, :cond_d

    .line 794
    const v0, 0x7f0700cd

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 796
    :cond_d
    const v0, 0x7f070088

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 804
    :cond_e
    const v0, 0x7f070204

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 814
    :cond_f
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 826
    :cond_10
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 843
    :cond_11
    if-ne v1, v8, :cond_12

    .line 844
    const v0, 0x7f070208

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 846
    :cond_12
    const v0, 0x7f070207

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    .line 865
    :cond_13
    const-wide/16 v4, 0x20

    cmp-long v0, v0, v4

    if-ltz v0, :cond_14

    .line 867
    const v0, 0x7f07021e

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    .line 870
    :cond_14
    const v0, 0x7f070220

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6
.end method

.method public static getUnreadNotificationThreadIds(Landroid/content/Context;)Ljava/util/HashSet;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1510
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1513
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1514
    sget-object v2, Lcom/android/mms/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v0, "read"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 1515
    const-string/jumbo v4, "notification = 1 AND read = 0 "

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 1513
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 1516
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1517
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1518
    const-string/jumbo v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1519
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1522
    :catchall_0
    move-exception v0

    .line 1523
    :goto_1
    if-eqz v1, :cond_0

    .line 1524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1522
    :cond_0
    throw v0

    .line 1523
    :cond_1
    if-eqz v1, :cond_2

    .line 1524
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1528
    :cond_2
    return-object v8

    .line 1522
    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_1
.end method

.method public static getWapPushNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1970
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1971
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1972
    const v2, 0x7f0a0005

    .line 1971
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1973
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1551
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "m_type = 132 AND read = 0 AND rr = 128"

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1557
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1559
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "thread_id"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1560
    const-string/jumbo v0, " in ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1563
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1564
    if-lez v1, :cond_0

    .line 1565
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    :cond_0
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1568
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1570
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1573
    const-string/jumbo v1, " AND ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1577
    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/String;

    .line 1578
    const-string/jumbo v0, "_id"

    aput-object v0, v3, v4

    const-string/jumbo v0, "m_id"

    aput-object v0, v3, v7

    const-string/jumbo v0, "sub_id"

    aput-object v0, v3, v10

    .line 1579
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    .line 1576
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1581
    if-nez v3, :cond_3

    .line 1582
    return-void

    .line 1585
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1586
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1588
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 1589
    if-eqz p3, :cond_4

    .line 1590
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1604
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1592
    return-void

    .line 1595
    :cond_5
    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1596
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 1597
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1596
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1598
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1599
    invoke-static {p0, v0}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1598
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1600
    const/4 v0, 0x1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1601
    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1600
    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1603
    :catchall_0
    move-exception v0

    .line 1604
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1603
    throw v0

    .line 1604
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1607
    new-instance v0, Lcom/android/mms/ui/MessageUtils$7;

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils$7;-><init>(Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;ILjava/lang/Runnable;)V

    .line 1624
    new-instance v1, Lcom/android/mms/ui/MessageUtils$8;

    invoke-direct {v1, p3}, Lcom/android/mms/ui/MessageUtils$8;-><init>(Ljava/lang/Runnable;)V

    .line 1634
    new-instance v2, Lcom/android/mms/ui/MessageUtils$9;

    invoke-direct {v2, p3}, Lcom/android/mms/ui/MessageUtils$9;-><init>(Ljava/lang/Runnable;)V

    .line 1644
    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->confirmReadReportDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1647
    return-void
.end method

.method public static hasActivatedIccCard(I)Z
    .locals 1

    .prologue
    .line 2119
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2120
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    .line 2119
    :goto_0
    return v0

    .line 2121
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static hasBasicPermissions()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/mms/wave/WaveInit;->sBasicPermissionsGranted:Z

    if-eqz v0, :wave_check_basic

    const/4 v0, 0x1

    return v0

    :wave_check_basic
    .line 3306
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sSMSBasicPermissions:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :wave_basic_done

    sput-boolean v0, Lcom/android/mms/wave/WaveInit;->sBasicPermissionsGranted:Z

    :wave_basic_done
    return v0
.end method

.method public static hasIccCard()Z
    .locals 1

    .prologue
    .line 2062
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public static hasIccCard(I)Z
    .locals 3

    .prologue
    .line 2046
    const/4 v0, 0x0

    .line 2047
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 2048
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2049
    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    .line 2055
    :cond_0
    :goto_0
    return v0

    .line 2051
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v2

    if-ne p0, v2, :cond_0

    .line 2052
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    goto :goto_0
.end method

.method public static hasPermission(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3283
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 3284
    invoke-virtual {v1, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    .line 3285
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasPermissions([Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3294
    array-length v2, p0

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p0, v0

    .line 3295
    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3296
    return v1

    .line 3294
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3299
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static hasStoragePermission()Z
    .locals 1

    .prologue
    .line 3353
    const-string/jumbo v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static is3GPP(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 406
    const-string/jumbo v0, "3gp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3gpp"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static is3GPP2(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 410
    const-string/jumbo v0, "3g2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "3gpp2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    invoke-static {p0}, Lcom/android/mms/wave/WaveInit;->isAirplaneModeCached(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1897
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1898
    return v1

    .line 1901
    :cond_0
    if-nez p0, :cond_2

    move v0, v1

    .line 1903
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMinChars()I

    move-result v2

    if-lt v0, v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getAliasMaxChars()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 1904
    :cond_1
    return v1

    .line 1901
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 1907
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1908
    return v1

    :cond_4
    move v4, v3

    .line 1910
    :goto_1
    if-ge v4, v0, :cond_8

    .line 1911
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1912
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0x2e

    if-ne v2, v5, :cond_6

    :cond_5
    move v2, v3

    :goto_2
    if-nez v2, :cond_7

    .line 1913
    return v1

    .line 1912
    :cond_6
    const/16 v5, 0x40

    if-eq v2, v5, :cond_5

    move v2, v1

    goto :goto_2

    .line 1910
    :cond_7
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 1917
    :cond_8
    return v3
.end method

.method public static isCDMAInternationalRoaming(I)Z
    .locals 1

    .prologue
    .line 2333
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isCDMAPhone(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isNetworkRoaming(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCDMAPhone(I)Z
    .locals 3

    .prologue
    .line 2307
    const/4 v0, 0x0

    .line 2308
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2309
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 2311
    :goto_0
    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    .line 2312
    const/4 v0, 0x1

    .line 2314
    :cond_0
    return v0

    .line 2310
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3357
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3358
    return v1

    .line 3360
    :cond_0
    const-string/jumbo v0, "911"

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3361
    const/4 v0, 0x1

    return v0

    .line 3363
    :cond_1
    return v1
.end method

.method public static isIccCardActivated()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2112
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2113
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 2114
    if-eq v2, v0, :cond_1

    .line 2115
    if-eqz v2, :cond_0

    .line 2114
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2115
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2114
    goto :goto_0
.end method

.method public static isIccCardActivated(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2106
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2107
    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    .line 2108
    if-eq v2, v0, :cond_1

    .line 2109
    if-eqz v2, :cond_0

    .line 2108
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2109
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2108
    goto :goto_0
.end method

.method public static isLocalNumber(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1532
    if-nez p0, :cond_0

    .line 1533
    return v1

    .line 1540
    :cond_0
    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 1541
    return v1

    .line 1544
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMailboxMode()Z
    .locals 3

    .prologue
    .line 2155
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2157
    const-string/jumbo v1, "current_view"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2158
    return v0
.end method

.method public static isMmsMemoryFull()Z
    .locals 2

    .prologue
    .line 2613
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isPhoneMemoryFull()Z

    move-result v0

    .line 2614
    if-eqz v0, :cond_0

    .line 2615
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Mms emory is full "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    const/4 v0, 0x1

    return v0

    .line 2618
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMobileDataDisabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 2360
    const-string/jumbo v0, "connectivity"

    .line 2359
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2361
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isMsimIccCardActive()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2350
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2351
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isIccCardActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2352
    return v2

    .line 2355
    :cond_0
    return v1
.end method

.method public static isMultiSimEnabledMms()Z
    .locals 1

    .prologue
    # PERF: hardware multi-SIM config never changes at runtime; cache once per process.
    invoke-static {}, Lcom/android/mms/wave/WaveInit;->isMultiSimEnabledCached()Z

    move-result v0

    return v0
.end method

.method private static isNetworkRoaming(I)Z
    .locals 1

    .prologue
    .line 2327
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2328
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    .line 2327
    :goto_0
    return v0

    .line 2329
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0
.end method

.method public static isPhoneFeatureEnabled(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2066
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    .line 2067
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/MessageUtils;->URI_PHONE_FEATURE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 2066
    :cond_0
    return v0
.end method

.method public static isPhoneMemoryFull()Z
    .locals 4

    .prologue
    .line 2607
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getStoreUnused()J

    move-result-wide v0

    .line 2608
    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneSmsCountFull(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2622
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2623
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 2624
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getSmsMessageCount(Landroid/content/Context;)I

    move-result v2

    .line 2625
    if-lt v2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2627
    :cond_1
    return v0
.end method

.method public static isRecipientCallable(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1980
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRoaming(I)Z
    .locals 1

    .prologue
    .line 3022
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public static isTooLargeFile(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 3067
    const/4 v2, 0x0

    .line 3071
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 3072
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v4, v0

    const-wide/16 v6, 0x3

    div-long/2addr v4, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    .line 3074
    const/4 v0, 0x1

    .line 3079
    :goto_0
    if-eqz v1, :cond_0

    .line 3081
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3087
    :cond_0
    :goto_1
    return v0

    .line 3082
    :catch_0
    move-exception v1

    .line 3083
    const-string/jumbo v2, "Mms"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3076
    :catch_1
    move-exception v0

    .line 3077
    :try_start_2
    const-string/jumbo v3, "Mms"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3079
    if-eqz v1, :cond_1

    .line 3081
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_1
    :goto_2
    move v0, v2

    goto :goto_1

    .line 3082
    :catch_2
    move-exception v0

    .line 3083
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3078
    :catchall_0
    move-exception v0

    .line 3079
    if-eqz v1, :cond_2

    .line 3081
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 3078
    :cond_2
    :goto_3
    throw v0

    .line 3082
    :catch_3
    move-exception v1

    .line 3083
    const-string/jumbo v2, "Mms"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static isValidMmsAddress(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1954
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1955
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWapPushNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1962
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    const/4 v0, 0x0

    return v0

    .line 1965
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAPPUSH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isWebUrl(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2318
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WEB_SCHEMA:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 2319
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2320
    const/4 v0, 0x1

    return v0

    .line 2318
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2323
    :cond_1
    return v1
.end method

.method private static isWifiConnected(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3245
    const-string/jumbo v0, "connectivity"

    .line 3244
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3246
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3248
    if-eqz v0, :cond_0

    .line 3249
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 3250
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_0

    .line 3251
    return v2

    .line 3253
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static isWifiOn(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 3237
    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3238
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3239
    const/4 v0, 0x1

    return v0

    .line 3240
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static launchPermissionCheckActivity(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3313
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/PermissionGuardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3314
    const-string/jumbo v1, "original_intent"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3315
    const-string/jumbo v1, "ext_permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 3316
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 3317
    return-void
.end method

.method public static launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 2

    .prologue
    .line 1863
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/AttachmentViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1864
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1865
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1866
    if-lez p2, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1867
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1872
    :goto_0
    return-void

    .line 1869
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static loadUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/4 v5, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2862
    const-string/jumbo v3, "http://"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2863
    const-string/jumbo v9, "https://"

    const/16 v11, 0x8

    move-object v6, p1

    move v7, v1

    move v8, v2

    move v10, v2

    invoke-virtual/range {v6 .. v11}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2862
    if-eqz v0, :cond_0

    .line 2864
    const-string/jumbo v3, "rtsp://"

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2862
    if-eqz v0, :cond_0

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2867
    :cond_0
    const-string/jumbo v0, "Http://"

    const-string/jumbo v1, "http://"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2868
    const-string/jumbo v1, "Https://"

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    const-string/jumbo v1, "HTTP://"

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2870
    const-string/jumbo v1, "HTTPS://"

    const-string/jumbo v2, "https://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2871
    const-string/jumbo v1, "Rtsp://"

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2872
    const-string/jumbo v1, "RTSP://"

    const-string/jumbo v2, "rtsp://"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2873
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2874
    const-string/jumbo v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2876
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 2877
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ".3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 2878
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v2, "video/*"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2881
    :cond_2
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2885
    return-void

    .line 2882
    :catch_0
    move-exception v0

    .line 2883
    return-void
.end method

.method private static loadUrlDialog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2835
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2836
    const v1, 0x7f070292

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2837
    const v1, 0x7f070294

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2838
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2839
    new-instance v1, Lcom/android/mms/ui/MessageUtils$18;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageUtils$18;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2845
    new-instance v1, Lcom/android/mms/ui/MessageUtils$19;

    invoke-direct {v1}, Lcom/android/mms/ui/MessageUtils$19;-><init>()V

    const v2, 0x7f0701ad

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2851
    new-instance v1, Lcom/android/mms/ui/MessageUtils$20;

    invoke-direct {v1}, Lcom/android/mms/ui/MessageUtils$20;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2857
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2859
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2151
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[MsgUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2152
    return-void
.end method

.method public static markAsNotificationThreadIfNeed(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 979
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/MessageUtils$1;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1009
    return-void
.end method

.method public static markAsRead(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .prologue
    .line 2427
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/MessageUtils$12;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageUtils$12;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2445
    return-void
.end method

.method public static markAsReadForNotificationMessage(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 1477
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getUnreadNotificationThreadIds(Landroid/content/Context;)Ljava/util/HashSet;

    move-result-object v0

    .line 1478
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1479
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1480
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1481
    const/4 v0, 0x1

    invoke-static {p0, v2, v3, v0}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1482
    if-eqz v0, :cond_0

    .line 1483
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    goto :goto_0

    .line 1486
    :cond_1
    return-void
.end method

.method public static onFontSizeScale(Ljava/util/ArrayList;FF)F
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    const/high16 v7, 0x40a00000    # 5.0f

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    .line 2371
    const/4 v0, 0x0

    .line 2372
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2373
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 2375
    :cond_0
    float-to-double v2, p1

    const-wide v4, 0x3feffffde7210be9L    # 0.999999

    cmpg-double v1, v2, v4

    if-ltz v1, :cond_1

    float-to-double v2, p1

    const-wide v4, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v1, v2, v4

    if-lez v1, :cond_5

    .line 2376
    :cond_1
    add-float v1, v0, v7

    .line 2377
    sub-float v2, v0, v7

    .line 2378
    float-to-double v4, p1

    cmpl-double v0, v4, v8

    if-lez v0, :cond_3

    const/high16 v0, 0x42a00000    # 80.0f

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_3

    .line 2379
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2380
    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2381
    cmpl-float v0, p2, v1

    if-eqz v0, :cond_2

    move p2, v1

    .line 2382
    goto :goto_0

    .line 2385
    :cond_3
    float-to-double v0, p1

    cmpg-double v0, v0, v8

    if-gez v0, :cond_5

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_5

    .line 2386
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2387
    invoke-virtual {v0, v6, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2388
    cmpl-float v0, p2, v2

    if-eqz v0, :cond_4

    move p2, v2

    .line 2389
    goto :goto_1

    .line 2394
    :cond_5
    return p2
.end method

.method public static onMessageContentClick(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2484
    invoke-virtual {p1}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v0

    .line 2485
    array-length v1, v0

    if-ne v1, v4, :cond_4

    .line 2486
    aget-object v1, v0, v3

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 2487
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isWebUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2488
    invoke-static {p0, v1}, Lcom/android/mms/ui/MessageUtils;->showUrlOptions(Landroid/content/Context;Ljava/lang/String;)V

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2490
    :cond_1
    const-string/jumbo v2, "tel:"

    .line 2491
    const-string/jumbo v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2492
    const-string/jumbo v0, "tel:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2493
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2494
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showNumberOptions(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2496
    :cond_2
    const-string/jumbo v2, "mailto:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2497
    const-string/jumbo v0, "mailto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2498
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->showEmailOptions(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2500
    :cond_3
    aget-object v0, v0, v3

    invoke-virtual {v0, p1}, Landroid/text/style/URLSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 2503
    :cond_4
    array-length v1, v0

    if-le v1, v4, :cond_0

    .line 2504
    new-instance v1, Lcom/android/mms/ui/MessageUtils$13;

    .line 2505
    const v2, 0x1090011

    .line 2504
    invoke-direct {v1, p0, v2, v0, p0}, Lcom/android/mms/ui/MessageUtils$13;-><init>(Landroid/content/Context;I[Landroid/text/style/URLSpan;Landroid/content/Context;)V

    .line 2541
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2542
    new-instance v3, Lcom/android/mms/ui/MessageUtils$14;

    invoke-direct {v3, v0, p0, p1}, Lcom/android/mms/ui/MessageUtils$14;-><init>([Landroid/text/style/URLSpan;Landroid/content/Context;Landroid/widget/TextView;)V

    .line 2568
    const v0, 0x7f070266

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2569
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2570
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2571
    new-instance v0, Lcom/android/mms/ui/MessageUtils$15;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageUtils$15;-><init>()V

    const/high16 v1, 0x1040000

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2577
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public static parseMmsAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1991
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1992
    return-object p0

    .line 1996
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1997
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1998
    return-object v0

    .line 2002
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2003
    return-object p0

    .line 2007
    :cond_2
    return-object v2
.end method

.method private static parsePhoneNumberForMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 1926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1927
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1929
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1930
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1933
    const/16 v4, 0x2b

    if-ne v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1934
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1929
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1938
    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1939
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1943
    :cond_2
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->numericSugarMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1944
    return-object v5

    .line 1947
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pupConnectWifiAlertDialog(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 3180
    const-string/jumbo v0, "persist.sys.wificall.turnon"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3181
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->cellularNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3180
    if-eqz v0, :cond_0

    .line 3182
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isWifiOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3180
    if-eqz v0, :cond_0

    .line 3183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3184
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3185
    new-instance v1, Lcom/android/mms/ui/MessageUtils$23;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageUtils$23;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3192
    const v1, 0x7f070304

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3194
    return v3

    .line 3196
    :cond_0
    return v1
.end method

.method public static pupConnectWifiNotification(Landroid/content/Context;)V
    .locals 7

    .prologue
    const v6, 0x7f070303

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3200
    const-string/jumbo v0, "persist.sys.wificall.turnon"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3201
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->cellularNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3200
    if-eqz v0, :cond_0

    .line 3202
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isWifiOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3200
    if-eqz v0, :cond_0

    .line 3204
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3206
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3207
    const-string/jumbo v2, "android.settings.WIFI_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3210
    const/high16 v2, 0x8000000

    .line 3209
    invoke-static {p0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 3212
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3213
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 3214
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 3215
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3216
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 3217
    const v1, 0x7f02010e

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3218
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3220
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3222
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3223
    new-instance v1, Lcom/android/mms/ui/MessageUtils$24;

    invoke-direct {v1, v0}, Lcom/android/mms/ui/MessageUtils$24;-><init>(Landroid/app/NotificationManager;)V

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageUtils$24;->start()V

    .line 3234
    :cond_0
    return-void
.end method

.method private static queryPhoneNumbersWithRaw(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 2251
    const-string/jumbo v7, ""

    .line 2253
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2254
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 2255
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "data1"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "raw_contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2256
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2253
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 2258
    if-eqz v3, :cond_1

    move v1, v8

    move-object v2, v7

    .line 2260
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2261
    const-string/jumbo v0, "data1"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2262
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2263
    if-nez v1, :cond_0

    .line 2268
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    :goto_2
    move-object v2, v1

    move v1, v0

    goto :goto_0

    .line 2266
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v2, v7

    .line 2273
    :cond_2
    if-eqz v3, :cond_3

    .line 2274
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2277
    :cond_3
    return-object v2

    .line 2272
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 2273
    :goto_3
    if-eqz v1, :cond_4

    .line 2274
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2272
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_3

    :cond_5
    move v0, v1

    move-object v1, v2

    goto :goto_2
.end method

.method public static recordSound(Landroid/app/Activity;IJZ)V
    .locals 4

    .prologue
    .line 1159
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1160
    const-string/jumbo v1, "audio/amr"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string/jumbo v1, "com.android.soundrecorder"

    .line 1162
    const-string/jumbo v2, "com.android.soundrecorder.SoundRecorder"

    .line 1161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    if-eqz p4, :cond_0

    .line 1166
    const/4 v1, 0x2

    .line 1165
    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsFileController;->getRcsTransferFileMaxDuration(I)J

    move-result-wide v2

    .line 1167
    const-string/jumbo v1, "duration"

    long-to-int v2, v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1171
    :goto_0
    const-string/jumbo v1, "exit_after_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1172
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1173
    return-void

    .line 1169
    :cond_0
    const-string/jumbo v1, "android.provider.MediaStore.extra.MAX_BYTES"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static recordVideo(Landroid/app/Activity;IJZ)V
    .locals 6

    .prologue
    .line 1178
    if-nez p4, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabledAndOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1179
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 1181
    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    const-wide/16 v2, 0x400

    mul-long/2addr v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1183
    const/4 v1, 0x3

    .line 1182
    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsFileController;->getRcsTransferFileMaxDuration(I)J

    move-result-wide v2

    long-to-int v1, v2

    .line 1184
    const-string/jumbo v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1185
    const-string/jumbo v1, "output"

    sget-object v2, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1187
    return-void

    .line 1191
    :cond_0
    long-to-float v0, p2

    const v1, 0x3f7c7e28    # 0.9863f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1194
    const/16 v2, 0x258

    .line 1196
    const-string/jumbo v3, "Mms"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recordVideo: durationLimit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1198
    const-string/jumbo v4, " sizeLimit: "

    .line 1197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 1201
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v4, "android.intent.extra.videoQuality"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    const-string/jumbo v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1204
    const-string/jumbo v0, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    const-string/jumbo v0, "output"

    sget-object v1, Lcom/android/mms/TempFileProvider;->SCRAP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1206
    invoke-virtual {p0, v3, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1207
    return-void
.end method

.method public static removeDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2782
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->mCanShowDialog:Z

    .line 2783
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2784
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2785
    sput-object v1, Lcom/android/mms/ui/MessageUtils;->memoryStatusDialog:Landroid/app/AlertDialog;

    .line 2787
    :cond_0
    return-void
.end method

.method public static resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V
    .locals 9

    .prologue
    .line 1381
    new-instance v2, Lcom/android/mms/ui/MessageUtils$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageUtils$5;-><init>(Landroid/content/Context;)V

    .line 1388
    const-wide/16 v0, 0x3e8

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1390
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageUtils$6;

    move-object v1, p3

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageUtils$6;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Landroid/content/Context;Landroid/net/Uri;ILcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    .line 1436
    const-string/jumbo v1, "MessageUtils.resizeImageAsync"

    .line 1390
    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 1437
    return-void
.end method

.method public static saveTextFontSize(Landroid/content/Context;F)V
    .locals 3

    .prologue
    .line 2398
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2399
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "smsfontsize"

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2400
    return-void
.end method

.method public static selectContact(Landroid/content/Context;I)V
    .locals 5

    .prologue
    .line 2013
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2014
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2016
    :try_start_0
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-virtual {v1, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2022
    :goto_0
    return-void

    .line 2017
    :catch_0
    move-exception v1

    .line 2018
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectContact :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    const v1, 0x7f070108

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static selectImage(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 1244
    const-string/jumbo v0, "image/*"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 1245
    return-void
.end method

.method private static selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1254
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1256
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.gallery3d"

    .line 1258
    const-string/jumbo v3, "com.android.gallery3d.app.Gallery"

    .line 1257
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1260
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1261
    if-eqz p3, :cond_0

    .line 1262
    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1264
    :cond_0
    const-string/jumbo v1, "multipick"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1265
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1266
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1268
    :cond_1
    return-void
.end method

.method public static selectPhotosAndVideos(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 1248
    const-string/jumbo v0, "image/*;video/*"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 1249
    return-void
.end method

.method public static selectVideo(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 1240
    const-string/jumbo v0, "video/*"

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->selectMediaByType(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 1241
    return-void
.end method

.method public static setMailboxMode(Z)V
    .locals 2

    .prologue
    .line 2162
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "current_view"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2165
    return-void
.end method

.method public static setSmscForSub(Landroid/content/Context;ILjava/lang/String;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 2078
    if-eqz p3, :cond_0

    .line 2079
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p3}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2081
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Set: sub = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " smsc= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->log(Ljava/lang/String;)V

    .line 2082
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2083
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2084
    const-string/jumbo v1, "smsc"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    const-string/jumbo v1, "callback"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2086
    const-string/jumbo v1, "set_smsc"

    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->callBinder(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2087
    return-void
.end method

.method public static showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3

    .prologue
    .line 1442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1443
    const v1, 0x7f070180

    .line 1442
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1444
    invoke-static {p2}, Lcom/android/mms/ui/MessageUtils;->getDiscardMessageId(I)I

    move-result v1

    .line 1442
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1445
    const v1, 0x7f0701ac

    .line 1442
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1446
    const v1, 0x7f0701ad

    const/4 v2, 0x0

    .line 1442
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1448
    return-void
.end method

.method public static showEmailOptions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2939
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2940
    const/4 v1, 0x1

    .line 2939
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2941
    new-instance v1, Lcom/android/mms/ui/MessageUtils$21;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageUtils$21;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x7f060007

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2965
    return-void
.end method

.method public static showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1328
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    return-void

    .line 1331
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/MessageUtils;->sErrorDialogIsShown:Z

    if-nez v0, :cond_1

    .line 1332
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1335
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1336
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1337
    new-instance v1, Lcom/android/mms/ui/MessageUtils$3;

    invoke-direct {v1}, Lcom/android/mms/ui/MessageUtils$3;-><init>()V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1345
    new-instance v1, Lcom/android/mms/ui/MessageUtils$4;

    invoke-direct {v1}, Lcom/android/mms/ui/MessageUtils$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 1351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1352
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->sErrorDialogIsShown:Z

    .line 1354
    :cond_1
    return-void
.end method

.method public static showMemoryStatusDialog(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2790
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/ui/MessageUtils;->mCanShowDialog:Z

    .line 2791
    new-instance v0, Lcom/android/mms/ui/MessageUtils$ShowDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageUtils$ShowDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageUtils$ShowDialog;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2792
    return-void
.end method

.method public static showNumberOptions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2970
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2971
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2972
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2974
    new-instance v1, Lcom/android/mms/ui/MessageUtils$22;

    invoke-direct {v1, p1, p0}, Lcom/android/mms/ui/MessageUtils$22;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 2973
    const v2, 0x7f060006

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2998
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2999
    return-void
.end method

.method public static showSmsMessageContent(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 1875
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1876
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1877
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1878
    return-void
.end method

.method private static showUrlOptions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 2801
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 2802
    const v1, 0x7f070292

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 2803
    const v1, 0x7f070293

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 2804
    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const v2, 0x7f07011d

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 2806
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2807
    const v2, 0x7f07014c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2808
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2809
    new-instance v2, Lcom/android/mms/ui/MessageUtils$16;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MessageUtils$16;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2825
    new-instance v0, Lcom/android/mms/ui/MessageUtils$17;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageUtils$17;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 2831
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2832
    return-void
.end method

.method public static updateThreadAttachTypeByThreadId(Landroid/content/Context;J)V
    .locals 5

    .prologue
    .line 1040
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/Conversation;->getLatestMessageAttachmentUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v0

    .line 1039
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->getAttachmentInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 1042
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1043
    const-string/jumbo v3, "attachment_info"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Update Thread Attachment Type Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1805
    if-nez p2, :cond_1

    move v1, v0

    .line 1806
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1807
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v0

    .line 1809
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 1811
    invoke-static {p0, p2}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1859
    :goto_2
    return-void

    .line 1805
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    goto :goto_0

    .line 1806
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 1817
    :cond_3
    new-instance v0, Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct {v0, p2, p0, p1}, Lcom/android/mms/ui/MessageUtils$10;-><init>(Lcom/android/mms/model/SlideshowModel;Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1833
    new-instance v1, Lcom/android/mms/ui/MessageUtils$11;

    invoke-direct {v1, p1, p0, p3}, Lcom/android/mms/ui/MessageUtils$11;-><init>(Landroid/net/Uri;Landroid/app/Activity;I)V

    .line 1857
    const v2, 0x7f070199

    .line 1817
    invoke-virtual {p4, v0, v1, v2}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_2
.end method

.method public static viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/ui/AsyncDialog;)V
    .locals 1

    .prologue
    .line 1800
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V

    .line 1801
    return-void
.end method

.method public static viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1271
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 1273
    const-string/jumbo v1, "viewSimpleSlideshow() called on a non-simple slideshow"

    .line 1272
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1277
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 1298
    :cond_1
    :goto_0
    if-nez v0, :cond_5

    .line 1299
    return-void

    .line 1279
    :cond_2
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1280
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    goto :goto_0

    .line 1281
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1282
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVcard()Lcom/android/mms/model/VcardModel;

    move-result-object v1

    move-object v0, v1

    .line 1283
    check-cast v0, Lcom/android/mms/model/VcardModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    .line 1285
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1290
    const-string/jumbo v1, "VIEW_VCARD_FROM_MMS"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1291
    const v1, 0x7f07037e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1292
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1293
    return-void

    .line 1294
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1295
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVcal()Lcom/android/mms/model/VcalModel;

    move-result-object v0

    goto :goto_0

    .line 1302
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1304
    const-string/jumbo v2, "SingleItemOnly"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1305
    const-string/jumbo v2, "calling_package_name"

    const-string/jumbo v3, "com.android.mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1308
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1309
    if-eqz v2, :cond_6

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1310
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1312
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1313
    const-string/jumbo v0, "com.borqs.gif"

    const-string/jumbo v2, "com.borqs.gif.GifMovie"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1314
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1316
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1317
    return-void

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "No activity found to handle gif image"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_6
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1324
    return-void
.end method

.method public static viewVcalAttachment(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    invoke-virtual {p1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getVcal()Lcom/android/mms/model/VcalModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/VcalModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVcal()Lcom/android/mms/model/VcalModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/VcalModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1502
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1507
    :goto_0
    return-void

    .line 1503
    :catch_0
    move-exception v0

    .line 1505
    const v0, 0x7f070108

    .line 1504
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
