.class Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;
.super Landroid/os/AsyncTask;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipeMonitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDataId:J

.field private final mDescriptor:Landroid/os/ParcelFileDescriptor;

.field private final mRawContactId:J

.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 0

    .prologue
    .line 9196
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 9197
    iput-wide p2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    .line 9198
    iput-wide p4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    .line 9199
    iput-object p6, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 9200
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;-><init>(Lcom/android/providers/contacts/ContactsProvider2;JJLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 9204
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 9206
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9207
    if-eqz v0, :cond_1

    .line 9208
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v3}, Lcom/android/providers/contacts/ContactsProvider2;->-get4(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/providers/contacts/ContactsProvider2;->-wrap0(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/concurrent/CountDownLatch;)V

    .line 9210
    new-instance v2, Lcom/android/providers/contacts/PhotoProcessor;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxDisplayPhotoDim()I

    move-result v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailDim()I

    move-result v4

    invoke-direct {v2, v0, v3, v4}, Lcom/android/providers/contacts/PhotoProcessor;-><init>(Landroid/graphics/Bitmap;II)V

    .line 9213
    iget-wide v4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v4, v5}, Landroid/provider/ContactsContract;->isProfileId(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9214
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->-get3(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v0

    .line 9216
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/PhotoStore;->insert(Lcom/android/providers/contacts/PhotoProcessor;)J

    move-result-wide v4

    .line 9220
    iget-wide v6, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    cmp-long v0, v6, v10

    if-eqz v0, :cond_3

    .line 9222
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9225
    const-string/jumbo v3, "skip_processing"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9227
    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    .line 9228
    const-string/jumbo v3, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9230
    :cond_0
    const-string/jumbo v3, "data15"

    invoke-virtual {v2}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 9231
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mDataId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 9232
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 9231
    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/providers/contacts/ContactsProvider2;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9256
    :cond_1
    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9258
    return-object v8

    .line 9215
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->-get1(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/PhotoStore;

    move-result-object v0

    goto :goto_0

    .line 9235
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9238
    const-string/jumbo v3, "skip_processing"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 9240
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9241
    const-string/jumbo v3, "is_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 9242
    cmp-long v3, v4, v10

    if-eqz v3, :cond_4

    .line 9243
    const-string/jumbo v3, "data14"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 9245
    :cond_4
    const-string/jumbo v3, "data15"

    invoke-virtual {v2}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 9246
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 9247
    iget-wide v4, p0, Lcom/android/providers/contacts/ContactsProvider2$PipeMonitor;->mRawContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 9246
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    .line 9248
    const-string/jumbo v4, "data"

    .line 9246
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 9253
    :catch_0
    move-exception v0

    .line 9254
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9255
    :catchall_0
    move-exception v0

    .line 9256
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 9255
    throw v0
.end method
