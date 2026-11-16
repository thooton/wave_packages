.class Lcom/android/mms/ui/MessageListItem$LinkAdapter;
.super Landroid/widget/BaseAdapter;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LinkAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field mUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/style/URLSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/style/URLSpan;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2344
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2345
    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    .line 2346
    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mUrls:Ljava/util/ArrayList;

    .line 2347
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2348
    return-void
.end method

.method private stripUrlSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2411
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2412
    const-string/jumbo v0, "tel:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2413
    const-string/jumbo v0, "tel:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2415
    :goto_0
    const-string/jumbo v1, "smsto:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2416
    const-string/jumbo v0, "smsto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2418
    :cond_0
    const-string/jumbo v1, "mailto:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2419
    const-string/jumbo v0, "mailto:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2422
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object v0, p1

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2357
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/text/style/URLSpan;
    .locals 1

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mUrls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2350
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->getItem(I)Landroid/text/style/URLSpan;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 2372
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2378
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->getItem(I)Landroid/text/style/URLSpan;

    move-result-object v0

    .line 2379
    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 2381
    instance-of v0, v0, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;

    if-eqz v0, :cond_1

    .line 2382
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2383
    const v1, 0x7f040059

    .line 2382
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2384
    invoke-direct {p0, v2}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->stripUrlSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2404
    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2406
    return-object v0

    .line 2386
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040058

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2389
    const-string/jumbo v1, "tel:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2390
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f070112

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2392
    :goto_1
    const-string/jumbo v3, "smsto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2393
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f070113

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2395
    :cond_2
    const-string/jumbo v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2396
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f070114

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2398
    :cond_3
    const-string/jumbo v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2399
    const-string/jumbo v3, "rtsp:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 2398
    if-eqz v2, :cond_0

    .line 2400
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070115

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    move-object v1, v2

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 2362
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->getItem(I)Landroid/text/style/URLSpan;

    move-result-object v0

    .line 2363
    instance-of v0, v0, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;

    if-eqz v0, :cond_0

    .line 2364
    const/4 v0, 0x0

    return v0

    .line 2366
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
