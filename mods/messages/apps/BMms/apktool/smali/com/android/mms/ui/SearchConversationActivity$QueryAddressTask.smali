.class Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;
.super Ljava/lang/Object;
.source "SearchConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SearchConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryAddressTask"
.end annotation


# instance fields
.field private isNewQuery:Z

.field private mCancelQuery:Z

.field private mNewQuery:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mStatus:I

.field final synthetic this$0:Lcom/android/mms/ui/SearchConversationActivity;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mCancelQuery:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    return p1
.end method

.method constructor <init>(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    .line 219
    iput-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mCancelQuery:Z

    .line 221
    iput-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    .line 222
    iput-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "SearchConversationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init QueryAddressTask query="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    .line 227
    iput-object p2, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    .line 228
    iput-object p2, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private handleQuery()V
    .locals 4

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    .line 285
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleQuery isNewQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;-><init>(Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask$1;->start()V

    .line 306
    return-void
.end method

.method private startAsyncQuery(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mCancelQuery:Z

    if-eqz v0, :cond_0

    .line 315
    return-void

    .line 318
    :cond_0
    const/4 v0, 0x0

    .line 319
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SearchConversationActivity;->mQueryHandler:Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;->cancelOperation(I)V

    .line 321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    const/4 v0, 0x1

    .line 324
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v2, "SearchConversationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAsyncQuery searchMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |mQuery:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 325
    const-string/jumbo v4, " |contactAddress="

    .line 324
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/android/mms/ui/SearchConversationActivity;->-get0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 327
    const-string/jumbo v2, "search_mode"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 329
    const-string/jumbo v1, "key_str"

    iget-object v2, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    .line 326
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 331
    const-string/jumbo v1, "contact_addr"

    .line 326
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    iget-object v1, v1, Lcom/android/mms/ui/SearchConversationActivity;->mQueryHandler:Lcom/android/mms/ui/SearchConversationActivity$ThreadListQueryHandler;

    .line 333
    const/16 v2, 0x7d1

    const/4 v3, 0x0

    .line 332
    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->startConversationQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const-string/jumbo v1, "SearchConversationActivity"

    const-string/jumbo v2, "startAsyncQuery Error:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelQuery()V
    .locals 3

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    const-string/jumbo v2, "cancelQuery"

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mCancelQuery:Z

    .line 311
    return-void
.end method

.method public preHandleQuery(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preHandleQuery status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 261
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->handleQuery()V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preHandleQuery mQuery="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    const-string/jumbo v3, " |mNewQuery="

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    iget-object v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    const-string/jumbo v3, " |isNewQuery="

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    iget-boolean v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 268
    const-string/jumbo v3, " |address="

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    .line 270
    invoke-direct {p0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->handleQuery()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->startAsyncQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    const-string/jumbo v2, "Query status error"

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public requestQuery(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const-string/jumbo v1, "SearchConversationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestQuery:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap0(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    if-nez p1, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mNewQuery:Ljava/lang/String;

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->isNewQuery:Z

    .line 238
    iget v0, p0, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 250
    :goto_0
    :pswitch_0
    return-void

    .line 240
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->handleQuery()V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/SearchConversationActivity$QueryAddressTask;->handleQuery()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
