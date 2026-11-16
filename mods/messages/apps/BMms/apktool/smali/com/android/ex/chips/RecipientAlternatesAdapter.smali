.class public Lcom/android/ex/chips/RecipientAlternatesAdapter;
.super Landroid/widget/CursorAdapter;
.source "RecipientAlternatesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;,
        Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;
    }
.end annotation


# static fields
.field private static final sCorrectedPhotoUris:Ljava/util/Map;
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


# instance fields
.field private mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

.field private mCheckedItemPosition:I

.field private final mCurrentId:J

.field private final mDeleteDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mDirectoryId:Ljava/lang/Long;

.field private mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->sCorrectedPhotoUris:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private static doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;Landroid/accounts/Account;Landroid/content/Context;Lcom/android/ex/chips/Queries$Query;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 346
    invoke-static {p4, p6}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    const-string/jumbo v0, "RecipAlternates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string/jumbo v0, "RecipAlternates"

    const-string/jumbo v1, "Not doing query because we don\'t have required permissions."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    return-object v3

    .line 352
    :cond_1
    invoke-virtual {p5}, Lcom/android/ex/chips/Queries$Query;->getContentFilterUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 355
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 356
    const-string/jumbo v1, "limit"

    .line 357
    add-int/lit8 v2, p1, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 358
    if-eqz p2, :cond_2

    .line 359
    const-string/jumbo v0, "directory"

    .line 360
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 359
    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 362
    :cond_2
    if-eqz p3, :cond_3

    .line 363
    const-string/jumbo v0, "name_for_primary_account"

    iget-object v2, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 364
    const-string/jumbo v0, "type_for_primary_account"

    iget-object v2, p3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 366
    :cond_3
    invoke-virtual {p4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p5}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    .line 366
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static getBetterRecipient(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    .locals 2

    .prologue
    .line 297
    if-nez p1, :cond_0

    .line 298
    return-object p0

    .line 301
    :cond_0
    if-nez p0, :cond_1

    .line 302
    return-object p1

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 306
    if-eqz v0, :cond_2

    .line 308
    return-object p0

    .line 311
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 311
    if-eqz v0, :cond_3

    .line 313
    return-object p1

    .line 317
    :cond_3
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 318
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 317
    if-eqz v0, :cond_4

    .line 319
    return-object p0

    .line 322
    :cond_4
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 323
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 322
    if-eqz v0, :cond_5

    .line 324
    return-object p1

    .line 328
    :cond_5
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 329
    :cond_6
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 330
    return-object p0

    .line 333
    :cond_7
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-eqz v0, :cond_9

    .line 334
    :cond_8
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoThumbnailUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    if-nez v0, :cond_9

    .line 335
    return-object p1

    .line 340
    :cond_9
    return-object p0
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;ILandroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/chips/BaseRecipientAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/accounts/Account;",
            "Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            "Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    if-nez p3, :cond_1

    .line 100
    sget-object v1, Lcom/android/ex/chips/Queries;->EMAIL:Lcom/android/ex/chips/Queries$Query;

    move-object v7, v1

    .line 104
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 105
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_3

    .line 109
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v1

    .line 110
    array-length v5, v1

    if-lez v5, :cond_2

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    const-string/jumbo v1, "?"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    add-int/lit8 v1, v3, -0x1

    if-ge v2, v1, :cond_0

    .line 113
    const-string/jumbo v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 102
    :cond_1
    sget-object v1, Lcom/android/ex/chips/Queries;->PHONE:Lcom/android/ex/chips/Queries$Query;

    move-object v7, v1

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_2

    .line 117
    :cond_3
    const-string/jumbo v1, "RecipAlternates"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 118
    const-string/jumbo v1, "RecipAlternates"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Doing reverse lookup for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 122
    invoke-virtual {v9, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    const/4 v8, 0x0

    .line 127
    :try_start_0
    move-object/from16 v0, p6

    invoke-static {p0, v0}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    invoke-virtual {v7}, Lcom/android/ex/chips/Queries$Query;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 130
    invoke-virtual {v7}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/ex/chips/Queries$Query;->getProjection()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " IN ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 132
    const-string/jumbo v6, ")"

    .line 131
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    const/4 v6, 0x0

    .line 128
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 134
    :goto_3
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v3, v1}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->processContactEntries(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v2

    .line 135
    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 137
    if-eqz v3, :cond_5

    .line 138
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 142
    :cond_5
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move-object v1, p0

    move-object v3, v9

    move-object/from16 v4, p4

    move-object v6, v7

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 144
    invoke-static/range {v1 .. v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipientsFromDirectoryQueries(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/Queries$Query;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)V

    .line 147
    move-object/from16 v0, p5

    invoke-static {p1, v5, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipientsFromExtensionMatcher(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V

    .line 148
    return-void

    .line 136
    :catchall_0
    move-exception v1

    move-object v2, v8

    .line 137
    :goto_4
    if-eqz v2, :cond_6

    .line 138
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 136
    :cond_6
    throw v1

    :catchall_1
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :cond_7
    move-object v3, v8

    goto :goto_3
.end method

.method public static getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;Landroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/ex/chips/BaseRecipientAdapter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            "Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 81
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getMatchingRecipients(Landroid/content/Context;Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/ArrayList;ILandroid/accounts/Account;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)V

    .line 83
    return-void
.end method

.method private static getMatchingRecipientsFromDirectoryQueries(Landroid/content/Context;Ljava/util/Map;Ljava/util/Set;Landroid/accounts/Account;Ljava/util/Set;Lcom/android/ex/chips/Queries$Query;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/Queries$Query;",
            "Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            "Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 170
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 173
    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    move-object/from16 v0, p4

    invoke-interface {v0, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 179
    const/4 v8, 0x0

    .line 181
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/ex/chips/ChipsUtil;->hasPermissions(Landroid/content/Context;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 182
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 183
    sget-object v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/ex/chips/BaseRecipientAdapter$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    .line 184
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 182
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 186
    :goto_1
    if-nez v3, :cond_3

    .line 192
    if-eqz v3, :cond_2

    .line 193
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 187
    :cond_2
    return-void

    .line 189
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v3, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;->setupOtherDirectories(Landroid/content/Context;Landroid/database/Cursor;Landroid/accounts/Account;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result-object v11

    .line 192
    if-eqz v3, :cond_4

    .line 193
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_4
    if-eqz v11, :cond_9

    .line 198
    const/4 v2, 0x0

    .line 199
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v3, v2

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 200
    const/4 v4, 0x0

    move v9, v4

    move-object v10, v3

    :goto_3
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_c

    .line 201
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;

    iget-wide v14, v3, Lcom/android/ex/chips/BaseRecipientAdapter$DirectorySearchParams;->directoryId:J

    .line 204
    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 203
    const/4 v3, 0x1

    move-object/from16 v5, p3

    move-object/from16 v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->doQuery(Ljava/lang/CharSequence;ILjava/lang/Long;Landroid/accounts/Account;Landroid/content/Context;Lcom/android/ex/chips/Queries$Query;Lcom/android/ex/chips/ChipsUtil$PermissionsCheckListener;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    .line 205
    if-eqz v3, :cond_8

    .line 206
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_8

    .line 209
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->processContactEntries(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;

    move-result-object v4

    .line 211
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 218
    :catchall_0
    move-exception v2

    .line 219
    :goto_5
    if-eqz v3, :cond_5

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 218
    :cond_5
    throw v2

    .line 191
    :catchall_1
    move-exception v2

    move-object v3, v8

    .line 192
    :goto_6
    if-eqz v3, :cond_6

    .line 193
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 191
    :cond_6
    throw v2

    .line 215
    :cond_7
    :try_start_4
    move-object/from16 v0, p6

    invoke-interface {v0, v4}, Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 219
    if-eqz v3, :cond_b

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 221
    const/4 v2, 0x0

    :goto_7
    move-object v3, v2

    goto :goto_2

    .line 219
    :cond_8
    if-eqz v3, :cond_a

    .line 220
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 221
    const/4 v4, 0x0

    .line 200
    :goto_8
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    move-object v10, v4

    goto :goto_3

    .line 228
    :cond_9
    return-void

    .line 218
    :catchall_2
    move-exception v2

    move-object v3, v10

    goto :goto_5

    .line 191
    :catchall_3
    move-exception v2

    goto :goto_6

    :cond_a
    move-object v4, v3

    goto :goto_8

    :cond_b
    move-object v2, v3

    goto :goto_7

    :cond_c
    move-object v2, v10

    goto :goto_7

    :cond_d
    move-object v3, v8

    goto/16 :goto_1
.end method

.method public static getMatchingRecipientsFromExtensionMatcher(Lcom/android/ex/chips/BaseRecipientAdapter;Ljava/util/Set;Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/chips/BaseRecipientAdapter;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/ex/chips/BaseRecipientAdapter;->getMatchingRecipients(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 239
    invoke-interface {p2, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesFound(Ljava/util/Map;)V

    .line 240
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;->matchesNotFound(Ljava/util/Set;)V

    .line 246
    return-void
.end method

.method private static processContactEntries(Landroid/database/Cursor;Ljava/lang/Long;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 251
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 256
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    const/4 v1, 0x7

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 258
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 259
    const/4 v3, 0x2

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 260
    const/4 v4, 0x3

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 261
    const/4 v5, 0x4

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 263
    const/4 v7, 0x5

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 264
    const/4 v7, 0x6

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 266
    const/16 v7, 0x8

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 265
    const/4 v11, 0x1

    move-object/from16 v7, p1

    .line 255
    invoke-static/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v1

    .line 274
    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getBetterRecipient(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 276
    invoke-virtual {v13, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string/jumbo v0, "RecipAlternates"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string/jumbo v0, "RecipAlternates"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received reverse look up information for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 279
    const-string/jumbo v2, " RESULTS: "

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const-string/jumbo v2, " NAME : "

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 280
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const-string/jumbo v2, " CONTACT ID : "

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    const/4 v2, 0x4

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 278
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    const-string/jumbo v2, " ADDRESS :"

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 278
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    :cond_2
    return-object v13
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 611
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 612
    invoke-virtual {p0, v4}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    .line 614
    iget-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    .line 615
    sget-object v5, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->RECIPIENT_ALTERNATES:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    iget-object v7, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mDeleteDrawable:Landroid/graphics/drawable/StateListDrawable;

    move-object v1, p1

    move-object v6, v2

    .line 614
    invoke-virtual/range {v0 .. v7}, Lcom/android/ex/chips/DropdownChipLayouter;->bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    .line 616
    return-void
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 568
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 569
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 572
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRecipientEntry(I)Lcom/android/ex/chips/RecipientEntry;
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 576
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 577
    invoke-interface {v12, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 579
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    const/4 v1, 0x7

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 581
    invoke-interface {v12, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 582
    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 583
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 584
    const/4 v5, 0x4

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 585
    iget-object v7, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mDirectoryId:Ljava/lang/Long;

    .line 586
    const/4 v8, 0x5

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 587
    const/4 v10, 0x6

    invoke-interface {v12, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 589
    const/16 v13, 0x8

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 578
    invoke-static/range {v0 .. v12}, Lcom/android/ex/chips/RecipientEntry;->constructTopLevelEntry(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;JLjava/lang/Long;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 595
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 596
    if-nez p2, :cond_0

    .line 597
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v2, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->RECIPIENT_ALTERNATES:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v1, v2}, Lcom/android/ex/chips/DropdownChipLayouter;->newView(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object p2

    .line 599
    :cond_0
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCurrentId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 600
    iput p1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    .line 601
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemChangedListener:Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;

    iget v2, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mCheckedItemPosition:I

    invoke-interface {v1, v2}, Lcom/android/ex/chips/RecipientAlternatesAdapter$OnCheckedItemChangedListener;->onCheckedItemChanged(I)V

    .line 605
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/ex/chips/RecipientAlternatesAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 606
    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/ex/chips/RecipientAlternatesAdapter;->mDropdownChipLayouter:Lcom/android/ex/chips/DropdownChipLayouter;

    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->RECIPIENT_ALTERNATES:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/DropdownChipLayouter;->newView(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
