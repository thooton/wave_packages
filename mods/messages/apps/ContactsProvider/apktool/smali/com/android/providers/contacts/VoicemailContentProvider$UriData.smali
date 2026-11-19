.class public Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
.super Ljava/lang/Object;
.source "VoicemailContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/VoicemailContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriData"
.end annotation


# static fields
.field private static final synthetic -com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mSourcePackage:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private final mUriType:Lcom/android/providers/contacts/VoicemailUriType;


# direct methods
.method private static synthetic -getcom-android-providers-contacts-VoicemailUriTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->NO_MATCH:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->STATUS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/providers/contacts/VoicemailUriType;->VOICEMAILS_ID:Lcom/android/providers/contacts/VoicemailUriType;

    invoke-virtual {v1}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->-com-android-providers-contacts-VoicemailUriTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private constructor <init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    .line 254
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    .line 255
    iput-object p3, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    .line 256
    iput-object p4, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public static createUriData(Landroid/net/Uri;)Lcom/android/providers/contacts/VoicemailContentProvider$UriData;
    .locals 5

    .prologue
    .line 300
    const-string/jumbo v0, "source_package"

    .line 299
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 302
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;->match(Landroid/net/Uri;)Lcom/android/providers/contacts/util/UriType;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/VoicemailUriType;

    .line 303
    invoke-static {}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->-getcom-android-providers-contacts-VoicemailUriTypeSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/providers/contacts/VoicemailUriType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 313
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Impossible, all cases are covered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :pswitch_0
    new-instance v1, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3, v2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 309
    :pswitch_1
    new-instance v3, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;-><init>(Landroid/net/Uri;Lcom/android/providers/contacts/VoicemailUriType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 311
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static createUriMatcher()Lcom/android/providers/contacts/util/TypedUriMatcherImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/providers/contacts/util/TypedUriMatcherImpl",
            "<",
            "Lcom/android/providers/contacts/VoicemailUriType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    new-instance v0, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;

    .line 319
    const-string/jumbo v1, "com.android.voicemail"

    invoke-static {}, Lcom/android/providers/contacts/VoicemailUriType;->values()[Lcom/android/providers/contacts/VoicemailUriType;

    move-result-object v2

    .line 318
    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/util/TypedUriMatcherImpl;-><init>(Ljava/lang/String;[Lcom/android/providers/contacts/util/UriType;)V

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSourcePackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public final getUriType()Lcom/android/providers/contacts/VoicemailUriType;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mUriType:Lcom/android/providers/contacts/VoicemailUriType;

    return-object v0
.end method

.method public final getWhereClause()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 291
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    .line 292
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "_id"

    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 293
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->hasSourcePackage()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "source_package"

    .line 294
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v0, v1}, Lcom/android/providers/contacts/util/DbQueryUtils;->getEqualityClause(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    aput-object v1, v2, v0

    .line 291
    invoke-static {v2}, Lcom/android/providers/contacts/util/DbQueryUtils;->concatenateClauses([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    .line 292
    goto :goto_0
.end method

.method public final hasId()Z
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasSourcePackage()Z
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$UriData;->mSourcePackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
