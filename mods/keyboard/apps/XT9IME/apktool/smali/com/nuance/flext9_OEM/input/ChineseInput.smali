.class public Lcom/nuance/flext9_OEM/input/ChineseInput;
.super Lcom/nuance/flext9_OEM/input/Input;
.source "ChineseInput.java"


# static fields
.field private static final COMPONENT_MARKER:C = '\u9fff'

.field private static final INTERNAL_DELIMITER:C = '\u001a'

.field private static final INTERNAL_SEGMENT_DELIMITER:C = '\u0019'

.field public static final MAXWORDLEN:I = 0x40

.field public static final MAXWORDLIST:I = 0x100

.field private static mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

.field private static mPhraseBuffer:[C

.field private static mPhraseLength:[I

.field private static mRefCount:I

.field private static mSpellBuffer:[C

.field private static mSpellLength:[I


# instance fields
.field private mActiveSpell:Ljava/lang/StringBuilder;

.field private mBopomofoSyllableDelimiter:C

.field private mCangjie:[C

.field private mChineseDelimiter:C

.field private mChineseSegmentDelimiter:C

.field private mCompForeground:Landroid/text/style/ForegroundColorSpan;

.field private mCompSimp:[C

.field private mCompTrad:[C

.field private mContext:Landroid/content/Context;

.field private mDatabaseConfigFile:Ljava/lang/String;

.field private mJNIContext:I

.field private mJianpin:[C

.field private mPrefixCount:I

.field private mScratchBuffer:[C

.field private mScratchInt:[I

.field private mSelectedForeground:Landroid/text/style/ForegroundColorSpan;

.field private mSpellCount:I

.field private mSpellForeground:Landroid/text/style/ForegroundColorSpan;

.field private mSpellList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSpellPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokes:[C

.field mTextContext:Ljava/lang/String;

.field private mTones:[C

.field private mWordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mWordPool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x1

    .line 166
    const/4 v0, 0x0

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    .line 913
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseBuffer:[C

    .line 914
    new-array v0, v2, [C

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellBuffer:[C

    .line 915
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseLength:[I

    .line 916
    new-array v0, v1, [I

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellLength:[I

    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/16 v2, 0x40

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/Input;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    .line 81
    new-array v0, v2, [C

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    .line 83
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    .line 147
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    .line 151
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPrefixCount:I

    .line 183
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mDatabaseConfigFile:Ljava/lang/String;

    .line 184
    return-void
.end method

.method private cangjieToInternal(I)I
    .locals 2

    .prologue
    .line 963
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCangjie:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCangjie:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 965
    add-int/lit8 v0, v0, 0x41

    return v0

    .line 963
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 969
    :cond_1
    return p1
.end method

.method private componentToExternal(C)C
    .locals 4

    .prologue
    const v1, 0xeeb8

    const v3, 0xef88

    .line 979
    if-gt v1, p1, :cond_0

    const v0, 0xef7f

    if-gt p1, v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompSimp:[C

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    return v0

    .line 982
    :cond_0
    if-gt v3, p1, :cond_1

    const v0, 0xf120

    if-gt p1, v0, :cond_1

    .line 983
    const-string/jumbo v0, "ChineseInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-int v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompTrad:[C

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/Debug;->trace(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompTrad:[C

    sub-int v1, p1, v3

    aget-char v0, v0, v1

    return v0

    .line 986
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getActivePrefixIndex()I
    .locals 1

    .prologue
    .line 895
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getActivePrefixIndex(I)I

    move-result v0

    return v0
.end method

.method private getActiveSpellIndexInternal()I
    .locals 1

    .prologue
    .line 841
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getActiveSpellIndex(I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/ChineseInput;
    .locals 2

    .prologue
    const-class v1, Lcom/nuance/flext9_OEM/input/ChineseInput;

    monitor-enter v1

    .line 172
    :try_start_0
    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/nuance/flext9_OEM/input/ChineseInput;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;

    .line 175
    :cond_0
    sget v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mRefCount:I

    .line 176
    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseInput:Lcom/nuance/flext9_OEM/input/ChineseInput;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPrefix(ILjava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 873
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 875
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v3, v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getPrefix(II[C[II)Z

    move-result v0

    .line 877
    if-eqz v0, :cond_0

    .line 878
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v4

    invoke-virtual {p2, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 879
    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getInputMode(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 880
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 884
    :cond_0
    return v0
.end method

.method private getPrefixCount()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getPrefixCount(I)I

    move-result v0

    return v0
.end method

.method private getSpellInternal(ILjava/lang/StringBuilder;)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 782
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 784
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v0, p1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getSpell(II[C[II)Z

    move-result v2

    .line 786
    if-eqz v2, :cond_1

    .line 787
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v0, v0, v1

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v0, v0, v6

    if-ne v0, v8, :cond_2

    .line 788
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJianpin:[C

    aget-char v3, v3, v1

    aput-char v3, v0, v1

    .line 789
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJianpin:[C

    aget-char v3, v3, v6

    aput-char v3, v0, v6

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v3, v3, v1

    invoke-virtual {p2, v0, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 806
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getInputMode(I)I

    move-result v0

    .line 807
    if-ne v6, v0, :cond_6

    .line 808
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->normalizeBPMF(Ljava/lang/StringBuilder;)V

    .line 818
    :cond_1
    :goto_0
    return v2

    :cond_2
    move v0, v1

    .line 792
    :goto_1
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v3, v3, v1

    if-ge v0, v3, :cond_0

    .line 793
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x19

    if-ne v3, v4, :cond_4

    .line 794
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-char v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseSegmentDelimiter:C

    aput-char v4, v3, v0

    .line 792
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 796
    :cond_4
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_5

    .line 797
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-char v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseDelimiter:C

    aput-char v4, v3, v0

    goto :goto_2

    .line 799
    :cond_5
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_3

    .line 800
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTones:[C

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v5, v5, v0

    add-int/lit8 v5, v5, -0x1b

    aget-char v4, v4, v5

    aput-char v4, v3, v0

    goto :goto_2

    .line 810
    :cond_6
    if-ne v7, v0, :cond_7

    .line 811
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->normalizeStroke(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 813
    :cond_7
    if-eq v8, v0, :cond_8

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 814
    :cond_8
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->normalizeCangjie(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private getSpellPrefix()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x100

    const/16 v4, 0x40

    const/4 v1, 0x0

    .line 637
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    .line 638
    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPrefixCount:I

    move v2, v1

    .line 639
    :goto_0
    if-ge v2, v5, :cond_2

    .line 640
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 642
    if-lez v0, :cond_0

    .line 643
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 646
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 647
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    .line 639
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 644
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 651
    :cond_1
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_2
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    rsub-int v2, v0, 0x100

    .line 656
    :goto_2
    if-ge v1, v2, :cond_5

    .line 657
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 659
    if-lez v0, :cond_3

    .line 660
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 663
    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getPrefix(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPrefixCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPrefixCount:I

    .line 656
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 661
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_3

    .line 668
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    return-object v0
.end method

.method private normalizeBPMF(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1030
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1031
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1032
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->tolowerBPMF(C)C

    move-result v3

    .line 1033
    if-eq v2, v3, :cond_0

    .line 1034
    invoke-virtual {p1, v0, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1035
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseSegmentDelimiter:C

    if-eq v2, v3, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-char v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseDelimiter:C

    if-eq v2, v3, :cond_0

    .line 1036
    iget-char v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mBopomofoSyllableDelimiter:C

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1037
    add-int/lit8 v0, v0, 0x1

    .line 1038
    add-int/lit8 v1, v1, 0x1

    .line 1030
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    return-void
.end method

.method private normalizeCangjie(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    .line 1004
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1005
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 1006
    const/16 v2, 0x41

    if-gt v2, v1, :cond_0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_0

    .line 1007
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCangjie:[C

    add-int/lit8 v1, v1, -0x41

    aget-char v1, v2, v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1004
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_1
    return-void
.end method

.method private normalizeComponents(Ljava/lang/StringBuilder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 994
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->componentToExternal(C)C

    move-result v0

    .line 995
    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 997
    const v0, 0x9fff

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 999
    :cond_0
    return-void
.end method

.method private normalizeStroke(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 1046
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 1047
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1048
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 1049
    const/4 v3, 0x1

    if-gt v3, v2, :cond_0

    const/4 v3, 0x6

    if-gt v2, v3, :cond_0

    .line 1050
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mStrokes:[C

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v3, v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 1047
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    return-void
.end method

.method private readStyles(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/high16 v6, -0x10000

    .line 1059
    sget-object v0, Lcom/nuance/flext9_OEM/input/R$styleable;->InlineStringChinese:[I

    const v1, 0x7f0e0002

    .line 1058
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1063
    const-string/jumbo v0, "layout_inflater"

    .line 1062
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1065
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 1067
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 1068
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 1070
    packed-switch v3, :pswitch_data_0

    .line 1067
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1072
    :pswitch_0
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSelectedForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1075
    :pswitch_1
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1078
    :pswitch_2
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const v5, -0xff0100

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-direct {v4, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompForeground:Landroid/text/style/ForegroundColorSpan;

    goto :goto_1

    .line 1082
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1083
    return-void

    .line 1070
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private recycleSpellPool()V
    .locals 4

    .prologue
    .line 732
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 733
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 735
    :goto_0
    const/16 v0, 0x100

    if-ge v1, v0, :cond_0

    if-lez v2, :cond_0

    .line 736
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 737
    if-eqz v0, :cond_1

    .line 738
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    add-int/lit8 v0, v1, 0x1

    .line 741
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 744
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private recycleWordPool()V
    .locals 4

    .prologue
    .line 751
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 752
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v0

    .line 754
    :goto_0
    const/16 v0, 0x100

    if-ge v1, v0, :cond_0

    if-lez v2, :cond_0

    .line 755
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 756
    if-eqz v0, :cond_1

    .line 757
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v0, v1, 0x1

    .line 760
    :goto_1
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 763
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private setActivePrefixIndex(I)Z
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setActivePrefixIndex(II)Z

    move-result v0

    return v0
.end method

.method private setActiveSpellIndexInternal(I)Z
    .locals 1

    .prologue
    .line 830
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setActiveSpellIndex(II)Z

    move-result v0

    return v0
.end method

.method private tolowerBPMF(C)C
    .locals 2

    .prologue
    const v1, 0xf205

    .line 1019
    if-lt p1, v1, :cond_0

    const v0, 0xf22a

    if-gt p1, v0, :cond_0

    .line 1020
    sub-int v0, p1, v1

    add-int/lit16 v0, v0, 0x3105

    int-to-char p1, v0

    .line 1021
    :cond_0
    return p1
.end method


# virtual methods
.method public addDelimiter()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_addDelimiter(I)Z

    move-result v0

    return v0
.end method

.method public addTone(I)Z
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_addTone(II)Z

    move-result v0

    return v0
.end method

.method public addWordToUserDictionary(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 510
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_addWordToUserDictionary(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public breakContext()Z
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_breakContext(I)Z

    move-result v0

    return v0
.end method

.method public clearAllKeys()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_clearAllKeys(I)Z

    move-result v0

    return v0
.end method

.method public clearKey()Z
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_clearKey(I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized create()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 211
    :try_start_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    if-nez v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mDatabaseConfigFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_create(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    .line 214
    :cond_0
    iget v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I
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

.method public cycleTone()Z
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_cycleTone(I)Z

    move-result v0

    return v0
.end method

.method public deleteUserDictionaryWord(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 545
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_deleteUserDictionaryWord(I[CI)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized destroy()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 222
    :try_start_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    if-eqz v0, :cond_0

    sget v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mRefCount:I

    if-nez v0, :cond_0

    .line 223
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_destroy(I)V

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 226
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
    .line 767
    invoke-super {p0}, Lcom/nuance/flext9_OEM/input/Input;->finalize()V

    .line 768
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_finish(I)V

    .line 241
    return-void
.end method

.method public getActiveSpellIndex()I
    .locals 2

    .prologue
    .line 584
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_isPrefixBufferActive(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getActiveSpellIndexInternal()I

    move-result v0

    return v0

    .line 587
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getActivePrefixIndex()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getInlineString(Landroid/text/SpannableStringBuilder;)Z
    .locals 7

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 376
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 378
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v4, v4

    invoke-static {v0, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getSelection(I[C[II)Z

    move-result v2

    .line 380
    if-eqz v2, :cond_5

    move v0, v1

    .line 383
    :goto_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v3, v3, v1

    if-ge v0, v3, :cond_0

    .line 384
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    aget-char v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 386
    :cond_0
    if-lez v0, :cond_1

    .line 387
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSelectedForeground:Landroid/text/style/ForegroundColorSpan;

    const/16 v4, 0x121

    invoke-virtual {p1, v3, v1, v0, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 390
    :cond_1
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getActiveSpellIndexInternal()I

    move-result v0

    .line 391
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getSpellInternal(ILjava/lang/StringBuilder;)Z

    .line 394
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 395
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 397
    :cond_2
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 399
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJianpin:[C

    aget-char v4, v4, v1

    if-eq v3, v4, :cond_6

    .line 400
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 401
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/ChineseInput;->componentToExternal(C)C

    move-result v3

    .line 402
    if-eqz v3, :cond_4

    .line 403
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 405
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 406
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellForeground:Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p1, v1, v0, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 407
    if-eqz v3, :cond_5

    .line 408
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompForeground:Landroid/text/style/ForegroundColorSpan;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v1, v0, v3, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 414
    :cond_5
    return v2

    .line 399
    :cond_6
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mActiveSpell:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJianpin:[C

    aget-char v4, v4, v5

    if-eq v3, v4, :cond_5

    goto :goto_1
.end method

.method public getKeyCount()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getKeyCount(I)I

    move-result v0

    return v0
.end method

.method public getMoreWords()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    const/16 v1, 0x100

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 709
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 710
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 712
    if-lez v0, :cond_0

    .line 713
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 716
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getWord(ILjava/lang/StringBuilder;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 709
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 714
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_1

    .line 720
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordPool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public getSpells(Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nuance/flext9_OEM/input/Int;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getActiveSpellIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 620
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->recycleSpellPool()V

    .line 622
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getSpellPrefix()Ljava/util/List;

    .line 624
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellList:Ljava/util/List;

    return-object v0
.end method

.method public getUserDictionaryWord(ILjava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 529
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v3, v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getUserDictionaryWord(II[C[II)Z

    move-result v0

    .line 531
    if-eqz v0, :cond_0

    .line 532
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v4

    invoke-virtual {p2, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 535
    :cond_0
    return v0
.end method

.method public getWord(ILjava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 558
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 560
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v3, v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_getWord(II[C[II)Z

    move-result v0

    .line 562
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v4

    invoke-virtual {p2, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 564
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->normalizeComponents(Ljava/lang/StringBuilder;)V

    .line 567
    :cond_0
    return v0
.end method

.method public getWords(Landroid/text/SpannableStringBuilder;Lcom/nuance/flext9_OEM/input/Int;)Ljava/util/List;
    .locals 1
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
    .line 686
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/nuance/flext9_OEM/input/Int;->setVal(I)I

    .line 688
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->recycleWordPool()V

    .line 690
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getMoreWords()Ljava/util/List;

    .line 692
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->getInlineString(Landroid/text/SpannableStringBuilder;)Z

    .line 694
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mWordList:Ljava/util/List;

    return-object v0
.end method

.method public loadConfiguration(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    .line 189
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mStrokes:[C

    .line 190
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompSimp:[C

    .line 191
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCompTrad:[C

    .line 192
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mCangjie:[C

    .line 193
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTones:[C

    .line 195
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJianpin:[C

    .line 196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseDelimiter:C

    .line 197
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mChineseSegmentDelimiter:C

    .line 198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mBopomofoSyllableDelimiter:C

    .line 200
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->readStyles(Landroid/content/Context;)V

    .line 203
    :cond_0
    return-void
.end method

.method public processKey(III)Z
    .locals 2

    .prologue
    .line 286
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/ChineseInput;->cangjieToInternal(I)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_processKey(III)Z

    move-result v0

    return v0
.end method

.method public resetUserDictionary()Z
    .locals 1

    .prologue
    .line 496
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_resetUserDictionary(I)Z

    move-result v0

    return v0
.end method

.method public selectWord(ILjava/lang/StringBuilder;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 436
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    array-length v3, v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_selectWord(II[C[II)Z

    move-result v0

    .line 438
    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchBuffer:[C

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mScratchInt:[I

    aget v2, v2, v4

    invoke-virtual {p2, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    return v0
.end method

.method public setActiveSpellIndex(I)Z
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    if-ge p1, v0, :cond_0

    .line 604
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setActiveSpellIndexInternal(I)Z

    move-result v0

    return v0

    .line 606
    :cond_0
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellCount:I

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/ChineseInput;->setActivePrefixIndex(I)Z

    move-result v0

    return v0
.end method

.method public setAttribute(II)Z
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setAttribute(III)Z

    move-result v0

    return v0
.end method

.method public setContext(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 454
    if-nez p1, :cond_0

    .line 455
    return-void

    .line 458
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    .line 459
    return-void
.end method

.method public setInputMode(I)Z
    .locals 1

    .prologue
    .line 273
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setInputMode(II)Z

    move-result v0

    return v0
.end method

.method public setLanguage(I)Z
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0, p1}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setLanguage(II)Z

    move-result v0

    return v0
.end method

.method public start()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    .line 233
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_start(I)Z

    move-result v0

    return v0
.end method

.method public udbAdd(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 919
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 920
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    .line 919
    invoke-static {v0, v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_udbAdd(I[CI[CI)Z

    move-result v0

    return v0
.end method

.method public udbCount()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_udbCount(I)I

    move-result v0

    return v0
.end method

.method public udbDelete(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 924
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_udbDelete(I[CI)Z

    move-result v0

    return v0
.end method

.method public udbGetNext(ILjava/lang/StringBuilder;Ljava/lang/StringBuilder;)Z
    .locals 9

    .prologue
    const/16 v4, 0x40

    const/4 v8, 0x0

    .line 928
    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 929
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 931
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    .line 932
    sget-object v2, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseBuffer:[C

    sget-object v3, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseLength:[I

    .line 933
    sget-object v5, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellBuffer:[C

    sget-object v6, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellLength:[I

    move v1, p1

    move v7, v4

    .line 931
    invoke-static/range {v0 .. v7}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_udbGetNext(II[C[II[C[II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 935
    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseBuffer:[C

    sget-object v1, Lcom/nuance/flext9_OEM/input/ChineseInput;->mPhraseLength:[I

    aget v1, v1, v8

    invoke-virtual {p2, v0, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 936
    sget-object v0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellBuffer:[C

    sget-object v1, Lcom/nuance/flext9_OEM/input/ChineseInput;->mSpellLength:[I

    aget v1, v1, v8

    invoke-virtual {p3, v0, v8, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 937
    const/4 v0, 0x1

    return v0

    .line 940
    :cond_0
    return v8
.end method

.method public udbReset()V
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_udbReset(I)V

    .line 949
    return-void
.end method

.method public updateContext(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    .line 469
    iget v0, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mJNIContext:I

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ChineseInput;->mTextContext:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/NativeChineseInput;->xt9input_chinese_setContext(I[CI)Z

    .line 470
    const/4 v0, 0x1

    return v0

    .line 473
    :cond_1
    return v2
.end method
