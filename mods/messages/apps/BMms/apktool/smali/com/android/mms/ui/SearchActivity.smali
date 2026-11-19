.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$1;,
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# instance fields
.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SearchActivity;JJ)J
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SearchActivity;->getThreadId(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 190
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    .line 60
    return-void
.end method

.method private getThreadId(JJ)J
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string/jumbo v0, "content://mms-sms/messageIdToThread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "row_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "table_to_use"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 211
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 217
    if-eqz v1, :cond_1

    .line 219
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string/jumbo v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    return-wide v2

    .line 223
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 232
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    if-nez v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 240
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 245
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 246
    if-eqz v3, :cond_3

    const-string/jumbo v4, "source_id"

    invoke-virtual {v3, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 247
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 265
    const-string/jumbo v0, "Search thread"

    .line 247
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 267
    return-void

    :cond_2
    move-object v0, v1

    .line 240
    goto :goto_0

    .line 270
    :cond_3
    const v3, 0x7f040051

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SearchActivity;->setContentView(I)V

    .line 271
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 274
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 275
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 276
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 277
    invoke-virtual {v1, v8}, Landroid/widget/ListView;->setClickable(Z)V

    .line 283
    const-string/jumbo v4, ""

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v4}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 288
    new-instance v4, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v4, p0, v3, v0, v1}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/widget/ListView;)V

    iput-object v4, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 376
    sget-object v1, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 377
    const-string/jumbo v3, "pattern"

    .line 376
    invoke-virtual {v1, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 380
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v8}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 384
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 388
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 395
    const/4 v0, 0x0

    return v0

    .line 392
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->finish()V

    .line 393
    const/4 v0, 0x1

    return v0

    .line 388
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 203
    return-void
.end method
