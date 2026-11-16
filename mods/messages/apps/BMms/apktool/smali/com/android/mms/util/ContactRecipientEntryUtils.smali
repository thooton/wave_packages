.class public Lcom/android/mms/util/ContactRecipientEntryUtils;
.super Ljava/lang/Object;
.source "ContactRecipientEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ContactRecipientEntryUtils$ContactsQuery;,
        Lcom/android/mms/util/ContactRecipientEntryUtils$GroupQuery;
    }
.end annotation


# static fields
.field private static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_PROJECTION:[Ljava/lang/String;

.field public static final NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

.field private static sPermissions:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->sPermissions:Ljava/util/Hashtable;

    .line 514
    const-string/jumbo v0, "\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 513
    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    .line 525
    new-array v0, v5, [Ljava/lang/String;

    .line 526
    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v2

    .line 527
    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    .line 528
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    .line 525
    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    .line 531
    new-array v0, v5, [Ljava/lang/String;

    .line 532
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 533
    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    .line 534
    const-string/jumbo v1, "summ_phones"

    aput-object v1, v0, v4

    .line 531
    sput-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->GROUP_PROJECTION:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEmailOrNumberSelection(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    const-string/jumbo v1, "mimetype=\'vnd.android.cursor.item/email_v2\'"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    const-string/jumbo v2, " OR "

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 378
    const-string/jumbo v2, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 374
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    if-nez p0, :cond_0

    .line 382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string/jumbo v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v1, " IN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-static {v0, p0, p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->queryContactsIDByFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)V

    .line 389
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createGroupMemberSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    const-string/jumbo v1, "raw_contact_id IN ( SELECT DISTINCT raw_contact_id FROM view_data WHERE mimetype=? AND data1=?)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createGroupMemberSelectionArgs(J)[Ljava/lang/String;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private static createGroupRecipientEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 14

    .prologue
    .line 268
    const/4 v0, 0x2

    .line 270
    const/4 v8, 0x0

    const/4 v12, 0x1

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v13, p7

    .line 268
    invoke-static/range {v0 .. v13}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntryForGroup(ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method private static createGroupSelection(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    const-string/jumbo v1, "account_type NOT NULL AND account_name NOT NULL AND deleted!=1 AND title like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 365
    const-string/jumbo v2, "%\'"

    .line 364
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string/jumbo v1, " AND (summ_phones<>0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createRecipientEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13

    .prologue
    .line 234
    if-eqz p11, :cond_0

    .line 236
    const/4 v7, 0x0

    .line 237
    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v12, p7

    .line 235
    invoke-static/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0

    .line 240
    :cond_0
    const/4 v7, 0x0

    .line 241
    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v12, p7

    .line 239
    invoke-static/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;->constructSecondLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public static createRecipientEntryByContact(Lcom/android/mms/data/Contact;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getContactMethodId()J

    move-result-wide v6

    .line 206
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getContactMethodType()I

    move-result v4

    .line 213
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getLabel()Ljava/lang/String;

    move-result-object v5

    .line 214
    invoke-virtual {p0}, Lcom/android/mms/data/Contact;->getLookup()Ljava/lang/String;

    move-result-object v8

    .line 220
    const/16 v2, 0x28

    move-wide v9, v6

    move v12, p1

    .line 219
    invoke-static/range {v1 .. v12}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createRecipientEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    return-object v1
.end method

.method public static createRecipientEntryForGroupQuery(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 252
    const-string/jumbo v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 251
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "summ_phones"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 253
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 256
    const/4 v5, 0x0

    aput-object v1, v3, v5

    const v1, 0x7f070358

    .line 255
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-wide/16 v8, -0x1

    .line 259
    const/16 v1, 0x28

    .line 260
    const/4 v3, -0x1

    const-wide/16 v5, -0x3ea

    move-object v7, v4

    move-object v10, v4

    move v11, p2

    .line 258
    invoke-static/range {v0 .. v11}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createGroupRecipientEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public static createRecipientEntryForPhoneQuery(Landroid/database/Cursor;Z)Lcom/android/ex/chips/RecipientEntry;
    .locals 13

    .prologue
    .line 183
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 184
    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 186
    const/4 v2, 0x3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 188
    const/4 v2, 0x5

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 189
    const/4 v2, 0x6

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 195
    const/16 v2, 0x28

    move-wide v9, v6

    move v12, p1

    .line 194
    invoke-static/range {v1 .. v12}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createRecipientEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/String;JLjava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    return-object v1
.end method

.method private static filterContacts(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 351
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 352
    sget-object v2, Lcom/android/mms/util/ContactRecipientEntryUtils$ContactsQuery;->PROJECTION:[Ljava/lang/String;

    .line 353
    invoke-static {p1, p0}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createEmailOrNumberSelection(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "sort_key"

    const/4 v4, 0x0

    move-object v0, p0

    .line 352
    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/ContactRecipientEntryUtils;->performSynchronousQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static filterDestination(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 278
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactRecipientEntryUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 279
    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/ContactRecipientEntryUtils;->performSynchronousQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 286
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->filterContacts(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static filterGroupDestination(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 294
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-static {p0, v0}, Lcom/android/mms/util/ContactRecipientEntryUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    .line 295
    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/ContactRecipientEntryUtils;->performSynchronousQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 297
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->filterGroups(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static filterGroups(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 357
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    .line 358
    sget-object v2, Lcom/android/mms/util/ContactRecipientEntryUtils$GroupQuery;->PROJECTION:[Ljava/lang/String;

    .line 359
    invoke-static {p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createGroupSelection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    .line 358
    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/ContactRecipientEntryUtils;->performSynchronousQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static formatDestination(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/ContactRecipientEntryUtils;->formatForDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatForDisplay(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 456
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    const-string/jumbo v0, "\\D"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 458
    :cond_0
    return-object p0

    .line 460
    :cond_1
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 461
    invoke-static {}, Lcom/android/mms/util/ContactRecipientEntryUtils;->getLocaleCountry()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-virtual {v1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v2

    .line 464
    :try_start_0
    invoke-virtual {v1, p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 466
    if-lez v2, :cond_2

    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 467
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 468
    :goto_0
    invoke-virtual {v1, v3, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 467
    :cond_2
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    return-object p0
.end method

.method public static getDisplayNameForContactList(Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 433
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, -0x3e9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 434
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 435
    invoke-static {p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->formatDestination(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f070350

    .line 434
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 436
    :cond_0
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 437
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 439
    :cond_1
    invoke-static {p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->formatDestination(Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getGroupId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 564
    const-wide/16 v6, -0x1

    .line 566
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 567
    const-string/jumbo v0, "account_type NOT NULL AND account_name NOT NULL AND deleted!=1 AND title=\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 569
    const-string/jumbo v1, "\'"

    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    const-string/jumbo v0, " AND (summ_phones<>0)"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    .line 573
    sget-object v2, Lcom/android/mms/util/ContactRecipientEntryUtils;->GROUP_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 572
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 574
    if-eqz v2, :cond_1

    move-wide v0, v6

    .line 575
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    const-string/jumbo v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 578
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 580
    :goto_1
    return-wide v0

    :cond_1
    move-wide v0, v6

    goto :goto_1
.end method

.method public static getGroupsMembers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 539
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-static {p0, p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->getGroupId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v8

    .line 542
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 543
    return-object v5

    .line 546
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 547
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/ContactRecipientEntryUtils;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    .line 548
    invoke-static {}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createGroupMemberSelection()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v9}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createGroupMemberSelectionArgs(J)[Ljava/lang/String;

    move-result-object v4

    .line 546
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 549
    if-eqz v0, :cond_2

    .line 550
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 552
    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 551
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 553
    const-string/jumbo v2, "data1"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 555
    const/4 v3, 0x1

    .line 554
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/RecipientEntry;->constructGeneratedEntry(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 556
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 558
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 560
    :cond_2
    return-object v6
.end method

.method private static getLocaleCountry()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_3

    .line 313
    sget-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->sPermissions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->sPermissions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 316
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 317
    sget-object v3, Lcom/android/mms/util/ContactRecipientEntryUtils;->sPermissions:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    :cond_1
    sget-object v0, Lcom/android/mms/util/ContactRecipientEntryUtils;->sPermissions:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 321
    :cond_3
    return v1
.end method

.method public static isSendToDestinationContact(Lcom/android/ex/chips/RecipientEntry;)Z
    .locals 4

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    const-wide/16 v2, -0x3e9

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static performSynchronousQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 416
    if-nez p1, :cond_0

    .line 417
    return-object v0

    .line 419
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static queryContactsIDByFilter(Ljava/lang/StringBuilder;Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 395
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 396
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 398
    const-string/jumbo v1, "( "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 401
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 403
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 406
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 407
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    const-string/jumbo v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    return-void
.end method
