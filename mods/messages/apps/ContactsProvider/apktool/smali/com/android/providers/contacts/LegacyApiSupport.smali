.class public Lcom/android/providers/contacts/LegacyApiSupport;
.super Ljava/lang/Object;
.source "LegacyApiSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;
    }
.end annotation


# static fields
.field private static CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

.field private static final CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

.field private static final EXTENSION_MIME_TYPES:[Ljava/lang/String;

.field private static final GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

.field private static final ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

.field private static final PHONE_MIME_TYPES:[Ljava/lang/String;

.field private static final PHOTO_MIME_TYPES:[Ljava/lang/String;

.field private static final sContactMethodProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExtensionProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupMembershipProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGroupProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOrganizationProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPeopleProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhoneProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPhotoProjectionMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mContext:Landroid/content/Context;

.field private final mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultAccountKnown:Z

.field private final mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

.field private final mMimetypeEmail:J

.field private final mMimetypeIm:J

.field private final mMimetypePostal:J

.field private final mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValues2:Landroid/content/ContentValues;

.field private final mValues3:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 76
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 176
    const-string/jumbo v0, "(CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN (CASE WHEN data.data5=-1 THEN \'custom:\'||data.data6 ELSE \'pre:\'||data.data5 END) ELSE data.data1 END)"

    .line 175
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 200
    new-array v0, v4, [Ljava/lang/String;

    .line 201
    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    aput-object v1, v0, v2

    .line 200
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    .line 204
    new-array v0, v6, [Ljava/lang/String;

    .line 205
    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "vnd.android.cursor.item/im"

    aput-object v1, v0, v4

    .line 207
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v5

    .line 204
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    .line 210
    new-array v0, v4, [Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    .line 210
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    .line 214
    new-array v0, v4, [Ljava/lang/String;

    .line 215
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    aput-object v1, v0, v2

    .line 214
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    .line 218
    new-array v0, v4, [Ljava/lang/String;

    .line 219
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    aput-object v1, v0, v2

    .line 218
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    .line 222
    new-array v0, v4, [Ljava/lang/String;

    .line 223
    const-string/jumbo v1, "vnd.android.cursor.item/contact_extensions"

    aput-object v1, v0, v2

    .line 222
    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    .line 265
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    .line 267
    const-string/jumbo v1, "contacts"

    .line 268
    const-string/jumbo v2, "extensions"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 269
    const-string/jumbo v2, "extensions/#"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    const-string/jumbo v2, "groups"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 271
    const-string/jumbo v2, "groups/#"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 272
    const-string/jumbo v2, "groups/name/*/members"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const-string/jumbo v2, "groups/system_id/*/members"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    const-string/jumbo v2, "groupmembership"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 279
    const-string/jumbo v2, "groupmembership/#"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    const-string/jumbo v2, "people"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    const-string/jumbo v2, "people/filter/*"

    const/16 v3, 0x1d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 289
    const-string/jumbo v2, "people/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    const-string/jumbo v2, "people/#/extensions"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 291
    const-string/jumbo v2, "people/#/extensions/#"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 292
    const-string/jumbo v2, "people/#/phones"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    const-string/jumbo v2, "people/#/phones/#"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    const-string/jumbo v2, "people/#/photo"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    const-string/jumbo v2, "people/#/contact_methods"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    const-string/jumbo v2, "people/#/contact_methods/#"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 302
    const-string/jumbo v2, "people/#/organizations"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    const-string/jumbo v2, "people/#/organizations/#"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 304
    const-string/jumbo v2, "people/#/groupmembership"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    const-string/jumbo v2, "people/#/groupmembership/#"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 308
    const-string/jumbo v2, "people/#/update_contact_time"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    const-string/jumbo v2, "deleted_people"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    const-string/jumbo v2, "deleted_groups"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 312
    const-string/jumbo v2, "phones"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    const-string/jumbo v2, "phones/filter/*"

    const/16 v3, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    const-string/jumbo v2, "phones/#"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 319
    const-string/jumbo v2, "photos"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const-string/jumbo v2, "photos/#"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 321
    const-string/jumbo v2, "contact_methods"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    const-string/jumbo v2, "contact_methods/email"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 324
    const-string/jumbo v2, "contact_methods/#"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 327
    const-string/jumbo v2, "organizations"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 328
    const-string/jumbo v2, "organizations/#"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 330
    const-string/jumbo v2, "search_suggest_query"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 332
    const-string/jumbo v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 334
    const-string/jumbo v2, "search_suggest_shortcut/*"

    .line 335
    const/16 v3, 0x21

    .line 334
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 336
    const-string/jumbo v2, "settings"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 338
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 339
    const-string/jumbo v1, "name"

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string/jumbo v1, "display_name"

    const-string/jumbo v2, "display_name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string/jumbo v1, "phonetic_name"

    const-string/jumbo v2, "phonetic_name"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string/jumbo v1, "notes"

    const-string/jumbo v2, "notes"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    const-string/jumbo v1, "times_contacted"

    const-string/jumbo v2, "times_contacted"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string/jumbo v1, "last_time_contacted"

    const-string/jumbo v2, "last_time_contacted"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string/jumbo v1, "custom_ringtone"

    const-string/jumbo v2, "custom_ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string/jumbo v1, "send_to_voicemail"

    const-string/jumbo v2, "send_to_voicemail"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string/jumbo v1, "starred"

    const-string/jumbo v2, "starred"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string/jumbo v1, "primary_organization"

    const-string/jumbo v2, "primary_organization"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v1, "primary_email"

    const-string/jumbo v2, "primary_email"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string/jumbo v1, "primary_phone"

    const-string/jumbo v2, "primary_phone"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    .line 353
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "_id"

    const-string/jumbo v3, "_id"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "number"

    const-string/jumbo v3, "number"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "label"

    const-string/jumbo v3, "label"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "number_key"

    const-string/jumbo v3, "number_key"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "im_protocol"

    const-string/jumbo v3, "(CASE WHEN protocol=-1 THEN \'custom:\'||custom_protocol ELSE \'pre:\'||protocol END) AS im_protocol"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "im_handle"

    const-string/jumbo v3, "im_handle"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "im_account"

    const-string/jumbo v3, "im_account"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "mode"

    const-string/jumbo v3, "mode"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "status"

    .line 363
    const-string/jumbo v3, "(SELECT status FROM status_updates JOIN data   ON(status_update_data_id=data._id) WHERE data.raw_contact_id=people._id ORDER BY status_ts DESC  LIMIT 1) AS status"

    .line 362
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    .line 373
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "_id"

    .line 374
    const-string/jumbo v3, "_id"

    .line 373
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "person"

    .line 376
    const-string/jumbo v3, "person"

    .line 375
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "isprimary"

    .line 378
    const-string/jumbo v3, "isprimary"

    .line 377
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "company"

    .line 380
    const-string/jumbo v3, "company"

    .line 379
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "type"

    .line 382
    const-string/jumbo v3, "type"

    .line 381
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "label"

    .line 384
    const-string/jumbo v3, "label"

    .line 383
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "title"

    .line 386
    const-string/jumbo v3, "title"

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    .line 389
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "_id"

    const-string/jumbo v3, "_id"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "person"

    const-string/jumbo v3, "person"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "kind"

    const-string/jumbo v3, "kind"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "isprimary"

    const-string/jumbo v3, "isprimary"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "type"

    const-string/jumbo v3, "type"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "data"

    const-string/jumbo v3, "data"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "label"

    const-string/jumbo v3, "label"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v2, "aux_data"

    const-string/jumbo v3, "aux_data"

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    sput-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    .line 399
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    .line 400
    const-string/jumbo v2, "_id"

    .line 399
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "person"

    .line 402
    const-string/jumbo v2, "person"

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "isprimary"

    .line 404
    const-string/jumbo v2, "isprimary"

    .line 403
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "number"

    .line 406
    const-string/jumbo v2, "number"

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "type"

    .line 408
    const-string/jumbo v2, "type"

    .line 407
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "label"

    .line 410
    const-string/jumbo v2, "label"

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "number_key"

    .line 412
    const-string/jumbo v2, "number_key"

    .line 411
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    .line 415
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    .line 416
    const-string/jumbo v2, "_id"

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "person"

    .line 418
    const-string/jumbo v2, "person"

    .line 417
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "name"

    .line 420
    const-string/jumbo v2, "name"

    .line 419
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "value"

    .line 422
    const-string/jumbo v2, "value"

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    .line 425
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    .line 426
    const-string/jumbo v2, "_id"

    .line 425
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "name"

    .line 428
    const-string/jumbo v2, "name"

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "notes"

    .line 430
    const-string/jumbo v2, "notes"

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "system_id"

    .line 432
    const-string/jumbo v2, "system_id"

    .line 431
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    .line 435
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    .line 436
    const-string/jumbo v2, "_id"

    .line 435
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "person"

    .line 438
    const-string/jumbo v2, "person"

    .line 437
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "group_id"

    .line 440
    const-string/jumbo v2, "group_id"

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    .line 442
    const-string/jumbo v1, "group_sync_id"

    .line 443
    const-string/jumbo v2, "group_sync_id"

    .line 441
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    .line 445
    const-string/jumbo v1, "group_sync_account"

    .line 446
    const-string/jumbo v2, "group_sync_account"

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    .line 448
    const-string/jumbo v1, "group_sync_account_type"

    .line 449
    const-string/jumbo v2, "group_sync_account_type"

    .line 447
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    .line 452
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "_id"

    .line 453
    const-string/jumbo v2, "_id"

    .line 452
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "person"

    .line 455
    const-string/jumbo v2, "person"

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "data"

    .line 457
    const-string/jumbo v2, "data"

    .line 456
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "local_version"

    .line 459
    const-string/jumbo v2, "local_version"

    .line 458
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "download_required"

    .line 461
    const-string/jumbo v2, "download_required"

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "exists_on_server"

    .line 463
    const-string/jumbo v2, "exists_on_server"

    .line 462
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "sync_error"

    .line 465
    const-string/jumbo v2, "sync_error"

    .line 464
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 6

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs1:[Ljava/lang/String;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mSelectionArgs2:[Ljava/lang/String;

    .line 477
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 478
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    .line 479
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    .line 490
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    .line 491
    iput-object p3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 492
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 493
    iput-object p4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    .line 495
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    .line 496
    const v4, 0x1040103

    .line 495
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 495
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 499
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    const-string/jumbo v1, "SELECT mimetype_id FROM data WHERE _id=?"

    .line 500
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 506
    const-string/jumbo v1, "SELECT raw_contact_id FROM data WHERE _id=?"

    .line 505
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 510
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    .line 511
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/im"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    .line 512
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    .line 513
    return-void
.end method

.method private appendGroupAccount(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1875
    const-string/jumbo v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1877
    const-string/jumbo v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1883
    :goto_0
    return-void

    .line 1880
    :cond_0
    const-string/jumbo v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private appendRawContactsAccount(Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 1856
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1857
    const-string/jumbo v0, "account_name="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1859
    const-string/jumbo v0, " AND account_type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1865
    :goto_0
    return-void

    .line 1862
    :cond_0
    const-string/jumbo v0, "account_name IS NULL AND account_type IS NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1

    .prologue
    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1869
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendGroupAccount(Ljava/lang/StringBuilder;)V

    .line 1870
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1871
    return-void
.end method

.method private applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V
    .locals 1

    .prologue
    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1851
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->appendRawContactsAccount(Ljava/lang/StringBuilder;)V

    .line 1852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1853
    return-void
.end method

.method private buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1902
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1902
    const-string/jumbo v1, "))"

    .line 1894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "people._id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\' AND data1=(SELECT groups._id FROM groups WHERE system_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1921
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1921
    const-string/jumbo v1, "))"

    .line 1913
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1414
    const-string/jumbo v1, "type"

    .line 1413
    invoke-static {v0, p3, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1415
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1416
    const-string/jumbo v1, "label"

    .line 1415
    invoke-static {v0, p4, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1417
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1418
    const-string/jumbo v1, "aux_data"

    .line 1417
    invoke-static {v0, p5, p1, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1419
    return-void
.end method

.method public static createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "ContactsProviderV1"

    const-string/jumbo v1, "Bootstrapping database legacy support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 525
    invoke-static {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 526
    return-void
.end method

.method public static createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 740
    const-string/jumbo v0, "DROP TABLE IF EXISTS v1_settings;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 741
    const-string/jumbo v0, "CREATE TABLE v1_settings (_id INTEGER PRIMARY KEY,_sync_account TEXT,_sync_account_type TEXT,key STRING NOT NULL,value STRING );"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 748
    return-void
.end method

.method public static createViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 530
    const-string/jumbo v0, "name.data1 AS name, raw_contacts.display_name AS display_name, trim(trim(ifnull(name.data7,\' \')||\' \'||ifnull(name.data8,\' \'))||\' \'||ifnull(name.data9,\' \'))  AS phonetic_name , note.data1 AS notes, accounts.account_name, accounts.account_type, cast(0 as int) AS times_contacted, cast(0 as int) AS last_time_contacted, raw_contacts.custom_ringtone AS custom_ringtone, raw_contacts.send_to_voicemail AS send_to_voicemail, raw_contacts.starred AS starred, organization._id AS primary_organization, email._id AS primary_email, phone._id AS primary_phone, phone.data1 AS number, phone.data2 AS type, phone.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(phone.data1) AS number_key"

    .line 567
    const-string/jumbo v1, "DROP VIEW IF EXISTS view_v1_people;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_v1_people AS SELECT raw_contacts._id AS _id, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, " FROM "

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, "raw_contacts"

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v2, " JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, " WHERE "

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "raw_contacts"

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "."

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "deleted"

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    const-string/jumbo v2, "=0;"

    .line 568
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 575
    const-string/jumbo v1, "DROP VIEW IF EXISTS view_v1_organizations;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 576
    const-string/jumbo v1, "CREATE VIEW view_v1_organizations AS SELECT data._id AS _id, raw_contact_id AS person, is_primary AS isprimary, accounts.account_name, accounts.account_type, data1 AS company, data2 AS type, data3 AS label, data4 AS title FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/organization\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 599
    const-string/jumbo v1, "DROP VIEW IF EXISTS view_v1_contact_methods;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_v1_contact_methods AS SELECT data._id AS _id, data.raw_contact_id AS person, CAST ((CASE WHEN mimetype=\'vnd.android.cursor.item/email_v2\' THEN 1 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/im\' THEN 3 ELSE (CASE WHEN mimetype=\'vnd.android.cursor.item/postal-address_v2\' THEN 2 ELSE NULL END) END) END) AS INTEGER) AS kind, data.is_primary AS isprimary, data.data2 AS type, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 611
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_DATA_SQL:Ljava/lang/String;

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    const-string/jumbo v2, " AS "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    const-string/jumbo v2, "data"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 612
    const-string/jumbo v2, ", "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string/jumbo v2, "data"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string/jumbo v2, "."

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 613
    const-string/jumbo v2, "data3"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    const-string/jumbo v2, " AS "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    const-string/jumbo v2, "label"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 614
    const-string/jumbo v2, ", "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 615
    const-string/jumbo v2, "data.data14"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string/jumbo v2, " AS "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string/jumbo v2, "aux_data"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 616
    const-string/jumbo v2, ", "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    const-string/jumbo v2, " FROM "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    const-string/jumbo v2, "data"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 618
    const-string/jumbo v2, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    const-string/jumbo v2, " WHERE "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    const-string/jumbo v2, "kind"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 619
    const-string/jumbo v2, " IS NOT NULL"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    const-string/jumbo v2, " AND "

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    const-string/jumbo v2, "raw_contacts"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    const-string/jumbo v2, "."

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    const-string/jumbo v2, "deleted"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 620
    const-string/jumbo v2, "=0"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 621
    const-string/jumbo v2, ";"

    .line 600
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 624
    const-string/jumbo v1, "DROP VIEW IF EXISTS view_v1_phones;"

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 625
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CREATE VIEW view_v1_phones AS SELECT DISTINCT data._id AS _id, data.raw_contact_id AS person, data.is_primary AS isprimary, data.data1 AS number, data.data2 AS type, data.data3 AS label, _PHONE_NUMBER_STRIPPED_REVERSED(data.data1) AS number_key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    const-string/jumbo v1, " FROM "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 641
    const-string/jumbo v1, "data"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    const-string/jumbo v1, " JOIN "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 642
    const-string/jumbo v1, "phone_lookup"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    const-string/jumbo v1, " ON ("

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    const-string/jumbo v1, "data"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 643
    const-string/jumbo v1, "._id = "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "phone_lookup"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "."

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, "data_id"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 644
    const-string/jumbo v1, ")"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 645
    const-string/jumbo v1, " JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary)"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, " WHERE "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, "mimetypes.mimetype"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 646
    const-string/jumbo v1, "=\'"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 647
    const-string/jumbo v1, "\'"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, " AND "

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, "raw_contacts"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, "."

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, "deleted"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 648
    const-string/jumbo v1, "=0"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 649
    const-string/jumbo v1, ";"

    .line 625
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_v1_extensions;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 652
    const-string/jumbo v0, "CREATE VIEW view_v1_extensions AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data1 AS name, data2 AS value FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) JOIN accounts ON (raw_contacts.account_id=accounts._id) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/contact_extensions\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 669
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_v1_groups;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 670
    const-string/jumbo v0, "CREATE VIEW view_v1_groups AS SELECT groups._id AS _id, accounts.account_name, accounts.account_type, title AS name, notes AS notes , system_id AS system_id FROM groups JOIN accounts ON (groups.account_id=accounts._id);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 682
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_v1_group_membership;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    const-string/jumbo v0, "CREATE VIEW view_v1_group_membership AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data1 AS group_id, title AS name, notes AS notes, system_id AS system_id, groups.sourceid AS group_sync_id, accounts.account_name AS group_sync_account, accounts.account_type AS group_sync_account_type FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)  JOIN accounts ON (raw_contacts.account_id=accounts._id)LEFT OUTER JOIN packages ON (data.package_id = packages._id) LEFT OUTER JOIN groups   ON (mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\'       AND groups._id = data.data1)  WHERE mimetypes.mimetype=\'vnd.android.cursor.item/group_membership\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 713
    const-string/jumbo v0, "DROP VIEW IF EXISTS view_v1_photos;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 714
    const-string/jumbo v0, "CREATE VIEW view_v1_photos AS SELECT data._id AS _id, data.raw_contact_id AS person, accounts.account_name, accounts.account_type, data.data15 AS data, legacy_photo.data4 AS exists_on_server, legacy_photo.data3 AS download_required, legacy_photo.data2 AS local_version, legacy_photo.data5 AS sync_error FROM data JOIN mimetypes ON (mimetypes._id = data.mimetype_id) JOIN raw_contacts ON (raw_contacts._id = data.raw_contact_id) JOIN accounts ON (raw_contacts.account_id=accounts._id) LEFT OUTER JOIN data name ON (raw_contacts._id = name.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = name.mimetype_id)=\'vnd.android.cursor.item/name\') LEFT OUTER JOIN data organization ON (raw_contacts._id = organization.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = organization.mimetype_id)=\'vnd.android.cursor.item/organization\' AND organization.is_primary) LEFT OUTER JOIN data email ON (raw_contacts._id = email.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = email.mimetype_id)=\'vnd.android.cursor.item/email_v2\' AND email.is_primary) LEFT OUTER JOIN data note ON (raw_contacts._id = note.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = note.mimetype_id)=\'vnd.android.cursor.item/note\') LEFT OUTER JOIN data phone ON (raw_contacts._id = phone.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = phone.mimetype_id)=\'vnd.android.cursor.item/phone_v2\' AND phone.is_primary) LEFT OUTER JOIN data legacy_photo ON (raw_contacts._id = legacy_photo.raw_contact_id AND (SELECT mimetype FROM mimetypes WHERE mimetypes._id = legacy_photo.mimetype_id)=\'vnd.android.cursor.item/photo_v1_extras\' AND data._id = legacy_photo.data1) WHERE mimetypes.mimetype=\'vnd.android.cursor.item/photo\' AND raw_contacts.deleted=0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method private ensureDefaultAccount()V
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getDefaultAccount()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    .line 518
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDefaultAccountKnown:Z

    .line 520
    :cond_0
    return-void
.end method

.method private findFirstDataId(JLjava/lang/String;)J
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1449
    const-wide/16 v6, -0x1

    .line 1450
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    .line 1451
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1452
    const-string/jumbo v5, "mimetype"

    .line 1451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1452
    const-string/jumbo v5, "=\'"

    .line 1451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1452
    const-string/jumbo v5, "\'"

    .line 1451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1450
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1455
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1459
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1461
    return-wide v0

    .line 1458
    :catchall_0
    move-exception v0

    .line 1459
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1458
    throw v0

    :cond_0
    move-wide v0, v6

    goto :goto_0
.end method

.method private findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    .line 1440
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v0

    .line 1441
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1442
    const/4 v0, 0x0

    return-object v0

    .line 1445
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2012
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "kind"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2013
    if-eqz v1, :cond_1

    .line 2015
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2016
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 2017
    packed-switch v0, :pswitch_data_0

    .line 2032
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2035
    :cond_1
    return-object v3

    .line 2019
    :pswitch_0
    :try_start_1
    const-string/jumbo v3, "vnd.android.cursor.item/email"

    goto :goto_0

    .line 2023
    :pswitch_1
    const-string/jumbo v3, "vnd.android.cursor.item/jabber-im"

    goto :goto_0

    .line 2027
    :pswitch_2
    const-string/jumbo v3, "vnd.android.cursor.item/postal-address"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2031
    :catchall_0
    move-exception v0

    .line 2032
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2031
    throw v0

    .line 2017
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1926
    invoke-static {p1}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1927
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1929
    const-string/jumbo v1, "(0)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1947
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1931
    :cond_0
    const-string/jumbo v2, "(SELECT raw_contact_id FROM name_lookup WHERE normalized_name GLOB \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1939
    const-string/jumbo v1, "*\' AND name_type IN (2,3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1943
    const-string/jumbo v1, ",4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    const-string/jumbo v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 3

    .prologue
    .line 822
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 823
    if-nez v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 827
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private insertContactMethod(JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 868
    const-string/jumbo v0, "kind"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 869
    if-nez v0, :cond_0

    .line 870
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Required value: kind"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 873
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 875
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 876
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 877
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertExtension(JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 883
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 884
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/contact_extensions"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 888
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 889
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertGroup(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 895
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_type"

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 901
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertGroupMembership(JJ)J
    .locals 3

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 907
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 909
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 911
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 912
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertOrganization(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 850
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    .line 851
    const-string/jumbo v2, "person"

    .line 850
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 855
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private insertPeople(Landroid/content/ContentValues;)J
    .locals 5

    .prologue
    .line 831
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 833
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 834
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 836
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v3, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 838
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string/jumbo v3, "raw_contact_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 842
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 845
    :cond_1
    return-wide v0
.end method

.method private insertPhone(JLandroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 859
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 860
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 862
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 864
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method private onChange(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 1956
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1957
    return-void
.end method

.method private parseContactMethodValues(ILandroid/content/ContentValues;)V
    .locals 6

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1375
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_primary"

    .line 1376
    const-string/jumbo v2, "isprimary"

    .line 1375
    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1378
    packed-switch p1, :pswitch_data_0

    .line 1408
    :goto_0
    return-void

    .line 1380
    :pswitch_0
    const-string/jumbo v2, "vnd.android.cursor.item/email_v2"

    const-string/jumbo v3, "data2"

    const-string/jumbo v4, "data3"

    .line 1381
    const-string/jumbo v5, "data14"

    move-object v0, p0

    move-object v1, p2

    .line 1380
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1383
    const-string/jumbo v2, "data"

    .line 1382
    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    :pswitch_1
    const-string/jumbo v0, "data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    const-string/jumbo v1, "pre:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1390
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data5"

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1396
    :cond_0
    :goto_1
    const-string/jumbo v2, "vnd.android.cursor.item/im"

    const-string/jumbo v3, "data2"

    const-string/jumbo v4, "data3"

    const-string/jumbo v5, "data14"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1391
    :cond_1
    const-string/jumbo v1, "custom:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1392
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data5"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data6"

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1401
    :pswitch_2
    const-string/jumbo v2, "vnd.android.cursor.item/postal-address_v2"

    const-string/jumbo v3, "data2"

    .line 1402
    const-string/jumbo v4, "data3"

    const-string/jumbo v5, "data14"

    move-object v0, p0

    move-object v1, p2

    .line 1401
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->copyCommonFields(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1404
    const-string/jumbo v2, "data"

    .line 1403
    invoke-static {v0, v1, p2, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseExtensionValues(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1434
    const-string/jumbo v2, "name"

    .line 1433
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1435
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    .line 1436
    const-string/jumbo v2, "value"

    .line 1435
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1437
    return-void
.end method

.method private parseGroupValues(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 1422
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1424
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "title"

    .line 1425
    const-string/jumbo v2, "name"

    .line 1424
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "notes"

    .line 1427
    const-string/jumbo v2, "notes"

    .line 1426
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1428
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "system_id"

    .line 1429
    const-string/jumbo v2, "system_id"

    .line 1428
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1430
    return-void
.end method

.method private parseOrganizationValues(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1335
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_primary"

    .line 1338
    const-string/jumbo v2, "isprimary"

    .line 1337
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1341
    const-string/jumbo v2, "company"

    .line 1340
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    .line 1345
    const-string/jumbo v2, "type"

    .line 1344
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data3"

    .line 1348
    const-string/jumbo v2, "label"

    .line 1347
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data4"

    .line 1350
    const-string/jumbo v2, "title"

    .line 1349
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1351
    return-void
.end method

.method private parsePeopleValues(Landroid/content/ContentValues;)V
    .locals 4

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1292
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1293
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1295
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "custom_ringtone"

    .line 1296
    const-string/jumbo v2, "custom_ringtone"

    .line 1295
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "send_to_voicemail"

    .line 1298
    const-string/jumbo v2, "send_to_voicemail"

    .line 1297
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1305
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "starred"

    .line 1306
    const-string/jumbo v2, "starred"

    .line 1305
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1307
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_name"

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_type"

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "phonetic_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1313
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1314
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1315
    const-string/jumbo v2, "name"

    .line 1314
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1316
    const-string/jumbo v0, "phonetic_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1317
    const-string/jumbo v0, "phonetic_name"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1318
    new-instance v1, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v1}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 1319
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mPhoneticNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    invoke-virtual {v2, v1, v0}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 1320
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v2, "data7"

    invoke-virtual {v1}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v2, "data8"

    invoke-virtual {v1}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v2, "data9"

    invoke-virtual {v1}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    :cond_2
    const-string/jumbo v0, "notes"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/note"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    const-string/jumbo v2, "notes"

    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1330
    :cond_3
    return-void
.end method

.method private parsePhoneValues(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1356
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "is_primary"

    .line 1359
    const-string/jumbo v2, "isprimary"

    .line 1358
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    .line 1362
    const-string/jumbo v2, "number"

    .line 1361
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    .line 1366
    const-string/jumbo v2, "type"

    .line 1365
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data3"

    .line 1369
    const-string/jumbo v2, "label"

    .line 1368
    invoke-static {v0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1370
    return-void
.end method

.method private updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 955
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 956
    if-nez v1, :cond_0

    .line 957
    return v7

    :cond_0
    move v0, v7

    .line 962
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 963
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 964
    invoke-virtual {p0, p2, v2, v3, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->update(IJLandroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 967
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    return v0

    .line 966
    :catchall_0
    move-exception v0

    .line 967
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 966
    throw v0
.end method

.method private updateContactMethods(JLandroid/content/ContentValues;)I
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1071
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1074
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1080
    iget-wide v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeEmail:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 1092
    :goto_0
    invoke-direct {p0, v0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseContactMethodValues(ILandroid/content/ContentValues;)V

    .line 1094
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1094
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    return v6

    .line 1082
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypeIm:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    .line 1083
    const/4 v0, 0x3

    goto :goto_0

    .line 1084
    :cond_1
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mMimetypePostal:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    .line 1085
    const/4 v0, 0x2

    goto :goto_0

    .line 1089
    :cond_2
    return v6
.end method

.method private updateExtensions(JLandroid/content/ContentValues;)I
    .locals 5

    .prologue
    .line 1099
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseExtensionValues(Landroid/content/ContentValues;)V

    .line 1101
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1101
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateGroups(JLandroid/content/ContentValues;)I
    .locals 5

    .prologue
    .line 1106
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseGroupValues(Landroid/content/ContentValues;)V

    .line 1108
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1108
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updateLegacyPhotoData(JJLandroid/content/ContentValues;)V
    .locals 5

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1167
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data2"

    .line 1168
    const-string/jumbo v2, "local_version"

    .line 1167
    invoke-static {v0, v1, p5, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data3"

    .line 1170
    const-string/jumbo v2, "download_required"

    .line 1169
    invoke-static {v0, v1, p5, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1171
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data4"

    .line 1172
    const-string/jumbo v2, "exists_on_server"

    .line 1171
    invoke-static {v0, v1, p5, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data5"

    .line 1174
    const-string/jumbo v2, "sync_error"

    .line 1173
    invoke-static {v0, v1, p5, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1176
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mimetype=\'vnd.android.cursor.item/photo_v1_extras\' AND raw_contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1179
    const-string/jumbo v4, " AND "

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1179
    const-string/jumbo v4, "data1"

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1179
    const-string/jumbo v4, "="

    .line 1177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1179
    const/4 v4, 0x0

    .line 1176
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1180
    if-nez v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1182
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/photo_v1_extras"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data1"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1184
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1186
    :cond_0
    return-void
.end method

.method private updateOrganizations(JLandroid/content/ContentValues;)I
    .locals 5

    .prologue
    .line 1055
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parseOrganizationValues(Landroid/content/ContentValues;)V

    .line 1057
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1057
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePeople(JLandroid/content/ContentValues;)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1022
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePeopleValues(Landroid/content/ContentValues;)V

    .line 1024
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1025
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1024
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1027
    if-nez v0, :cond_0

    .line 1028
    return v6

    .line 1031
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1033
    if-eqz v1, :cond_3

    .line 1034
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v5, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1041
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1042
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataRow(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1043
    if-eqz v1, :cond_4

    .line 1044
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3, v5, v5}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1051
    :cond_2
    :goto_1
    return v0

    .line 1036
    :cond_3
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1037
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues2:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 1046
    :cond_4
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    const-string/jumbo v2, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1047
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues3:Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method private updatePhones(JLandroid/content/ContentValues;)I
    .locals 5

    .prologue
    .line 1062
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/LegacyApiSupport;->parsePhoneValues(Landroid/content/ContentValues;)V

    .line 1064
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1064
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private updatePhoto(JLandroid/content/ContentValues;)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1118
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->findFirstDataId(JLjava/lang/String;)J

    move-result-wide v4

    .line 1120
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1121
    const-string/jumbo v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1122
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "data15"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1124
    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "mimetype"

    const-string/jumbo v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "raw_contact_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1127
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1128
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    .line 1129
    const/4 v0, 0x1

    :goto_0
    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    .line 1135
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1137
    return v0

    .line 1131
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1132
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2, v3, v3}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private updatePhotoByDataId(JLandroid/content/ContentValues;)I
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 1142
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0, v7, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1146
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDataRawContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 1152
    const-string/jumbo v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const-string/jumbo v0, "data"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 1154
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1155
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "data15"

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1156
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    .line 1157
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1156
    invoke-virtual {v0, v1, v4, v5, v6}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    .line 1160
    invoke-direct/range {v1 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->updateLegacyPhotoData(JJLandroid/content/ContentValues;)V

    .line 1162
    return v7

    .line 1147
    :catch_0
    move-exception v0

    .line 1149
    const/4 v0, 0x0

    return v0
.end method

.method private updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1229
    const-string/jumbo v0, "key"

    invoke-virtual {p4, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1231
    :cond_0
    const-string/jumbo v1, "v1_settings"

    const-string/jumbo v2, "_sync_account IS NULL AND key=?"

    new-array v3, v5, [Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1236
    :goto_0
    const-string/jumbo v0, "v1_settings"

    .line 1237
    const-string/jumbo v1, "key"

    .line 1236
    invoke-virtual {p1, v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 1238
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 1239
    new-instance v0, Landroid/database/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error updating settings with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1233
    :cond_1
    const-string/jumbo v1, "v1_settings"

    const-string/jumbo v2, "_sync_account=? AND _sync_account_type=? AND key=?"

    .line 1234
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 1233
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1241
    :cond_2
    return-void
.end method

.method private updateSettings(Landroid/content/ContentValues;)I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 1189
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1190
    const-string/jumbo v2, "_sync_account"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1192
    const-string/jumbo v3, "_sync_account_type"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1193
    const-string/jumbo v4, "key"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1194
    if-nez v4, :cond_0

    .line 1195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "you must specify the key when updating settings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1197
    :cond_0
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1198
    const-string/jumbo v0, "syncEverything"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1200
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v4, "should_sync"

    .line 1201
    const-string/jumbo v5, "value"

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1200
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1204
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 1206
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object v3, v1, v7

    .line 1207
    const-string/jumbo v0, "account_name=? AND account_type=? AND data_set IS NULL"

    .line 1216
    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v5, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v6, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v4, v5, v6, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1218
    if-nez v0, :cond_1

    .line 1219
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_name"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "account_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1224
    :cond_1
    return v7

    .line 1212
    :cond_2
    const-string/jumbo v0, "account_name IS NULL AND account_type IS NULL AND data_set IS NULL"

    goto :goto_0
.end method


# virtual methods
.method public copySettingsToLegacySettings()V
    .locals 8

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1271
    const-string/jumbo v1, "SELECT account_name,account_type,should_sync FROM settings LEFT OUTER JOIN v1_settings ON (account_name=_sync_account AND account_type=_sync_account_type AND data_set IS NULL AND key=\'syncEverything\') WHERE should_sync<>value"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1273
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1274
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1275
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1276
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1277
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 1278
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "_sync_account"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "_sync_account_type"

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "key"

    .line 1281
    const-string/jumbo v7, "syncEverything"

    .line 1280
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    iget-object v4, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSetting(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1285
    :catchall_0
    move-exception v0

    .line 1286
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1285
    throw v0

    .line 1286
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1288
    return-void
.end method

.method public delete(Landroid/net/Uri;IJ)I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1491
    packed-switch p2, :pswitch_data_0

    .line 1539
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1494
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v4

    move-wide v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/providers/contacts/ContactsProvider2;->deleteRawContact(JJZ)I

    move-result v6

    .line 1542
    :goto_0
    return v6

    .line 1498
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1499
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mValues:Landroid/content/ContentValues;

    invoke-direct {p0, p3, p4, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    goto :goto_0

    .line 1505
    :pswitch_3
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->ORGANIZATION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1510
    :pswitch_4
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->CONTACT_METHOD_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1515
    :pswitch_5
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHONE_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1520
    :pswitch_6
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->EXTENSION_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1525
    :pswitch_7
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->PHOTO_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1530
    :pswitch_8
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->GROUP_MEMBERSHIP_MIME_TYPES:[Ljava/lang/String;

    invoke-virtual {v0, p3, p4, v1}, Lcom/android/providers/contacts/ContactsProvider2;->deleteData(J[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 1535
    :pswitch_9
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0, p1, p3, p4, v6}, Lcom/android/providers/contacts/ContactsProvider2;->deleteGroup(Landroid/net/Uri;JZ)I

    move-result v6

    goto :goto_0

    .line 1491
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1466
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 1467
    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    const/16 v0, 0x2c

    if-ne v8, v0, :cond_1

    .line 1468
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1471
    :cond_1
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport$IdQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/LegacyApiSupport;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1472
    if-nez v1, :cond_2

    .line 1473
    return v7

    :cond_2
    move v0, v7

    .line 1478
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1479
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1480
    invoke-virtual {p0, p1, v8, v2, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->delete(Landroid/net/Uri;IJ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 1483
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1486
    return v0

    .line 1482
    :catchall_0
    move-exception v0

    .line 1483
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1482
    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1960
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 1961
    packed-switch v0, :pswitch_data_0

    .line 2005
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1964
    :pswitch_1
    const-string/jumbo v0, "vnd.android.cursor.dir/contact_extensions"

    return-object v0

    .line 1967
    :pswitch_2
    const-string/jumbo v0, "vnd.android.cursor.item/contact_extensions"

    return-object v0

    .line 1969
    :pswitch_3
    const-string/jumbo v0, "vnd.android.cursor.dir/person"

    return-object v0

    .line 1971
    :pswitch_4
    const-string/jumbo v0, "vnd.android.cursor.item/person"

    return-object v0

    .line 1973
    :pswitch_5
    const-string/jumbo v0, "vnd.android.cursor.dir/phone"

    return-object v0

    .line 1975
    :pswitch_6
    const-string/jumbo v0, "vnd.android.cursor.item/phone"

    return-object v0

    .line 1977
    :pswitch_7
    const-string/jumbo v0, "vnd.android.cursor.dir/contact-methods"

    return-object v0

    .line 1979
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1981
    :pswitch_9
    const-string/jumbo v0, "vnd.android.cursor.dir/phone"

    return-object v0

    .line 1983
    :pswitch_a
    const-string/jumbo v0, "vnd.android.cursor.item/phone"

    return-object v0

    .line 1985
    :pswitch_b
    const-string/jumbo v0, "vnd.android.cursor.dir/phone"

    return-object v0

    .line 1987
    :pswitch_c
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    return-object v0

    .line 1989
    :pswitch_d
    const-string/jumbo v0, "vnd.android.cursor.dir/photo"

    return-object v0

    .line 1991
    :pswitch_e
    const-string/jumbo v0, "vnd.android.cursor.item/photo"

    return-object v0

    .line 1993
    :pswitch_f
    const-string/jumbo v0, "vnd.android.cursor.dir/contact-methods"

    return-object v0

    .line 1995
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/LegacyApiSupport;->getContactMethodType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1997
    :pswitch_11
    const-string/jumbo v0, "vnd.android.cursor.dir/organizations"

    return-object v0

    .line 1999
    :pswitch_12
    const-string/jumbo v0, "vnd.android.cursor.item/organization"

    return-object v0

    .line 2001
    :pswitch_13
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd.android.search.suggest"

    return-object v0

    .line 2003
    :pswitch_14
    const-string/jumbo v0, "vnd.android.cursor.item/vnd.android.search.suggest"

    return-object v0

    .line 1961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_8
        :pswitch_f
        :pswitch_10
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_b
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 751
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 752
    sget-object v0, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 754
    packed-switch v0, :pswitch_data_0

    .line 809
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 756
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPeople(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 812
    :goto_0
    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 813
    const/4 v0, 0x0

    return-object v0

    .line 760
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertOrganization(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 764
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 765
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 770
    :pswitch_4
    const-string/jumbo v0, "person"

    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 771
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertContactMethod(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 777
    :pswitch_5
    const-string/jumbo v0, "person"

    .line 776
    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 778
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 783
    :pswitch_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 784
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertPhone(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 790
    :pswitch_7
    const-string/jumbo v0, "person"

    .line 789
    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 791
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertExtension(JLandroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 796
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroup(Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0

    .line 801
    :pswitch_9
    const-string/jumbo v0, "person"

    .line 800
    invoke-direct {p0, p2, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    .line 803
    const-string/jumbo v2, "group_id"

    .line 802
    invoke-direct {p0, p2, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->getRequiredValue(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 804
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/providers/contacts/LegacyApiSupport;->insertGroupMembership(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 816
    :cond_0
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 817
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->onChange(Landroid/net/Uri;)V

    .line 818
    return-object v0

    .line 754
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 1547
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 1549
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1550
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 1553
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1554
    packed-switch v2, :pswitch_data_0

    .line 1836
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1556
    :pswitch_1
    const-string/jumbo v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1557
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1558
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    :goto_0
    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 1840
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1842
    if-eqz v0, :cond_0

    .line 1843
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1844
    sget-object v2, Landroid/provider/Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1843
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1846
    :cond_0
    return-object v0

    .line 1563
    :pswitch_2
    const-string/jumbo v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1564
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1565
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1566
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1567
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1568
    goto :goto_0

    .line 1571
    :pswitch_3
    const-string/jumbo v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1572
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1573
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1574
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1575
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND _id IN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1576
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->getRawContactsByFilterAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1575
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1577
    goto :goto_0

    .line 1581
    :pswitch_4
    const-string/jumbo v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1582
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1583
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1584
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1585
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupNameMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1586
    goto/16 :goto_0

    .line 1589
    :pswitch_5
    const-string/jumbo v2, "view_v1_people people  LEFT OUTER JOIN presence ON (presence.presence_data_id=(SELECT MAX(presence_data_id) FROM presence WHERE people._id = presence_raw_contact_id) )"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1590
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPeopleProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1591
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1592
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/providers/contacts/LegacyApiSupport;->buildGroupSystemIdMatchWhereClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1594
    goto/16 :goto_0

    .line 1597
    :pswitch_6
    const-string/jumbo v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1598
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1599
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1600
    goto/16 :goto_0

    .line 1603
    :pswitch_7
    const-string/jumbo v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1604
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1605
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1606
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1607
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1608
    goto/16 :goto_0

    .line 1611
    :pswitch_8
    const-string/jumbo v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1612
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1613
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1614
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1615
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1616
    goto/16 :goto_0

    .line 1619
    :pswitch_9
    const-string/jumbo v2, "view_v1_organizations organizations"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1620
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sOrganizationProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1621
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1622
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1623
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1624
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1625
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1626
    goto/16 :goto_0

    .line 1629
    :pswitch_a
    const-string/jumbo v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1630
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1631
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1632
    goto/16 :goto_0

    .line 1635
    :pswitch_b
    const-string/jumbo v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1636
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1637
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1638
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1639
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1640
    goto/16 :goto_0

    .line 1643
    :pswitch_c
    const-string/jumbo v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1644
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1645
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1646
    const-string/jumbo v2, " AND kind=1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1648
    goto/16 :goto_0

    .line 1651
    :pswitch_d
    const-string/jumbo v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1652
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1653
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1654
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1655
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1656
    const-string/jumbo v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1657
    goto/16 :goto_0

    .line 1660
    :pswitch_e
    const-string/jumbo v2, "view_v1_contact_methods contact_methods"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1661
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sContactMethodProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1662
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1663
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1664
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1665
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1666
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1667
    const-string/jumbo v2, " AND kind IS NOT NULL"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1668
    goto/16 :goto_0

    .line 1671
    :pswitch_f
    const-string/jumbo v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1672
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1673
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1674
    goto/16 :goto_0

    .line 1677
    :pswitch_10
    const-string/jumbo v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1678
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1679
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1680
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1681
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1682
    goto/16 :goto_0

    .line 1685
    :pswitch_11
    const-string/jumbo v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1686
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1687
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1688
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 1689
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 1690
    const-string/jumbo v3, " AND person ="

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1691
    iget-object v3, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1692
    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    :cond_1
    move-object v8, p6

    .line 1694
    goto/16 :goto_0

    .line 1697
    :pswitch_12
    const-string/jumbo v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1698
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1699
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1700
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1701
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1702
    goto/16 :goto_0

    .line 1705
    :pswitch_13
    const-string/jumbo v2, "view_v1_phones phones"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1706
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhoneProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1707
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1708
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1709
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1710
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1711
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1712
    goto/16 :goto_0

    .line 1715
    :pswitch_14
    const-string/jumbo v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1716
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1717
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1718
    goto/16 :goto_0

    .line 1721
    :pswitch_15
    const-string/jumbo v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1722
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1723
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1724
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1725
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1726
    goto/16 :goto_0

    .line 1729
    :pswitch_16
    const-string/jumbo v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1730
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1731
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1732
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1733
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1734
    goto/16 :goto_0

    .line 1737
    :pswitch_17
    const-string/jumbo v2, "view_v1_extensions extensions"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1738
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sExtensionProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1739
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1740
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1741
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1742
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1743
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1744
    goto/16 :goto_0

    .line 1747
    :pswitch_18
    const-string/jumbo v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1748
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1749
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1750
    goto/16 :goto_0

    .line 1753
    :pswitch_19
    const-string/jumbo v2, "view_v1_groups groups"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1754
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1755
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyGroupAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1756
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1757
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1758
    goto/16 :goto_0

    .line 1761
    :pswitch_1a
    const-string/jumbo v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1762
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1763
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1764
    goto/16 :goto_0

    .line 1767
    :pswitch_1b
    const-string/jumbo v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1768
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1769
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1770
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1771
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1772
    goto/16 :goto_0

    .line 1775
    :pswitch_1c
    const-string/jumbo v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1776
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1777
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1778
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1779
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1780
    goto/16 :goto_0

    .line 1783
    :pswitch_1d
    const-string/jumbo v2, "view_v1_group_membership groupmembership"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1784
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sGroupMembershipProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1785
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1786
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1787
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1788
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1789
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1790
    goto/16 :goto_0

    .line 1793
    :pswitch_1e
    const-string/jumbo v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1794
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1795
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1796
    const-string/jumbo v2, " AND person="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1797
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1798
    const-string/jumbo p6, "1"

    move-object v8, p6

    .line 1799
    goto/16 :goto_0

    .line 1802
    :pswitch_1f
    const-string/jumbo v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1803
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1804
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    move-object v8, p6

    .line 1805
    goto/16 :goto_0

    .line 1808
    :pswitch_20
    const-string/jumbo v2, "view_v1_photos photos"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 1809
    sget-object v2, Lcom/android/providers/contacts/LegacyApiSupport;->sPhotoProjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 1810
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/LegacyApiSupport;->applyRawContactsAccount(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 1811
    const-string/jumbo v2, " AND _id="

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 1812
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    move-object v8, p6

    .line 1813
    goto/16 :goto_0

    .line 1816
    :pswitch_21
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchSuggestionsQuery(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1820
    :pswitch_22
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 1821
    const-string/jumbo v0, "filter"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsProvider2;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1822
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mGlobalSearchSupport:Lcom/android/providers/contacts/GlobalSearchSupport;

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/GlobalSearchSupport;->handleSearchShortcutRefresh(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 1828
    :pswitch_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :pswitch_24
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->copySettingsToLegacySettings()V

    .line 1832
    const-string/jumbo v2, "v1_settings"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v8, p6

    .line 1833
    goto/16 :goto_0

    .line 1554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_a
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_23
        :pswitch_23
        :pswitch_21
        :pswitch_22
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_4
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_24
    .end packed-switch
.end method

.method public update(IJLandroid/content/ContentValues;)I
    .locals 2

    .prologue
    .line 974
    const/4 v0, 0x0

    .line 975
    packed-switch p1, :pswitch_data_0

    .line 1018
    :goto_0
    :pswitch_0
    return v0

    .line 978
    :pswitch_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePeople(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 984
    :pswitch_2
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateOrganizations(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 990
    :pswitch_3
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhones(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 996
    :pswitch_4
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateContactMethods(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1002
    :pswitch_5
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateExtensions(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1008
    :pswitch_6
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updateGroups(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 1014
    :pswitch_7
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhotoByDataId(JLandroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 975
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 916
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyApiSupport;->ensureDefaultAccount()V

    .line 918
    sget-object v1, Lcom/android/providers/contacts/LegacyApiSupport;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 920
    sparse-switch v2, :sswitch_data_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 942
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/LegacyApiSupport;->updateAll(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 946
    :sswitch_0
    if-lez v0, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 950
    :cond_0
    return v0

    .line 927
    :sswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 928
    invoke-direct {p0, v0, v1, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updatePhoto(JLandroid/content/ContentValues;)I

    move-result v0

    return v0

    .line 932
    :sswitch_2
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/LegacyApiSupport;->updateSettings(Landroid/content/ContentValues;)I

    move-result v0

    return v0

    .line 938
    :sswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyApiSupport;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x18 -> :sswitch_1
        0x2c -> :sswitch_2
    .end sparse-switch
.end method
