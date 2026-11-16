.class public Lcom/android/mms/rcs/RcsUtils;
.super Ljava/lang/Object;
.source "RcsUtils.java"


# static fields
.field public static final BLACKLIST_CONTENT_URI:Landroid/net/Uri;

.field public static final RCS_MMS_VCARD_PATH:Ljava/lang/String;

.field public static final WHITELIST_CONTENT_URI:Landroid/net/Uri;

.field private static exceptionHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->startNotificationListActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->startPublicAccountActivity(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->toast(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 260
    const-string/jumbo v0, "content://com.android.firewall/whitelistitems"

    .line 259
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/RcsUtils;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    .line 263
    const-string/jumbo v0, "content://com.android.firewall/blacklistitems"

    .line 262
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/RcsUtils;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 283
    const-string/jumbo v1, "/rcs/"

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/rcs/RcsUtils;->RCS_MMS_VCARD_PATH:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OpenFile(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1340
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1342
    const/4 v0, 0x0

    return-object v0

    .line 1343
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1343
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "END="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v1, "m4a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "mid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "xmf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1348
    const-string/jumbo v1, "ogg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1347
    if-nez v1, :cond_1

    .line 1348
    const-string/jumbo v1, "wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1347
    if-nez v1, :cond_1

    .line 1348
    const-string/jumbo v1, "amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1347
    if-eqz v1, :cond_2

    .line 1349
    :cond_1
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getAudioFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1350
    :cond_2
    const-string/jumbo v1, "GIF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1351
    :cond_3
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getGifIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1352
    :cond_4
    const-string/jumbo v1, "3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1353
    :cond_5
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getVideoFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1354
    :cond_6
    const-string/jumbo v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1355
    const-string/jumbo v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1354
    if-nez v1, :cond_7

    .line 1355
    const-string/jumbo v1, "bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1354
    if-eqz v1, :cond_8

    .line 1356
    :cond_7
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getImageFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1357
    :cond_8
    const-string/jumbo v1, "apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1358
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getApkFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1359
    :cond_9
    const-string/jumbo v1, "ppt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1360
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getPptFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1361
    :cond_a
    const-string/jumbo v1, "xls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1362
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getExcelFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1363
    :cond_b
    const-string/jumbo v1, "doc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1364
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getWordFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1365
    :cond_c
    const-string/jumbo v1, "pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1366
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getPdfFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1367
    :cond_d
    const-string/jumbo v1, "chm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1368
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getChmFileIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1369
    :cond_e
    const-string/jumbo v1, "txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1370
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getTextFileIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 1372
    :cond_f
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->getAllIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static addNotificationItem(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1504
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    const-string/jumbo v0, "com.suntek.mway.rcs.nativeui"

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1504
    if-eqz v0, :cond_1

    .line 1506
    :cond_0
    return-void

    .line 1508
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1509
    const v1, 0x7f04000e

    .line 1508
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1510
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1511
    const v2, 0x7f0200f3

    .line 1510
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1512
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1513
    const v3, 0x7f020017

    .line 1512
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1514
    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 1515
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/mms/ui/ConversationListItem;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->bindAvatar(Landroid/graphics/drawable/Drawable;)V

    .line 1518
    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1519
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1520
    new-instance v1, Lcom/android/mms/rcs/RcsUtils$3;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/RcsUtils$3;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1526
    return-void
.end method

.method public static addNumberToFirewall(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 747
    invoke-virtual {p1, v9}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 748
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 750
    :cond_0
    const v0, 0x7f07007d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 752
    return-void

    .line 755
    :cond_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 757
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 761
    const/16 v2, 0xb

    if-le v1, v2, :cond_9

    .line 762
    add-int/lit8 v2, v1, -0xb

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 764
    :goto_0
    if-eqz p2, :cond_3

    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    move-object v6, v0

    .line 766
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 767
    if-eqz p2, :cond_4

    sget-object v1, Lcom/android/mms/rcs/RcsUtils;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    .line 769
    :goto_2
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 770
    const-string/jumbo v3, "_id"

    aput-object v3, v2, v9

    const-string/jumbo v3, "number"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string/jumbo v3, "person_id"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    const-string/jumbo v3, "name"

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 769
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 773
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_6

    .line 774
    if-eqz p2, :cond_5

    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 776
    :goto_3
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    if-eqz v1, :cond_2

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 777
    :cond_2
    return-void

    .line 765
    :cond_3
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    move-object v6, v0

    goto :goto_1

    .line 768
    :cond_4
    sget-object v1, Lcom/android/mms/rcs/RcsUtils;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 775
    :cond_5
    const v0, 0x7f07007e

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_3

    .line 780
    :cond_6
    if-eqz v1, :cond_7

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 786
    :cond_7
    const-string/jumbo v1, "number"

    invoke-virtual {v8, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v0, v6, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 789
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 791
    return-void

    .line 779
    :catchall_0
    move-exception v0

    .line 780
    if-eqz v1, :cond_8

    .line 781
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_8
    throw v0

    :cond_9
    move-object v7, v0

    goto/16 :goto_0
.end method

.method public static addPublicAccountItem(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1479
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    const-string/jumbo v0, "com.suntek.mway.rcs.nativeui"

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1479
    if-eqz v0, :cond_1

    .line 1481
    :cond_0
    return-void

    .line 1483
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1484
    const v1, 0x7f04000e

    .line 1483
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1485
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1486
    const v2, 0x7f0200f4

    .line 1485
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1487
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1488
    const v3, 0x7f020017

    .line 1487
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1489
    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 1490
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1491
    const v4, 0x7f070010

    .line 1490
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Lcom/android/mms/ui/ConversationListItem;->bind(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->bindAvatar(Landroid/graphics/drawable/Drawable;)V

    .line 1493
    invoke-virtual {v0, v2}, Lcom/android/mms/ui/ConversationListItem;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1494
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 1495
    new-instance v1, Lcom/android/mms/rcs/RcsUtils$2;

    invoke-direct {v1, p0}, Lcom/android/mms/rcs/RcsUtils$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1501
    return-void
.end method

.method public static burnMessageAtLocal(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 304
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 305
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 306
    const-string/jumbo v2, "rcs_msg_state"

    const/16 v3, -0x80

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, " _id = ? "

    .line 308
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    .line 309
    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 307
    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 311
    return-void
.end method

.method public static cancelTopConversion(Landroid/content/Context;J)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 433
    const-string/jumbo v1, "rcs_top"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 434
    const-string/jumbo v1, "rcs_top_time"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 435
    const-string/jumbo v1, "content://mms-sms/update-top"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 436
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 437
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 438
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 437
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public static closeKB(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 1321
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1322
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1323
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1324
    const/4 v2, 0x2

    .line 1322
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1326
    :cond_0
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 1792
    if-eqz p0, :cond_0

    .line 1794
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static concatSelections(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1936
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1937
    return-object p1

    .line 1938
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1939
    return-object p0

    .line 1941
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createVcardFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 648
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 649
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/mms/rcs/RcsUtils;->RCS_MMS_VCARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 654
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 655
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 656
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 658
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 660
    const/16 v2, 0x1f40

    :try_start_2
    new-array v2, v2, [B

    .line 662
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 663
    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 670
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 672
    if-eqz v2, :cond_0

    .line 674
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 679
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 681
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 687
    :cond_1
    :goto_3
    return-object v4

    .line 666
    :cond_2
    :try_start_6
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 672
    if-eqz v3, :cond_3

    .line 674
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 679
    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    .line 681
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 682
    :catch_1
    move-exception v0

    .line 683
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 675
    :catch_2
    move-exception v0

    .line 676
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 675
    :catch_3
    move-exception v0

    .line 676
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 682
    :catch_4
    move-exception v0

    .line 683
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 671
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 672
    :goto_5
    if-eqz v3, :cond_4

    .line 674
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 679
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    .line 681
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 671
    :cond_5
    :goto_7
    throw v0

    .line 675
    :catch_5
    move-exception v2

    .line 676
    invoke-static {v2}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 682
    :catch_6
    move-exception v1

    .line 683
    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 671
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_5

    .line 669
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_1

    :catch_8
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1
.end method

.method public static decodeInSampleSizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 709
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v2, 0xc8

    div-int v0, v2, v0

    .line 710
    if-ltz v0, :cond_0

    .line 711
    return-object p0

    .line 713
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 714
    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 716
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 715
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 717
    return-object v0
.end method

.method public static decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 693
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 694
    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 695
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 696
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 698
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v1, v1

    const/high16 v3, 0x43480000    # 200.0f

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 699
    if-gtz v1, :cond_0

    .line 701
    :goto_0
    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 703
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 705
    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static deleteGroupchatByThreadIds(Landroid/content/Context;Ljava/util/Collection;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1880
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1882
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->deleteAllGroupChat()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    :cond_0
    :goto_0
    :try_start_1
    array-length v0, v6

    if-lez v0, :cond_8

    .line 1924
    array-length v0, v6

    new-array v1, v0, [J

    move v0, v7

    .line 1925
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 1926
    aget-object v2, v6, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1925
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1883
    :catch_0
    move-exception v0

    .line 1884
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1886
    :cond_1
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1887
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v6, v0, [Ljava/lang/Long;

    .line 1888
    invoke-interface {p1, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 1891
    :cond_2
    const-string/jumbo v3, "locked = 0 and rcs_chat_type= 3) group by thread_id -- ("

    .line 1895
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1896
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "thread_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1895
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 1897
    if-eqz v1, :cond_5

    .line 1898
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1899
    if-lez v0, :cond_5

    .line 1900
    new-array v6, v0, [Ljava/lang/Long;

    move v0, v7

    .line 1902
    :cond_3
    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1903
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1904
    if-nez p1, :cond_4

    .line 1905
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    .line 1906
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1907
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1908
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1909
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1917
    :cond_5
    if-eqz v1, :cond_0

    .line 1918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1914
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 1915
    :goto_3
    :try_start_4
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1917
    if-eqz v1, :cond_0

    .line 1918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1916
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 1917
    :goto_4
    if-eqz v1, :cond_6

    .line 1918
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1916
    :cond_6
    throw v0

    .line 1928
    :cond_7
    :try_start_5
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->deleteGroupChat([J)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1933
    :cond_8
    :goto_5
    return-void

    .line 1930
    :catch_2
    move-exception v0

    .line 1931
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1916
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1914
    :catch_3
    move-exception v0

    goto :goto_3
.end method

.method public static dialConferenceCall(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V
    .locals 1

    .prologue
    .line 926
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/rcs/RcsUtils;->getNumbersExceptMe(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    .line 927
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->onShowConferenceCallStartScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->onShowConferenceCallStartScreen(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static dialGroupChat(Landroid/content/Context;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V
    .locals 1

    .prologue
    .line 917
    :try_start_0
    invoke-static {p1}, Lcom/android/mms/rcs/RcsUtils;->getGroupChatDialNumbers(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;

    move-result-object v0

    .line 918
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->onShowConferenceCallStartScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->onShowConferenceCallStartScreen(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2

    .prologue
    .line 1335
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1336
    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static disposeRcsSendMessageException(Landroid/content/Context;Ljava/lang/Exception;I)V
    .locals 2

    .prologue
    .line 969
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 970
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->initExceptionHandler()V

    .line 971
    instance-of v0, p1, Lcom/suntek/mway/rcs/client/api/exception/FileSuffixException;

    if-eqz v0, :cond_1

    .line 972
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 973
    :cond_1
    instance-of v0, p1, Lcom/suntek/mway/rcs/client/api/exception/FileDurationException;

    if-eqz v0, :cond_2

    .line 974
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 975
    :cond_2
    instance-of v0, p1, Lcom/suntek/mway/rcs/client/api/exception/FileTooLargeException;

    if-eqz v0, :cond_3

    .line 976
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 977
    :cond_3
    instance-of v0, p1, Lcom/suntek/mway/rcs/client/api/exception/FileNotExistsException;

    if-eqz v0, :cond_0

    .line 978
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static disposeVcardMessage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1707
    invoke-static {p0, p1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->rcsVcardContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1709
    if-nez v1, :cond_0

    .line 1710
    const-string/jumbo v0, ""

    return-object v0

    .line 1713
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 1714
    invoke-static {p0, p1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1716
    if-nez v3, :cond_1

    .line 1717
    const-string/jumbo v0, ""

    return-object v0

    .line 1719
    :cond_1
    const-string/jumbo v2, ""

    .line 1720
    const-string/jumbo v1, ""

    .line 1724
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    move-object v2, v0

    move-object v1, v0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 1725
    const-string/jumbo v7, "FN"

    iget-object v8, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1726
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1727
    iget-object v5, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    :goto_1
    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto :goto_0

    .line 1729
    :cond_2
    const-string/jumbo v7, "TEL"

    iget-object v8, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1730
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 1731
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "CELL"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1732
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "WORK"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1731
    if-eqz v7, :cond_3

    .line 1733
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f07009f

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1734
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 1733
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_1

    .line 1735
    :cond_3
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "HOME"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1736
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "FAX"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1735
    if-eqz v7, :cond_4

    .line 1737
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0700a0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1738
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 1737
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    .line 1739
    :cond_4
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "WORK"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1740
    iget-object v7, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v8, "FAX"

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    .line 1739
    if-eqz v7, :cond_5

    .line 1741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f0700a1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1742
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 1741
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    .line 1744
    :cond_5
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getPhoneNumberTypeStr(Landroid/content/Context;Lcom/suntek/rcs/ui/common/PropertyNode;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1

    .line 1749
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1756
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[Vcard]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1757
    const-string/jumbo v1, "\n"

    .line 1756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1751
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v3, v2

    .line 1752
    goto :goto_2

    .line 1753
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v3, v1

    .line 1754
    goto :goto_2

    .line 1758
    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_a

    .line 1760
    const v0, 0x7f07005f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1759
    new-array v2, v3, [Ljava/lang/Object;

    .line 1760
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1759
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    return-object v0

    .line 1763
    :cond_a
    const-string/jumbo v0, ""

    return-object v0

    :cond_b
    move-object v3, v4

    goto :goto_2

    :cond_c
    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_1
.end method

.method public static formatConversationSnippet(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1802
    packed-switch p2, :pswitch_data_0

    .line 1827
    :goto_0
    :pswitch_0
    return-object p1

    .line 1804
    :pswitch_1
    const v0, 0x7f0700c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1807
    :pswitch_2
    const v0, 0x7f0700ca

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1810
    :pswitch_3
    const v0, 0x7f0700c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1813
    :pswitch_4
    const v0, 0x7f0700cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1816
    :pswitch_5
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1819
    :pswitch_6
    const v0, 0x7f0700cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1822
    :pswitch_7
    const v0, 0x7f0700cf

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1802
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public static formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1870
    if-eqz p0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1871
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1870
    if-eqz v0, :cond_0

    .line 1872
    const-string/jumbo v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1874
    :cond_0
    return-object p0
.end method

.method public static getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1946
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getAccount()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 1949
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getAllIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1419
    const-string/jumbo v0, "*/*"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getApkFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1423
    const-string/jumbo v0, "application/vnd.android.package-archive"

    .line 1424
    const/high16 v1, 0x10000000

    .line 1423
    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getAudioFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1399
    const-string/jumbo v0, "audio/*"

    invoke-static {v0, p0, v2}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1400
    const-string/jumbo v1, "oneshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1401
    const-string/jumbo v1, "configchange"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1402
    return-object v0
.end method

.method public static getBytesFromFile(Ljava/io/File;)[B
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1768
    if-nez p0, :cond_0

    .line 1769
    return-object v2

    .line 1774
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1775
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x3e8

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1776
    const/16 v0, 0x3e8

    :try_start_2
    new-array v0, v0, [B

    .line 1778
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 1779
    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    :goto_1
    :try_start_3
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1785
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1786
    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1788
    return-object v2

    .line 1781
    :cond_1
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    .line 1785
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1786
    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1781
    return-object v0

    .line 1784
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 1785
    :goto_2
    invoke-static {v1}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1786
    invoke-static {v3}, Lcom/android/mms/rcs/RcsUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1784
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 1782
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static getCaiYunFileBodyText(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1242
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    .line 1243
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->parseCloudFileMessage(Ljava/lang/String;)Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;

    move-result-object v0

    .line 1244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700c2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1245
    const v2, 0x7f0700c3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1245
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileSize()J

    move-result-wide v2

    .line 1244
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1245
    const-string/jumbo v1, "KB"

    .line 1244
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChmFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1450
    const-string/jumbo v0, "application/x-chm"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1377
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1378
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1379
    if-lez p2, :cond_1

    .line 1380
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1384
    :goto_0
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1385
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1386
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1388
    :cond_0
    return-object v0

    .line 1382
    :cond_1
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getContentTypeForMessageItem(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1114
    const-string/jumbo v0, ""

    .line 1115
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1142
    :cond_0
    :goto_0
    return-object v0

    .line 1117
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1118
    if-nez v0, :cond_0

    .line 1119
    const-string/jumbo v0, "image/*"

    goto :goto_0

    .line 1124
    :pswitch_1
    const-string/jumbo v0, "video/*"

    goto :goto_0

    .line 1128
    :pswitch_2
    const-string/jumbo v0, "text/x-vCard"

    goto :goto_0

    .line 1132
    :pswitch_3
    const-string/jumbo v0, "audio/*"

    goto :goto_0

    .line 1136
    :pswitch_4
    const-string/jumbo v0, "map/*"

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public static getDisplayName(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 548
    if-nez p0, :cond_0

    .line 549
    const-string/jumbo v0, ""

    return-object v0

    .line 552
    :cond_0
    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getRemark()Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 554
    return-object v0

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 558
    return-object v0

    .line 560
    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getDuration(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 1

    .prologue
    .line 453
    invoke-static {p0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 454
    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x0

    return v0

    .line 457
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public static getExcelFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1442
    const-string/jumbo v0, "application/vnd.ms-excel"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getGifIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1406
    const-string/jumbo v0, "image/gif"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1407
    const-string/jumbo v1, "com.android.gallery3d.VIEW_GIF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    return-object v0
.end method

.method public static getGroupChatDialNumbers(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 863
    const-string/jumbo v1, ""

    .line 864
    if-eqz p0, :cond_2

    .line 865
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    .line 866
    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    .line 865
    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getMembers(J)Ljava/util/List;

    move-result-object v3

    .line 867
    if-eqz v3, :cond_2

    .line 868
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getAccount()Ljava/lang/String;

    move-result-object v4

    .line 870
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 871
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 872
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChatMember;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChatMember;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 875
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v1

    .line 871
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 879
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v5, :cond_0

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 887
    :cond_2
    return-object v1
.end method

.method public static getGroupChatNumbersExceptMe(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 892
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 893
    if-eqz p0, :cond_1

    .line 894
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v0

    .line 895
    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v4

    .line 894
    invoke-virtual {v0, v4, v5}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getMembers(J)Ljava/util/List;

    move-result-object v3

    .line 896
    if-eqz v3, :cond_1

    .line 897
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v0

    .line 898
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getAccount()Ljava/lang/String;

    move-result-object v4

    .line 899
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 900
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_1

    .line 901
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChatMember;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChatMember;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 902
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 904
    if-eqz v4, :cond_0

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 907
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 912
    :cond_1
    return-object v2
.end method

.method private static getImageFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1412
    const-string/jumbo v0, "image/*"

    .line 1413
    const/high16 v1, 0x10000000

    .line 1412
    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1414
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1415
    return-object v0
.end method

.method public static getNumbersExceptMe(Lcom/android/mms/data/ContactList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getAccount()Ljava/lang/String;

    move-result-object v3

    .line 841
    const-string/jumbo v1, ""

    .line 843
    invoke-virtual {p0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v4

    .line 844
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 845
    invoke-virtual {p0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 848
    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v1

    .line 844
    :cond_0
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 852
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 853
    add-int/lit8 v1, v2, 0x1

    if-ge v1, v4, :cond_0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 858
    :cond_2
    return-object v1
.end method

.method public static getPdfFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1467
    const-string/jumbo v0, "application/pdf"

    .line 1468
    const/high16 v1, 0x10000000

    .line 1467
    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumberTypeStr(Landroid/content/Context;Lcom/suntek/rcs/ui/common/PropertyNode;)Ljava/lang/String;
    .locals 4

    .prologue
    const v3, 0x7f0700a5

    .line 1579
    const-string/jumbo v0, ""

    .line 1580
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 1581
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1582
    :cond_0
    return-object v0

    .line 1584
    :cond_1
    iget-object v0, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue:Ljava/lang/String;

    .line 1585
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 1586
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "FAX"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1587
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "HOME"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1586
    if-eqz v1, :cond_2

    .line 1588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    const v2, 0x7f0700a3

    .line 1588
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1649
    :goto_0
    return-object v0

    .line 1590
    :cond_2
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "FAX"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1591
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "WORK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1590
    if-eqz v1, :cond_3

    .line 1592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1593
    const v2, 0x7f0700a2

    .line 1592
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1594
    :cond_3
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "PREF"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1595
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "WORK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1594
    if-eqz v1, :cond_4

    .line 1596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1597
    const v2, 0x7f0700ac

    .line 1596
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1598
    :cond_4
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "CELL"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1599
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "WORK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1598
    if-eqz v1, :cond_5

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    const v2, 0x7f0700ad

    .line 1600
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1602
    :cond_5
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "WORK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1603
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "PAGER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 1602
    if-eqz v1, :cond_6

    .line 1604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    const v2, 0x7f0700ae

    .line 1604
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1607
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1611
    :cond_7
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "CELL"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07009f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1614
    :cond_8
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "HOME"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1615
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1617
    :cond_9
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "WORK"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a1

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1620
    :cond_a
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "PAGER"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1623
    :cond_b
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "VOICE"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1626
    :cond_c
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "CAR"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700ab

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1629
    :cond_d
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "ISDN"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a9

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1632
    :cond_e
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "PREF"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700aa

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1635
    :cond_f
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "FAX"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1638
    :cond_10
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "TLX"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a7

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1641
    :cond_11
    iget-object v1, p1, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v2, "MSG"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700a8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1645
    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getPptFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1437
    const-string/jumbo v0, "application/vnd.ms-powerpoint"

    .line 1438
    const/high16 v1, 0x10000000

    .line 1437
    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getRcsMessageStatusText(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const v8, 0x7f070036

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1147
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListItem;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1148
    const-string/jumbo v0, ""

    .line 1149
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v2

    cmp-long v0, v2, v10

    if-nez v0, :cond_0

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/android/mms/ui/MessageItem;->setDate(J)V

    .line 1153
    :cond_0
    const v0, 0x7f070133

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    .line 1154
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1153
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MessageItem;->setTimestamp(Ljava/lang/String;)V

    .line 1157
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1194
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    :cond_2
    :goto_0
    return-object v0

    .line 1159
    :sswitch_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    if-eq v0, v7, :cond_3

    .line 1160
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1161
    :cond_3
    invoke-static {}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getInstance()Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;

    move-result-object v0

    .line 1162
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1161
    invoke-virtual {v0, v2}, Lcom/suntek/rcs/ui/common/mms/RcsFileTransferCache;->getFileTransferPercent(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 1163
    if-nez v0, :cond_4

    .line 1164
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1166
    :cond_4
    new-array v2, v7, [Ljava/lang/Object;

    .line 1167
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    .line 1166
    const v0, 0x7f07003d

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1169
    :cond_5
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1173
    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    const-string/jumbo v1, "  "

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1177
    :sswitch_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v0

    if-nez v0, :cond_6

    .line 1178
    const v0, 0x7f070034

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1180
    :cond_6
    const v0, 0x7f07003a

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1184
    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1185
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getTimestamp()Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1188
    :sswitch_4
    const v0, 0x7f070037

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getRcsMsgState()I

    move-result v2

    const/16 v3, -0x80

    if-eq v2, v3, :cond_2

    .line 1191
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->burnMessageAtLocal(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 1157
    :sswitch_data_0
    .sparse-switch
        -0x80 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getStringOfNotificationBody(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 566
    if-eqz p1, :cond_0

    .line 567
    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 614
    :cond_0
    :goto_0
    return-object p1

    .line 569
    :cond_1
    const-string/jumbo v0, "setchairman"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070020

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 572
    :cond_2
    const-string/jumbo v0, "join"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070021

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 575
    :cond_3
    const-string/jumbo v0, "setsubject"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 576
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070022

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 578
    :cond_4
    const-string/jumbo v0, "remark"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 579
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 581
    const v0, 0x7f07002a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 583
    :cond_5
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070023

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 585
    :cond_6
    const-string/jumbo v0, "create"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 586
    const v0, 0x7f07001e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 587
    :cond_7
    const-string/jumbo v0, "alias"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 588
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 589
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 590
    new-array v1, v5, [Ljava/lang/Object;

    aget-object v2, v0, v3

    aput-object v2, v1, v4

    aget-object v0, v0, v5

    aput-object v0, v1, v3

    const v0, 0x7f070024

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 592
    :cond_8
    const-string/jumbo v0, "booted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 593
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 594
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070025

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 595
    :cond_9
    const-string/jumbo v0, "quit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 596
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const v0, 0x7f070026

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 598
    :cond_a
    const-string/jumbo v0, "disband"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 599
    const v0, 0x7f070027

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 600
    :cond_b
    const-string/jumbo v0, "setpolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 601
    const v0, 0x7f070028

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 602
    :cond_c
    const-string/jumbo v0, "gone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 603
    const v0, 0x7f070029

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 604
    :cond_d
    const-string/jumbo v0, "accept"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 605
    const v0, 0x7f07001f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 606
    :cond_e
    const-string/jumbo v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 607
    const v0, 0x7f0700ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 608
    :cond_f
    const-string/jumbo v0, "groupfull"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 609
    const v0, 0x7f0700f3

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 610
    :cond_10
    const-string/jumbo v0, "inviteExpired"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public static getTextFileIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    const/high16 v2, 0x10000000

    .line 1454
    if-eqz p1, :cond_0

    .line 1455
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1456
    const-string/jumbo v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1457
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1458
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1459
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1460
    return-object v0

    .line 1462
    :cond_0
    const-string/jumbo v0, "text/plain"

    invoke-static {v0, p0, v2}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getVcardNumberType(Lcom/suntek/rcs/ui/common/PropertyNode;)I
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x7

    .line 1653
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1655
    :cond_0
    return v1

    .line 1657
    :cond_1
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1658
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "FAX"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1659
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1658
    if-eqz v0, :cond_2

    .line 1660
    const/4 v0, 0x5

    return v0

    .line 1661
    :cond_2
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "FAX"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1662
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "WORK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1661
    if-eqz v0, :cond_3

    .line 1663
    return v4

    .line 1664
    :cond_3
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "PREF"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1665
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "WORK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1664
    if-eqz v0, :cond_4

    .line 1666
    const/16 v0, 0xa

    return v0

    .line 1667
    :cond_4
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "CELL"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1668
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "WORK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1667
    if-eqz v0, :cond_5

    .line 1669
    const/16 v0, 0x11

    return v0

    .line 1670
    :cond_5
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "WORK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1671
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "PAGER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1670
    if-eqz v0, :cond_6

    .line 1672
    const/16 v0, 0x12

    return v0

    .line 1674
    :cond_6
    return v2

    .line 1677
    :cond_7
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "CELL"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1678
    return v3

    .line 1679
    :cond_8
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1680
    const/4 v0, 0x1

    return v0

    .line 1681
    :cond_9
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "WORK"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1682
    const/4 v0, 0x3

    return v0

    .line 1683
    :cond_a
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "PAGER"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1684
    const/4 v0, 0x6

    return v0

    .line 1685
    :cond_b
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "VOICE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1686
    return v2

    .line 1687
    :cond_c
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "CAR"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1688
    const/16 v0, 0x9

    return v0

    .line 1689
    :cond_d
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "ISDN"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1690
    const/16 v0, 0xb

    return v0

    .line 1691
    :cond_e
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "PREF"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1692
    return v2

    .line 1693
    :cond_f
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "FAX"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1694
    return v4

    .line 1695
    :cond_10
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "TLX"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1696
    const/16 v0, 0xf

    return v0

    .line 1697
    :cond_11
    iget-object v0, p0, Lcom/suntek/rcs/ui/common/PropertyNode;->paramMap_TYPE:Ljava/util/Set;

    const-string/jumbo v1, "MSG"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1698
    const/16 v0, 0x14

    return v0

    .line 1700
    :cond_12
    return v2
.end method

.method private static getVideoFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1392
    const-string/jumbo v0, "video/*"

    invoke-static {v0, p0, v2}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 1393
    const-string/jumbo v1, "oneshot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1394
    const-string/jumbo v1, "configchange"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1395
    return-object v0
.end method

.method private static getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 1106
    const/4 v0, 0x3

    .line 1105
    invoke-static {p1, v0}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1107
    const/high16 v1, 0x43160000    # 150.0f

    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 1109
    const/4 v2, 0x2

    .line 1108
    invoke-static {v0, v1, v1, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1110
    return-object v0
.end method

.method public static getWordFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1446
    const-string/jumbo v0, "application/msword"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/android/mms/rcs/RcsUtils;->getCommonIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static initExceptionHandler()V
    .locals 1

    .prologue
    .line 934
    sget-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 935
    return-void

    .line 937
    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 938
    new-instance v0, Lcom/android/mms/rcs/RcsUtils$1;

    invoke-direct {v0}, Lcom/android/mms/rcs/RcsUtils$1;-><init>()V

    sput-object v0, Lcom/android/mms/rcs/RcsUtils;->exceptionHandler:Landroid/os/Handler;

    .line 960
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 961
    return-void
.end method

.method public static isCloudFileDownLoadOk(Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;
        }
    .end annotation

    .prologue
    .line 1543
    if-nez p0, :cond_0

    .line 1544
    const/4 v0, 0x0

    return v0

    .line 1546
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getInstance()Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/suntek/mway/rcs/client/api/cloudfile/CloudFileApi;->getLocalRootPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RcsUtils.isCloudFileDownLoadOk filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 1548
    invoke-virtual {p0}, Lcom/suntek/mway/rcs/client/aidl/plugin/entity/cloudfile/CloudFileMessage;->getFileSize()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFileDownload(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isDeletePrefixSpecailNumberAvailable(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1216
    const v2, 0x7f090017

    .line 1215
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1217
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->getInstance()Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;

    move-result-object v2

    .line 1220
    if-nez v1, :cond_1

    .line 1221
    :try_start_0
    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->disableSsn()Z

    .line 1238
    :cond_0
    :goto_0
    return v1

    .line 1223
    :cond_1
    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->enableSsn()Z

    .line 1224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->getSsnList()Ljava/util/List;

    move-result-object v3

    .line 1226
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1227
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1228
    const v4, 0x7f06001c

    .line 1227
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1229
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 1230
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->addSsn(Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1235
    :catch_0
    move-exception v0

    .line 1236
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1233
    :catch_1
    move-exception v0

    .line 1234
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isFileDownBeginButNotEnd(Ljava/lang/String;J)Z
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 1562
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1563
    return v0

    .line 1565
    :cond_0
    cmp-long v1, p1, v4

    if-nez v1, :cond_1

    .line 1566
    return v0

    .line 1569
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1570
    if-eqz v1, :cond_2

    .line 1571
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_2

    .line 1572
    const/4 v0, 0x1

    .line 1575
    :cond_2
    return v0
.end method

.method public static isFileDownLoadoK(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4

    .prologue
    .line 1552
    if-nez p0, :cond_0

    .line 1553
    const/4 v0, 0x0

    return v0

    .line 1555
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 1556
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getRcsMsgFileSize()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsChatMessageUtils;->isFileDownload(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static isFireWallInstalled(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 829
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 830
    const-string/jumbo v2, "com.android.firewall"

    const/16 v3, 0x8

    .line 829
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 831
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 834
    :cond_0
    :goto_0
    return v0

    .line 832
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isMyAccount(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1976
    if-nez p0, :cond_0

    .line 1977
    const/4 v0, 0x0

    return v0

    .line 1979
    :cond_0
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->getAccount()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+86"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1980
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 492
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 493
    const/16 v2, 0x8

    .line 492
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 494
    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 497
    :cond_0
    :goto_0
    return v0

    .line 495
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isRcsAttachmentEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 1971
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isRcsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1972
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    .line 1971
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRcsMessage(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1865
    if-lez p0, :cond_1

    const/4 v2, 0x4

    if-ge p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1866
    :cond_1
    const/4 v2, 0x5

    if-eq p0, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static isRcsOnline()Z
    .locals 1

    .prologue
    .line 1857
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->isOnline()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    .line 1860
    const/4 v0, 0x0

    return v0
.end method

.method public static onShowConferenceCallStartScreen(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->onShowConferenceCallStartScreen(Landroid/content/Context;Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method public static onShowConferenceCallStartScreen(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.ADDPARTICIPANT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 507
    const-string/jumbo v1, "confernece_number_key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    :cond_0
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 510
    return-void
.end method

.method public static queryRcsMsgDownLoadState(Landroid/content/Context;J)I
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 346
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 347
    return v8

    .line 351
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 352
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 353
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "rcs_is_download"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 354
    const-string/jumbo v4, "_id = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 355
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 356
    const/4 v6, 0x0

    move-object v0, p0

    .line 352
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 357
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 363
    if-eqz v1, :cond_1

    .line 364
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 358
    :cond_1
    return v0

    .line 363
    :cond_2
    if-eqz v1, :cond_3

    .line 364
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 367
    :cond_3
    :goto_0
    return v8

    .line 360
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 361
    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    if-eqz v1, :cond_3

    .line 364
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 362
    :catchall_0
    move-exception v0

    .line 363
    :goto_2
    if-eqz v7, :cond_4

    .line 364
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_2

    .line 360
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static readMapXml(Ljava/lang/String;)Lcom/suntek/rcs/ui/common/mms/GeoLocation;
    .locals 4

    .prologue
    .line 292
    const/4 v1, 0x0

    .line 294
    :try_start_0
    new-instance v0, Lcom/suntek/rcs/ui/common/mms/GeoLocationParser;

    new-instance v2, Ljava/io/FileInputStream;

    .line 295
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Lcom/suntek/rcs/ui/common/mms/GeoLocationParser;-><init>(Ljava/io/InputStream;)V

    .line 296
    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/mms/GeoLocationParser;->getGeoLocation()Lcom/suntek/rcs/ui/common/mms/GeoLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 300
    :goto_0
    return-object v0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static setThumbnailForMessageItem(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/data/WorkingMessage;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1060
    invoke-virtual {p2}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v1

    .line 1062
    packed-switch v1, :pswitch_data_0

    .line 1100
    :goto_0
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1101
    return-void

    .line 1064
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 1065
    if-eqz v0, :cond_0

    .line 1066
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1065
    if-eqz v1, :cond_0

    .line 1066
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1065
    if-eqz v1, :cond_0

    .line 1067
    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :cond_0
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1073
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/mms/data/WorkingMessage;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getVideoThumbnail(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1078
    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1079
    const v1, 0x7f0200b1

    .line 1078
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1083
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1084
    const v1, 0x7f0200f7

    .line 1083
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1088
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1092
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1093
    const v1, 0x7f0200f1

    .line 1092
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1062
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static setThumbnailForMessageItem(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/ui/MessageItem;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 985
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 986
    const v1, 0x7f0200ea

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 987
    invoke-static {}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->getInstance()Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;

    move-result-object v1

    aget-object v0, v0, v5

    invoke-virtual {v1, p1, v0, v3}, Lcom/suntek/rcs/ui/common/RcsEmojiStoreUtil;->loadImageAsynById(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 989
    return-void

    .line 992
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1051
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsMsgType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 1052
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1056
    :goto_1
    return-void

    .line 994
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->formatFilePathIfExisted(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 995
    invoke-virtual {p2, v0}, Lcom/android/mms/ui/MessageItem;->setRcsThumbPath(Ljava/lang/String;)V

    .line 996
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1000
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsThumbPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1004
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageItem;->getRcsPath()Ljava/lang/String;

    move-result-object v1

    .line 1005
    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->rcsVcardContactList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1007
    if-eqz v2, :cond_3

    .line 1008
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 1009
    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils;->openRcsVcardDetail(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1011
    if-eqz v1, :cond_3

    .line 1012
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/suntek/rcs/ui/common/PropertyNode;

    .line 1013
    const-string/jumbo v3, "PHOTO"

    iget-object v4, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1014
    iget-object v3, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    if-eqz v3, :cond_5

    .line 1015
    iget-object v0, v0, Lcom/suntek/rcs/ui/common/PropertyNode;->propValue_bytes:[B

    .line 1017
    array-length v1, v0

    .line 1016
    invoke-static {v0, v5, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1018
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->decodeInSampleSizeBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, v1

    :goto_3
    move-object v1, v0

    goto :goto_2

    .line 1024
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1025
    const v1, 0x7f0200f0

    .line 1024
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1029
    :cond_3
    :goto_4
    if-nez v0, :cond_1

    .line 1030
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1031
    const v1, 0x7f0200b1

    .line 1030
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1037
    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f7

    .line 1036
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1042
    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f6

    .line 1041
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1047
    :pswitch_6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f1

    .line 1046
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 1054
    :cond_4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_4

    .line 992
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static showFirewallMenu(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 795
    invoke-virtual {p1, v7}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 796
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 797
    :cond_0
    return v7

    .line 799
    :cond_1
    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    const-string/jumbo v1, "-"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 803
    const/16 v2, 0xb

    if-le v1, v2, :cond_7

    .line 804
    add-int/lit8 v2, v1, -0xb

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 806
    :goto_0
    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/mms/rcs/RcsUtils;->BLACKLIST_CONTENT_URI:Landroid/net/Uri;

    .line 808
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 809
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    .line 810
    const-string/jumbo v5, "_id"

    aput-object v5, v2, v7

    const-string/jumbo v5, "number"

    aput-object v5, v2, v8

    const-string/jumbo v5, "person_id"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const-string/jumbo v5, "name"

    const/4 v6, 0x3

    aput-object v5, v2, v6

    .line 811
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "number LIKE \'%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 809
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_4

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lez v1, :cond_4

    .line 818
    if-eqz v0, :cond_2

    .line 819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 815
    :cond_2
    return v7

    .line 807
    :cond_3
    sget-object v1, Lcom/android/mms/rcs/RcsUtils;->WHITELIST_CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    .line 818
    :cond_4
    if-eqz v0, :cond_5

    .line 819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 823
    :cond_5
    return v8

    .line 817
    :catchall_0
    move-exception v1

    .line 818
    if-eqz v0, :cond_6

    .line 819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 817
    :cond_6
    throw v1

    :cond_7
    move-object v3, v0

    goto :goto_0
.end method

.method public static startEmojiStore(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    .line 1202
    const-string/jumbo v0, "com.temobi.dm.emoji.store"

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1204
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.temobi.dm.emoji.store"

    .line 1205
    const-string/jumbo v3, "com.temobi.dm.emoji.store.activity.EmojiActivity"

    .line 1204
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1207
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1212
    :goto_0
    return-void

    .line 1209
    :cond_0
    const v0, 0x7f07002d

    .line 1210
    const/4 v1, 0x0

    .line 1209
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static startGroupChatDetailActivity(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.suntek.mway.rcs.nativeui.ACTION_LUNCH_RCS_GROUPCHATDETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v1, "groupId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 476
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 477
    return-void
.end method

.method public static startGroupChatDetailActivity(Landroid/content/Context;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V
    .locals 2

    .prologue
    .line 464
    if-eqz p1, :cond_0

    .line 465
    invoke-virtual {p1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v0

    .line 466
    invoke-static {p0, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->startGroupChatDetailActivity(Landroid/content/Context;J)V

    .line 468
    :cond_0
    return-void
.end method

.method private static startNotificationListActivity(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1532
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.suntek.mway.rcs.nativeui.ACTION_LUNCHER_RCS_NOTIFICATION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1533
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1534
    return-void
.end method

.method private static startPublicAccountActivity(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1537
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.suntek.mway.rcs.publicaccount.ACTION_LUNCHER_RCS_CONVERSATION_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1538
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1539
    return-void
.end method

.method public static startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 481
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 483
    const v1, 0x7f0700b9

    .line 484
    const/4 v2, 0x1

    .line 483
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 485
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static toast(I)V
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 965
    const/4 v1, 0x1

    .line 964
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 966
    return-void
.end method

.method public static topConversion(Landroid/content/Context;J)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 422
    const-string/jumbo v1, "rcs_top"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string/jumbo v1, "rcs_top_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 424
    const-string/jumbo v1, "content://mms-sms/update-top"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 425
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 426
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    .line 427
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 426
    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 429
    return-void
.end method

.method public static updateFaildMessageType(Landroid/content/Context;J)V
    .locals 7

    .prologue
    .line 1954
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1955
    return-void

    .line 1958
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1959
    const-string/jumbo v1, "type"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1960
    const-string/jumbo v1, "read"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1961
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1962
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 1963
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1962
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :goto_0
    return-void

    .line 1965
    :catch_0
    move-exception v0

    .line 1966
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateFileDownloadState(Landroid/content/Context;J)V
    .locals 13

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 314
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    const/4 v7, -0x1

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 322
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 323
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "rcs_is_download"

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string/jumbo v0, "type"

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 324
    const-string/jumbo v4, "_id = ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 325
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    .line 326
    const/4 v6, 0x0

    move-object v0, p0

    .line 322
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 327
    if-eqz v2, :cond_3

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 328
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 329
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    move v0, v9

    .line 334
    :goto_0
    if-eqz v2, :cond_1

    .line 335
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_1
    :goto_1
    if-ne v0, v10, :cond_2

    .line 339
    if-eq v1, v11, :cond_2

    .line 340
    invoke-static {p0, p1, p2, v11}, Lcom/android/mms/rcs/RcsUtils;->updateFileDownloadState(Landroid/content/Context;JI)V

    .line 343
    :cond_2
    return-void

    :cond_3
    move v0, v9

    move v1, v7

    .line 327
    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    move v1, v7

    move-object v2, v8

    .line 332
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 334
    if-eqz v2, :cond_4

    .line 335
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v9

    goto :goto_1

    .line 333
    :catchall_0
    move-exception v0

    .line 334
    :goto_3
    if-eqz v8, :cond_5

    .line 335
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 333
    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v2

    goto :goto_3

    .line 331
    :catch_1
    move-exception v0

    move v1, v7

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    move v0, v9

    move v1, v7

    goto :goto_0
.end method

.method public static updateFileDownloadState(Landroid/content/Context;JI)V
    .locals 7

    .prologue
    .line 443
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 444
    const-string/jumbo v1, "rcs_is_download"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 446
    const-string/jumbo v3, "_id = ?"

    .line 447
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    .line 448
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 445
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 450
    return-void
.end method
