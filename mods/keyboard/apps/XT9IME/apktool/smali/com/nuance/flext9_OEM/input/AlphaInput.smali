.class public Lcom/nuance/flext9_OEM/input/AlphaInput;
.super Lcom/nuance/flext9_OEM/input/Input;
.source "AlphaInput.java"


# static fields
.field public static final LOCKED:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "XT9IME"

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x20

.field public static final SHIFTED:I = 0x1

.field public static final UNSHIFTED:I = 0x0

.field private static final WORDCOMPLETIONLEN_INDEX:I = 0x1

.field private static final WORDLEN_INDEX:I = 0x0

.field private static final WORDSUBSTITUTIONLEN_INDEX:I = 0x2

.field private static mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;

.field private static mRefCount:I


# instance fields
.field private mContext:I

.field private final mDatabaseConfigFile:Ljava/lang/String;

.field private final mSubsLenResults:[I

.field private final mWordBuffer:[C

.field private final mWordLenResutls:[I

.field private final mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mWordSubBuffer:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 18
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x3

    .line 44
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Input;-><init>()V

    .line 32
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    .line 33
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordSubBuffer:[C

    .line 34
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    .line 35
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mSubsLenResults:[I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordPool:Ljava/util/List;

    .line 47
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/AlphaInput;
    .locals 2

    .prologue
    const-class v1, Lcom/nuance/flext9_OEM/input/AlphaInput;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/nuance/flext9_OEM/input/AlphaInput;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;

    .line 57
    :cond_0
    sget v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mRefCount:I

    .line 63
    sget-object v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private recycleWordPool()V
    .locals 4

    .prologue
    .line 621
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 622
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 624
    :goto_0
    const/16 v0, 0x20

    if-ge v1, v0, :cond_0

    if-lez v2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 626
    if-eqz v0, :cond_1

    .line 627
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    add-int/lit8 v0, v1, 0x1

    .line 630
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 633
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addCustomSymbolSet([CII)Z
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_addCustomSymbolSet(I[CII)Z

    move-result v0

    return v0
.end method

.method public addExplicit([CII)Z
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_addExplicit(I[CII)Z

    move-result v0

    return v0
.end method

.method public addWordToUserDictionary([CI)Z
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_addWordToUserDictionary(I[CI)Z

    move-result v0

    return v0
.end method

.method public asdbAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 552
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 555
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 556
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 555
    invoke-static {v0, p1, v1, p2, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_add(ILjava/lang/String;ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public asdbCount()I
    .locals 1

    .prologue
    .line 604
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 605
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 608
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_count(I)I

    move-result v0

    return v0
.end method

.method public asdbDelete(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 560
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 564
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_delete(I[CI)Z

    move-result v0

    return v0
.end method

.method public asdbFind(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 568
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 569
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 572
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 573
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 572
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_find(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public asdbGetNext(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 577
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v6

    .line 582
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mSubsLenResults:[I

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    aput v1, v0, v6

    .line 584
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v6, v0, v1, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 588
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordSubBuffer:[C

    invoke-virtual {p2, v6, v0, v1, v6}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 592
    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 593
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 594
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    .line 595
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mSubsLenResults:[I

    const/16 v5, 0x40

    .line 594
    invoke-static/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_getNext(I[C[I[C[II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v1, v1, v6

    invoke-virtual {p1, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 597
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mSubsLenResults:[I

    aget v1, v1, v6

    invoke-virtual {p2, v0, v6, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 600
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public asdbReset()V
    .locals 1

    .prologue
    .line 612
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 616
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_asdb_reset(I)V

    .line 617
    return-void
.end method

.method public breakContext()V
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_breakContext(I)V

    .line 365
    return-void
.end method

.method public buildSelectionList()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_buildSelectionList(I)I

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_clearAllKeys(I)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_clearKey(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized create()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 72
    :try_start_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_create(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    .line 79
    :cond_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 89
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mRefCount:I

    if-nez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_destroy(I)V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mInstance:Lcom/nuance/flext9_OEM/input/AlphaInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 102
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 637
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/Input;->finalize()V

    .line 638
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_finish(I)V

    .line 112
    return-void
.end method

.method public getDefaultWordIndex()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getDefaultWordIndex(I)I

    move-result v0

    return v0
.end method

.method public getExactType(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 377
    if-nez p1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 384
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getExactType(I[CI)I

    move-result v0

    if-lez v0, :cond_1

    .line 385
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    return-void
.end method

.method public getHardKeyboardLayout(I[C)I
    .locals 1

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public getInlineText(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    if-nez p1, :cond_0

    .line 396
    return-void

    .line 399
    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 402
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getInlineText(I[CI)I

    move-result v0

    if-lez v0, :cond_1

    .line 403
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    return-void
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getKeyCount(I)I

    move-result v0

    return v0
.end method

.method public getKeyPositions(ILjava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 130
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getKeyPositions(IILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public getWord(I[C[CLcom/nuance/flext9_OEM/input/Int;Lcom/nuance/flext9_OEM/input/Int;Lcom/nuance/flext9_OEM/input/Int;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 317
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    const/16 v5, 0x40

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getWord(II[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v0, v0, v6

    invoke-virtual {p4, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 319
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v0, v0, v7

    invoke-virtual {p5, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 320
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-virtual {p6, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 321
    return v7

    .line 324
    :cond_0
    return v6
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/SpannableStringBuilder;",
            "Lcom/nuance/flext9_OEM/input/Int;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 186
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->recycleWordPool()V

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 190
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->buildSelectionList()I

    move-result v7

    if-lez v7, :cond_3

    .line 196
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getDefaultWordIndex(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    move v1, v6

    .line 198
    :goto_0
    if-ge v1, v7, :cond_3

    const/16 v0, 0x20

    if-ge v1, v0, :cond_3

    .line 200
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordSubBuffer:[C

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    const/16 v5, 0x40

    invoke-static/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_getWord(II[C[C[II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 204
    if-lez v0, :cond_2

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 206
    :goto_1
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 207
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 221
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v2, v2, v6

    if-lez v2, :cond_3

    .line 222
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v3, v3, v6

    invoke-virtual {v0, v2, v6, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 228
    invoke-virtual {p2}, Lcom/nuance/flext9_OEM/input/Int;->getVal()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 242
    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 198
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_2
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    goto :goto_1

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public initTrace(III)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public isAutoSpaceBeforeTrace(ILjava/util/ArrayList;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_isAutoSpaceBeforeTrace(IILjava/util/List;)I

    move-result v0

    return v0
.end method

.method public isInlineKnown()Z
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_isInlineKnown(I)Z

    move-result v0

    return v0
.end method

.method public isSymbolLowerCase(C)Z
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_isLowerSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public isSymbolUpperCase(C)Z
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_isUpperSymbol(IC)Z

    move-result v0

    return v0
.end method

.method public processKey(III)Z
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_processKey(IIII)Z

    move-result v0

    return v0
.end method

.method public processTap(IIIII)Z
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p2, p3, p4, p5}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_processTap(IIIII)Z

    move-result v0

    return v0
.end method

.method public processTrace(ILjava/util/ArrayList;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 178
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_processTrace(IILjava/util/List;I)Z

    move-result v0

    return v0
.end method

.method public recaptureWord(I[CI)Z
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2, p3}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_recaptureWord(II[CI)Z

    move-result v0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext([C)V
    .locals 2

    .prologue
    .line 368
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_setContext(I[CI)V

    .line 369
    return-void
.end method

.method public setKeyboardLayoutsize(II)V
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_setKeyboardLayoutSize(III)V

    .line 117
    return-void
.end method

.method public setLanguage(I)Z
    .locals 2

    .prologue
    .line 162
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {p1}, Lcom/nuance/flext9_OEM/input/Input;->normalizeXT9LanguageID(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_setLanguage(II)Z

    move-result v0

    return v0
.end method

.method public start(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_start(ILandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public toLowerSymbol(C)C
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_toLowerSymbol(IC)C

    move-result v0

    return v0
.end method

.method public toUpperSymbol(C)C
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_toUpperSymbol(IC)C

    move-result v0

    return v0
.end method

.method public udbAdd(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 467
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 470
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_add(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbCount()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 511
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_count(I)I

    move-result v0

    return v0
.end method

.method public udbDelete(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 474
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 475
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 477
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_delete(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbFind(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 481
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 482
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 484
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_find(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbGetNext(Ljava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 488
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v1, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    aput v2, v1, v0

    .line 493
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 498
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 499
    iget v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    const/16 v4, 0x40

    invoke-static {v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_getNext(I[C[II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 500
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mWordLenResutls:[I

    aget v2, v2, v0

    invoke-virtual {p1, v1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 503
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public udbGetRemainingMemory()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 537
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_getRemainingMemory(I)I

    move-result v0

    return v0
.end method

.method public udbGetSize()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 529
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_getSize(I)I

    move-result v0

    return v0
.end method

.method public udbRest()V
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 517
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 521
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_reset(I)V

    .line 522
    return-void
.end method

.method public udbScanBufF(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 541
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    if-nez v0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/AlphaInput;->create()Z

    .line 545
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_udb_scanBuf(I[CI)Z

    move-result v0

    return v0
.end method

.method public useKDBHardkey(Z)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public wordSelected(IZ)V
    .locals 1

    .prologue
    .line 335
    iget v0, p0, Lcom/nuance/flext9_OEM/input/AlphaInput;->mContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/WaveAlpha;->xt9input_alpha_wordSelected(IIZ)V

    .line 336
    return-void
.end method
