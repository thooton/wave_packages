.class public Lcom/android/mms/util/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/BlobCache$LookupRequest;
    }
.end annotation


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    .line 126
    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mBlobHeader:[B

    .line 127
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    .line 413
    new-instance v0, Lcom/android/mms/util/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/android/mms/util/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

    .line 142
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    .line 143
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    .line 144
    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    .line 145
    iput p5, p0, Lcom/android/mms/util/BlobCache;->mVersion:I

    .line 147
    if-nez p4, :cond_0

    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 151
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/mms/util/BlobCache;->resetCache(II)V

    .line 153
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->closeAll()V

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_1
    return-void
.end method

.method private clearHash(I)V
    .locals 6

    .prologue
    const/16 v5, 0x400

    const/4 v4, 0x0

    .line 354
    new-array v1, v5, [B

    .line 355
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v0, 0xc

    :goto_0
    if-lez v0, :cond_0

    .line 357
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 358
    iget-object v3, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 359
    sub-int/2addr v0, v2

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method private closeAll()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 186
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 187
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    .line 188
    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 631
    if-nez p0, :cond_0

    return-void

    .line 633
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :goto_0
    return-void

    .line 634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 169
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method private flipRegion()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    .line 332
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    .line 334
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 335
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 336
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    const/16 v2, 0x14

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 337
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->updateIndexHeader()V

    .line 339
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->setActiveVariables()V

    .line 340
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/android/mms/util/BlobCache;->clearHash(I)V

    .line 341
    invoke-virtual {p0}, Lcom/android/mms/util/BlobCache;->syncIndex()V

    .line 342
    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/android/mms/util/BlobCache$LookupRequest;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 482
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mBlobHeader:[B

    .line 483
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 485
    int-to-long v4, p2

    :try_start_0
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 486
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/16 v4, 0x14

    if-eq v1, v4, :cond_0

    .line 487
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read blob header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 488
    return v8

    .line 490
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readLong([BI)J

    move-result-wide v4

    .line 491
    iget-wide v6, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->key:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 492
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "blob key does not match: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 493
    return v8

    .line 495
    :cond_1
    const/16 v1, 0x8

    :try_start_2
    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    .line 496
    const/16 v4, 0xc

    invoke-static {v0, v4}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v4

    .line 497
    if-eq v4, p2, :cond_2

    .line 498
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "blob offset does not match: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 499
    return v8

    .line 501
    :cond_2
    const/16 v4, 0x10

    :try_start_3
    invoke-static {v0, v4}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v0

    .line 502
    if-ltz v0, :cond_3

    iget v4, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    sub-int/2addr v4, p2

    add-int/lit8 v4, v4, -0x14

    if-le v0, v4, :cond_4

    .line 503
    :cond_3
    const-string/jumbo v1, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid blob length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 504
    return v8

    .line 506
    :cond_4
    :try_start_4
    iget-object v4, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    if-eqz v4, :cond_5

    iget-object v4, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    array-length v4, v4

    if-ge v4, v0, :cond_6

    .line 507
    :cond_5
    new-array v4, v0, [B

    iput-object v4, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    .line 510
    :cond_6
    iget-object v4, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    .line 511
    iput v0, p3, Lcom/android/mms/util/BlobCache$LookupRequest;->length:I

    .line 513
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    if-eq v5, v0, :cond_7

    .line 514
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read blob data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 515
    return v8

    .line 517
    :cond_7
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {p0, v4, v5, v0}, Lcom/android/mms/util/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v1, :cond_8

    .line 518
    const-string/jumbo v0, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "blob checksum does not match: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 519
    return v8

    .line 521
    :cond_8
    const/4 v0, 0x1

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 521
    return v0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    :try_start_6
    const-string/jumbo v1, "Mms"

    const-string/jumbo v4, "getBlob failed."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 524
    return v8

    .line 525
    :catchall_0
    move-exception v0

    .line 526
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 525
    throw v0
.end method

.method private insertInternal(J[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x14

    const/4 v3, 0x0

    .line 390
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mBlobHeader:[B

    .line 391
    invoke-virtual {p0, p3}, Lcom/android/mms/util/BlobCache;->checkSum([B)I

    move-result v1

    .line 392
    invoke-static {v0, v3, p1, p2}, Lcom/android/mms/util/BlobCache;->writeLong([BIJ)V

    .line 393
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 394
    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 395
    const/16 v1, 0x10

    invoke-static {v0, v1, p4}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 396
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 397
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 399
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 400
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 401
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v1, p4, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    .line 402
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    invoke-static {v0, v4, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 403
    return-void
.end method

.method private loadIndex()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v6, 0x0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 195
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 198
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    .line 199
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    .line 200
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return v6

    .line 204
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    const v2, -0x4cd8cfd0

    if-eq v1, v2, :cond_1

    .line 205
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return v6

    .line 209
    :cond_1
    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mVersion:I

    if-eq v1, v2, :cond_2

    .line 210
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return v6

    .line 214
    :cond_2
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    .line 215
    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    .line 216
    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    .line 217
    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    .line 218
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    .line 220
    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    .line 221
    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/mms/util/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 222
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v6

    .line 227
    :cond_3
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_4

    .line 228
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v6

    .line 231
    :cond_4
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_5

    .line 232
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v6

    .line 235
    :cond_5
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    if-eq v0, v7, :cond_6

    .line 236
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return v6

    .line 239
    :cond_6
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_8

    .line 240
    :cond_7
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return v6

    .line 243
    :cond_8
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_a

    .line 244
    :cond_9
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v6

    .line 247
    :cond_a
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 248
    iget v2, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    .line 247
    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 249
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v6

    .line 254
    :cond_b
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 255
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_c

    .line 256
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return v6

    .line 259
    :cond_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 260
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v6

    .line 263
    :cond_d
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_e

    .line 264
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return v6

    .line 267
    :cond_e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/util/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    .line 268
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v6

    .line 273
    :cond_f
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    .line 274
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    .line 275
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 274
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    .line 276
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 278
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->setActiveVariables()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    return v7

    .line 280
    :catch_0
    move-exception v0

    .line 281
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "loadIndex failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    return v6
.end method

.method private lookupInternal(JI)Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 540
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    .line 541
    if-gez v0, :cond_0

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    add-int/2addr v0, v1

    :cond_0
    move v1, v0

    .line 544
    :cond_1
    :goto_0
    mul-int/lit8 v3, v1, 0xc

    add-int/2addr v3, p3

    .line 545
    iget-object v4, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    .line 546
    iget-object v6, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    .line 547
    if-nez v6, :cond_2

    .line 548
    iput v3, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    .line 549
    return v2

    .line 550
    :cond_2
    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    .line 551
    iput v3, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    .line 552
    iput v6, p0, Lcom/android/mms/util/BlobCache;->mFileOffset:I

    .line 553
    const/4 v0, 0x1

    return v0

    .line 555
    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    if-lt v1, v3, :cond_4

    move v1, v2

    .line 558
    :cond_4
    if-ne v1, v0, :cond_1

    .line 559
    const-string/jumbo v3, "Mms"

    const-string/jumbo v4, "corrupted index: clear the slot."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v3, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v4, v1, 0xc

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method static readInt([BI)I
    .locals 2

    .prologue
    .line 640
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 641
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 640
    or-int/2addr v0, v1

    .line 642
    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 640
    or-int/2addr v0, v1

    .line 643
    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 640
    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .locals 6

    .prologue
    .line 647
    add-int/lit8 v0, p1, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v2, v0

    .line 648
    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_0

    .line 649
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    add-int v1, p1, v0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    or-long/2addr v2, v4

    .line 648
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 651
    :cond_0
    return-wide v2
.end method

.method private resetCache(II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x1c

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 304
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v1, p1, 0xc

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x20

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 305
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 306
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    .line 307
    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 308
    invoke-static {v0, v5, p1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 309
    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 310
    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 311
    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 312
    const/16 v1, 0x14

    invoke-static {v0, v1, v5}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 313
    iget v1, p0, Lcom/android/mms/util/BlobCache;->mVersion:I

    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 314
    invoke-virtual {p0, v0, v4, v8}, Lcom/android/mms/util/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 315
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 319
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 320
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 321
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 322
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 323
    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 324
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 325
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 326
    return-void
.end method

.method private setActiveVariables()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 287
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    .line 288
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/android/mms/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    .line 289
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 290
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 292
    iput v4, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    .line 293
    iput v4, p0, Lcom/android/mms/util/BlobCache;->mInactiveHashStart:I

    .line 295
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_2

    .line 296
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mInactiveHashStart:I

    .line 300
    :goto_2
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_0

    .line 288
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_1

    .line 298
    :cond_2
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    goto :goto_2
.end method

.method private updateIndexHeader()V
    .locals 4

    .prologue
    const/16 v3, 0x1c

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    .line 347
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/mms/util/BlobCache;->checkSum([BII)I

    move-result v1

    .line 346
    invoke-static {v0, v3, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 348
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 349
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 350
    return-void
.end method

.method static writeInt([BII)V
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 656
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 657
    shr-int/lit8 p2, p2, 0x8

    .line 655
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method

.method static writeLong([BIJ)V
    .locals 6

    .prologue
    const/16 v4, 0x8

    .line 662
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    .line 663
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    .line 664
    shr-long/2addr p2, v4

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    return-void
.end method


# virtual methods
.method checkSum([B)I
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 620
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    .line 621
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    .line 626
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 627
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public clearEntry(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/util/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    return-void

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mBlobHeader:[B

    .line 593
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 594
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mFileOffset:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 595
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 596
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/mms/util/BlobCache;->syncAll()V

    .line 180
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->closeAll()V

    .line 181
    return-void
.end method

.method public insert(J[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_0

    .line 366
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_1

    .line 370
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_2

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->flipRegion()V

    .line 374
    :cond_2
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/util/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    .line 378
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 381
    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/mms/util/BlobCache;->insertInternal(J[BI)V

    .line 382
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->updateIndexHeader()V

    .line 383
    return-void
.end method

.method public lookup(Lcom/android/mms/util/BlobCache$LookupRequest;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 436
    iget-wide v0, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->key:J

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/util/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/mms/util/BlobCache$LookupRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    return v4

    .line 445
    :cond_0
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    .line 448
    iget-wide v2, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->key:J

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v2, v3, v1}, Lcom/android/mms/util/BlobCache;->lookupInternal(JI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/mms/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v1, v2, p1}, Lcom/android/mms/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/android/mms/util/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 452
    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v1, v1, 0x14

    iget v2, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->length:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mMaxBytes:I

    if-gt v1, v2, :cond_1

    .line 453
    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/mms/util/BlobCache;->mMaxEntries:I

    if-lt v1, v2, :cond_2

    .line 454
    :cond_1
    return v4

    .line 457
    :cond_2
    iput v0, p0, Lcom/android/mms/util/BlobCache;->mSlotOffset:I

    .line 459
    :try_start_0
    iget-wide v0, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->key:J

    iget-object v2, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    iget v3, p1, Lcom/android/mms/util/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/mms/util/BlobCache;->insertInternal(J[BI)V

    .line 460
    iget v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    .line 461
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexHeader:[B

    iget v1, p0, Lcom/android/mms/util/BlobCache;->mActiveEntries:I

    const/16 v2, 0x10

    invoke-static {v0, v2, v1}, Lcom/android/mms/util/BlobCache;->writeInt([BII)V

    .line 462
    invoke-direct {p0}, Lcom/android/mms/util/BlobCache;->updateIndexHeader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :goto_0
    return v4

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "cannot copy over"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 470
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public lookup(J)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

    iput-wide p1, v0, Lcom/android/mms/util/BlobCache$LookupRequest;->key:J

    .line 416
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

    iput-object v1, v0, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    .line 417
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

    invoke-virtual {p0, v0}, Lcom/android/mms/util/BlobCache;->lookup(Lcom/android/mms/util/BlobCache$LookupRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mLookupRequest:Lcom/android/mms/util/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/android/mms/util/BlobCache$LookupRequest;->buffer:[B

    return-object v0

    .line 420
    :cond_0
    return-object v1
.end method

.method public syncAll()V
    .locals 3

    .prologue
    .line 575
    invoke-virtual {p0}, Lcom/android/mms/util/BlobCache;->syncIndex()V

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 582
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 586
    :goto_1
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    .line 584
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public syncIndex()V
    .locals 3

    .prologue
    .line 568
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
