.class public Lcom/android/providers/contacts/PhotoPriorityResolver;
.super Ljava/lang/Object;
.source "PhotoPriorityResolver.java"


# static fields
.field private static final METADATA_CONTACTS_NAMES:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotoPriorities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    const-string/jumbo v1, "android.provider.ALTERNATE_CONTACTS_STRUCTURE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "android.provider.CONTACTS_STRUCTURE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    sput-object v0, Lcom/android/providers/contacts/PhotoPriorityResolver;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Landroid/util/ArrayMap;

    .line 79
    iput-object p1, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method private loadPhotoPriorityFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7

    .prologue
    const/4 v0, 0x7

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 146
    :cond_0
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 147
    if-ne v1, v6, :cond_0

    .line 151
    :cond_1
    if-eq v1, v5, :cond_2

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No start tag found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Problem reading XML"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 155
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 156
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v3, :cond_6

    .line 157
    :cond_4
    if-eq v1, v6, :cond_6

    .line 158
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 159
    if-ne v1, v5, :cond_3

    const-string/jumbo v1, "Picture"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    .line 161
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_3

    .line 162
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 163
    const-string/jumbo v2, "priority"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    invoke-interface {p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    const/4 v2, 0x7

    .line 164
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 161
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0

    .line 167
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :catch_1
    move-exception v0

    .line 175
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Problem reading XML"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 178
    :cond_6
    return v0
.end method

.method private resolvePhotoPriority(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 106
    iget-object v4, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    iget-object v0, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/PhotoPriorityResolver;->resolvePhotoPriorityFromMetaData(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x7

    return v0
.end method


# virtual methods
.method public declared-synchronized getPhotoPriority(Ljava/lang/String;)I
    .locals 2

    .prologue
    monitor-enter p0

    .line 87
    if-nez p1, :cond_0

    .line 88
    const/4 v0, 0x7

    monitor-exit p0

    return v0

    .line 91
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    if-nez v0, :cond_1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/PhotoPriorityResolver;->resolvePhotoPriority(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mPhotoPriorities:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method resolvePhotoPriorityFromMetaData(Ljava/lang/String;)I
    .locals 7

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.content.SyncAdapter"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 122
    const/16 v2, 0x84

    .line 121
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_2

    .line 125
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 126
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 127
    if-eqz v3, :cond_0

    .line 130
    sget-object v4, Lcom/android/providers/contacts/PhotoPriorityResolver;->METADATA_CONTACTS_NAMES:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v5, v4

    :goto_0
    if-ge v0, v5, :cond_0

    aget-object v6, v4, v0

    .line 131
    invoke-virtual {v3, v1, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 133
    if-eqz v6, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/providers/contacts/PhotoPriorityResolver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, v6}, Lcom/android/providers/contacts/PhotoPriorityResolver;->loadPhotoPriorityFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    return v0

    .line 130
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_2
    const/4 v0, 0x7

    return v0
.end method
