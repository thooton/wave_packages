.class public Lcom/android/music/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/SortCursor$1;
    }
.end annotation


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method static synthetic -set0(Lcom/android/music/SortCursor;I)I
    .locals 0

    iput p1, p0, Lcom/android/music/SortCursor;->mPos:I

    return p1
.end method

.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/16 v6, 0x40

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 33
    iput v6, p0, Lcom/android/music/SortCursor;->ROWCACHESIZE:I

    .line 34
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    .line 35
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    .line 39
    new-instance v0, Lcom/android/music/SortCursor$1;

    invoke-direct {v0, p0}, Lcom/android/music/SortCursor$1;-><init>(Lcom/android/music/SortCursor;)V

    iput-object v0, p0, Lcom/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 55
    iput-object p1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 57
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v4, v0

    .line 58
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    move v0, v3

    .line 59
    :goto_0
    if-ge v0, v4, :cond_1

    .line 60
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 59
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/music/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 66
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    iget-object v1, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    goto :goto_1

    .line 71
    :cond_1
    iput-object v5, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 72
    const-string/jumbo v0, ""

    move v2, v3

    .line 73
    :goto_2
    if-ge v2, v4, :cond_5

    .line 74
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v2

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    :cond_2
    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v1, v1, v2

    iget-object v5, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    aget v5, v5, v2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v5, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_2

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object v0, v1

    goto :goto_3

    .line 83
    :cond_5
    iget-object v0, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_6

    .line 84
    iget-object v1, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    const/4 v2, -0x2

    aput v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 86
    :cond_6
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v6, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    .line 87
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v0

    .line 260
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 260
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 265
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v0

    .line 250
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 250
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 255
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v0

    .line 238
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 239
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 240
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v1, v0

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 238
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No cursor that can return names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 92
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v1

    move v1, v0

    .line 93
    :goto_0
    if-ge v1, v2, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 93
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_1
    return v0
.end method

.method public getDouble(I)D
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    if-ne p1, p2, :cond_0

    .line 104
    return v10

    .line 114
    :cond_0
    rem-int/lit8 v7, p2, 0x40

    .line 116
    iget-object v0, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    aget v0, v0, v7

    if-ne v0, p2, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    aget v0, v0, v7

    .line 118
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 119
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    .line 120
    const-string/jumbo v0, "SortCursor"

    const-string/jumbo v2, "onMove: cache results in a null cursor."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    aget-object v2, v2, v7

    aget v0, v2, v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    iput v7, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    .line 125
    return v10

    .line 128
    :cond_2
    iput-object v2, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 129
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v8, v0

    .line 131
    iget v0, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    if-ltz v0, :cond_4

    move v0, v1

    .line 132
    :goto_0
    if-ge v0, v8, :cond_4

    .line 133
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_3

    .line 132
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    iget v4, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    aget-object v3, v3, v4

    aget v3, v3, v0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 139
    :cond_4
    if-lt p2, p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    move v0, v1

    .line 140
    :goto_2
    if-ge v0, v8, :cond_a

    .line 141
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_9

    .line 140
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, p1

    .line 147
    :goto_4
    if-gez v0, :cond_7

    move v0, v1

    :cond_7
    move v6, v0

    move v3, v5

    .line 153
    :goto_5
    if-gt v6, p2, :cond_f

    .line 154
    const-string/jumbo v0, ""

    move v4, v1

    move v3, v5

    .line 156
    :goto_6
    if-ge v4, v8, :cond_e

    .line 157
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v4

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v4

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_8
    move v2, v3

    .line 156
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_6

    .line 143
    :cond_9
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_3

    :cond_a
    move v0, v1

    .line 145
    goto :goto_4

    .line 160
    :cond_b
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v4

    iget-object v9, p0, Lcom/android/music/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 161
    if-ltz v3, :cond_c

    .line 162
    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_d

    :cond_c
    move-object v0, v2

    move v2, v4

    .line 164
    goto :goto_7

    :cond_d
    move v2, v3

    .line 162
    goto :goto_7

    .line 167
    :cond_e
    if-ne v6, p2, :cond_11

    .line 173
    :cond_f
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/music/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 174
    iget-object v0, p0, Lcom/android/music/SortCursor;->mRowNumCache:[I

    aput p2, v0, v7

    .line 175
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursorCache:[I

    aput v3, v0, v7

    .line 176
    :goto_8
    if-ge v1, v8, :cond_13

    .line 177
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCurRowNumCache:[[I

    aget-object v0, v0, v7

    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    aput v2, v0, v1

    .line 176
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 169
    :cond_11
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v0, v3

    if-eqz v0, :cond_12

    .line 170
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v0, v0, v3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 153
    :cond_12
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    .line 181
    :cond_13
    iput v5, p0, Lcom/android/music/SortCursor;->mLastCacheHit:I

    .line 182
    return v10
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v0

    .line 270
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 271
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 270
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 275
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v0

    move v0, v1

    .line 290
    :goto_0
    if-ge v0, v2, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 290
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v0

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_0

    .line 295
    return v1

    .line 299
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v0

    .line 280
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 281
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/android/music/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method
