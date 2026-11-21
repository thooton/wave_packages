.class public Lcom/nuance/flext9_OEM/input/HardKeyboard;
.super Ljava/lang/Object;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HardKeyboard$1;,
        Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;,
        Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;,
        Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;,
        Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;,
        Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;
    }
.end annotation


# static fields
.field public static SHIFT_STATE_ALWAYS:I = 0x0

.field public static SHIFT_STATE_NEVER:I = 0x0

.field public static SHIFT_STATE_SHIFTABLE:I = 0x0

.field public static SHIFT_STATE_UNSHIFTABLE:I = 0x0

.field private static final mCapsLockPageName:Ljava/lang/String; = "Caps"

.field private static final mCapsNumberPageName:Ljava/lang/String; = "CapsNumber"

.field private static final mNormalPageName:Ljava/lang/String; = "XT9"

.field private static final mNumberPageName:Ljava/lang/String; = "Number"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

.field mHandler:Landroid/os/Handler;

.field mHardKeySymbolWindow:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

.field mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

.field private mHardKeyboardLayoutID:Ljava/lang/String;

.field private mIme:Lcom/nuance/flext9_OEM/input/IME;

.field private mLanguageId:I

.field private mLastMode:Ljava/lang/String;

.field private mLastPage:Ljava/lang/String;

.field private mLayoutId:I

.field private mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

.field private mModeNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageNames:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/HardKeyboardPage;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    return-object v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/IME;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    return-object v0
.end method

.method static synthetic -get2(Lcom/nuance/flext9_OEM/input/HardKeyboard;)Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;
    .locals 1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/HardKeyboard;Lcom/nuance/flext9_OEM/input/IME;)Lcom/nuance/flext9_OEM/input/IME;
    .locals 0

    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/HardKeyboard;Lcom/nuance/flext9_OEM/input/HardKeyboardPage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->AddPage(Lcom/nuance/flext9_OEM/input/HardKeyboardPage;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_NEVER:I

    .line 50
    const/4 v0, 0x1

    sput v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_SHIFTABLE:I

    .line 51
    const/4 v0, 0x2

    sput v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_UNSHIFTABLE:I

    .line 52
    const/4 v0, 0x3

    sput v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_ALWAYS:I

    .line 20
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 700
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 81
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeySymbolWindow:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 87
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$1;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    .line 1333
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLayoutId:I

    .line 1334
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLanguageId:I

    .line 1335
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    .line 1336
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1337
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPageNames:Ljava/util/HashSet;

    .line 1338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mModeNames:Ljava/util/HashSet;

    .line 1339
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 1340
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1341
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1342
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 1343
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mContext:Landroid/content/Context;

    .line 701
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLayoutId:I

    .line 702
    iput p2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLanguageId:I

    .line 703
    return-void
.end method

.method private AddPage(Lcom/nuance/flext9_OEM/input/HardKeyboardPage;)V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 946
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 950
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPageNames:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPageNames:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mModeNames:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 955
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mModeNames:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 957
    :cond_2
    return-void
.end method

.method private getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;
    .locals 3

    .prologue
    .line 693
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 694
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    return-object v0

    .line 698
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z
    .locals 10

    .prologue
    const/16 v4, 0x3ed

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 984
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_1

    .line 985
    :cond_0
    return v9

    .line 988
    :cond_1
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    .line 991
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-ne v0, v1, :cond_23

    .line 992
    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getStringData()Ljava/lang/String;

    move-result-object v4

    .line 993
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 997
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPageNames:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 998
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v1

    .line 1005
    :goto_0
    if-eqz v3, :cond_4

    .line 1007
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1008
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v7}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1014
    :goto_1
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-eq v1, v3, :cond_4

    .line 1015
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getPressedKeys()Ljava/util/List;

    move-result-object v0

    .line 1016
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1017
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1019
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1020
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1022
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->resetShiftStat()V

    .line 1023
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->setPressedKeys(Ljava/util/List;)Z

    .line 1025
    return v8

    .line 1031
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mModeNames:Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1032
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1039
    :goto_2
    if-eqz v1, :cond_8

    .line 1041
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1042
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1048
    :goto_3
    if-eqz v0, :cond_7

    .line 1049
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1050
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1052
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1053
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1055
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->setInputMode(Ljava/lang/String;)Z

    .line 1056
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->resetShiftStat()V

    .line 1059
    :cond_7
    return v8

    .line 1063
    :cond_8
    const-string/jumbo v1, "LastPage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1065
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1066
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1072
    :goto_4
    if-eqz v0, :cond_a

    .line 1073
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1074
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1076
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1077
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1079
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->resetShiftStat()V

    .line 1082
    :cond_a
    return v8

    .line 1086
    :cond_b
    const-string/jumbo v1, "LastInputMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 1088
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1089
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1095
    :goto_5
    if-eqz v0, :cond_d

    .line 1096
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1097
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1098
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1100
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->setInputMode(Ljava/lang/String;)Z

    .line 1104
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->resetShiftStat()V

    .line 1107
    :cond_d
    return v8

    .line 1111
    :cond_e
    const-string/jumbo v1, "Symbol"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1112
    if-nez v0, :cond_f

    return v9

    .line 1113
    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1114
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getParentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/InputView;

    .line 1133
    :cond_10
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getInputFieldInfo()Lcom/nuance/flext9_OEM/input/InputFieldInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/InputFieldInfo;->isNumberField()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1134
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 1135
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->showEmojilayout()V

    .line 1141
    :goto_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1142
    return v8

    .line 1137
    :cond_11
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/InputView;->sendKeyChar(C)V

    goto :goto_6

    .line 1146
    :cond_12
    const-string/jumbo v1, "Menu"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1147
    if-nez v0, :cond_13

    return v9

    .line 1148
    :cond_13
    new-instance v1, Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1149
    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->show()V

    .line 1153
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1154
    return v8

    .line 1157
    :cond_14
    const-string/jumbo v1, "CycleLanguage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1158
    if-nez v0, :cond_15

    return v9

    .line 1163
    :cond_15
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1165
    return v8

    .line 1168
    :cond_16
    const-string/jumbo v1, "CycleShiftMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1169
    if-nez v0, :cond_17

    return v9

    .line 1170
    :cond_17
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->cycleShiftAndNumberMode()V

    .line 1171
    return v8

    .line 1175
    :cond_18
    const-string/jumbo v1, "RecentsEmoji"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1176
    if-nez v0, :cond_19

    return v9

    .line 1177
    :cond_19
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getIsEmojiShownInCandidateView()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1178
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    .line 1179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mIme:Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, v8}, Lcom/nuance/flext9_OEM/input/IME;->showEmojilayout(Z)V

    .line 1180
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1182
    :cond_1a
    return v8

    .line 1185
    :cond_1b
    const-string/jumbo v1, "ShiftEmoji"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1186
    if-nez v0, :cond_1c

    return v9

    .line 1187
    :cond_1c
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getIsEmojiShownInCandidateView()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 1188
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->updateCandidateViewWithEmoji()V

    .line 1190
    :cond_1d
    return v8

    .line 1194
    :cond_1e
    const-string/jumbo v1, "ShiftLanguage"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1195
    if-nez v0, :cond_1f

    return v9

    .line 1196
    :cond_1f
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->cyclingLanguage()V

    .line 1197
    return v8

    .line 1200
    :cond_20
    const-string/jumbo v1, "chooseShiftMode"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1201
    if-nez v0, :cond_21

    return v9

    .line 1202
    :cond_21
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/InputView;->getOnKeyboardActionListener()Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x3e9

    invoke-interface {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardViewEx$OnKeyboardActionListener;->onKey(I[I)V

    .line 1203
    return v8

    .line 1205
    :cond_22
    return v8

    .line 1208
    :cond_23
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-ne v0, v1, :cond_25

    .line 1209
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1210
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setHardKeyboardEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V

    .line 1211
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1212
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mShortLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1213
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/nuance/flext9_OEM/input/KeyboardViewEx;->mLongPressTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1216
    :cond_24
    return v8

    .line 1219
    :cond_25
    return v9

    :cond_26
    move-object v0, v2

    goto/16 :goto_5

    :cond_27
    move-object v0, v2

    goto/16 :goto_4

    :cond_28
    move-object v0, v2

    goto/16 :goto_3

    :cond_29
    move-object v1, v2

    goto/16 :goto_2

    :cond_2a
    move-object v1, v2

    goto/16 :goto_1

    :cond_2b
    move-object v3, v2

    goto/16 :goto_0
.end method


# virtual methods
.method public changeToCapsLockPage()V
    .locals 4

    .prologue
    .line 966
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "XT9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 968
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v3, "Caps"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    .line 972
    :cond_2
    :goto_0
    return-void

    .line 969
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Number"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v3, "CapsNumber"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    goto :goto_0
.end method

.method public changeToNormalPage()V
    .locals 4

    .prologue
    .line 975
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Caps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v3, "XT9"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    .line 981
    :cond_2
    :goto_0
    return-void

    .line 978
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "CapsNumber"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 979
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v3, "Number"

    invoke-direct {v0, v1, v2, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    goto :goto_0
.end method

.method public getCurrentPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1235
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_0

    .line 1236
    return-object v1

    .line 1239
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    return-object v0
.end method

.method public getCurrentPageName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_0

    .line 1224
    return-object v1

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHardKeyboardLayoutID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardLayoutID:Ljava/lang/String;

    return-object v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 929
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_0

    .line 930
    const v0, 0xffff

    return v0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getKdbId()I

    move-result v0

    return v0
.end method

.method public getLanguageId()I
    .locals 1

    .prologue
    .line 937
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLanguageId:I

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLayoutId:I

    return v0
.end method

.method private onKeyDown$wave(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 712
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_1

    .line 713
    :cond_0
    return v5

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getInputMode()Ljava/lang/String;

    move-result-object v2

    .line 720
    const-string/jumbo v0, "number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 721
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "CapsNumber"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 722
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 723
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 729
    :goto_0
    if-nez v0, :cond_3

    .line 730
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    .line 784
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 785
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 786
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 788
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 789
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 802
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 803
    if-nez v0, :cond_f

    .line 804
    return v5

    :cond_6
    move-object v0, v1

    .line 721
    goto :goto_1

    .line 734
    :cond_7
    const-string/jumbo v0, "abc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 735
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "abc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 736
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 737
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, v0

    .line 743
    :cond_9
    if-nez v1, :cond_16

    .line 744
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 745
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ambig"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 751
    :goto_2
    if-nez v0, :cond_3

    .line 752
    return v5

    .line 759
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 760
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 761
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 767
    :goto_3
    if-nez v0, :cond_3

    .line 768
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    goto/16 :goto_1

    .line 770
    :cond_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 771
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 772
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 778
    :goto_4
    if-nez v0, :cond_3

    .line 779
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    goto/16 :goto_1

    .line 808
    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 810
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 811
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/WaveEarly;->dispatch(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    goto :goto_5

    .line 815
    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_12
    move-object v0, v1

    goto :goto_4

    :cond_13
    move-object v0, v1

    goto/16 :goto_1

    :cond_14
    move-object v0, v1

    goto :goto_3

    :cond_15
    move-object v0, v1

    goto/16 :goto_2

    :cond_16
    move-object v0, v1

    goto/16 :goto_1

    :cond_17
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 825
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    if-nez v0, :cond_1

    .line 826
    :cond_0
    return v5

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getInputMode()Ljava/lang/String;

    move-result-object v2

    .line 834
    const-string/jumbo v0, "number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 835
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "CapsNumber"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 836
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 837
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 843
    :goto_0
    if-nez v0, :cond_3

    .line 844
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    .line 898
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 899
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 900
    :cond_4
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 901
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 902
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 903
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 908
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 909
    if-nez v0, :cond_f

    .line 910
    return v5

    :cond_6
    move-object v0, v1

    .line 835
    goto :goto_1

    .line 848
    :cond_7
    const-string/jumbo v0, "abc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 849
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "abc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 850
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 851
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v1, v0

    .line 857
    :cond_9
    if-nez v1, :cond_16

    .line 858
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 859
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ambig"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 865
    :goto_2
    if-nez v0, :cond_3

    .line 866
    return v5

    .line 872
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 873
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 874
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 880
    :goto_3
    if-nez v0, :cond_3

    .line 881
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    goto/16 :goto_1

    .line 883
    :cond_d
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 884
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 885
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 891
    :goto_4
    if-nez v0, :cond_3

    .line 892
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->getDefaultPage()Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v0

    goto/16 :goto_1

    .line 914
    :cond_f
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 916
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->handleEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 917
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/WaveEarly;->dispatch(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)Z

    goto :goto_5

    .line 921
    :cond_11
    const/4 v0, 0x1

    return v0

    :cond_12
    move-object v0, v1

    goto :goto_4

    :cond_13
    move-object v0, v1

    goto/16 :goto_1

    :cond_14
    move-object v0, v1

    goto :goto_3

    :cond_15
    move-object v0, v1

    goto/16 :goto_2

    :cond_16
    move-object v0, v1

    goto/16 :goto_1

    :cond_17
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public resetKeyState()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 961
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    goto :goto_0

    .line 963
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mContext:Landroid/content/Context;

    .line 1232
    return-void
.end method

.method public setHardKeyboardEvent(Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardEvent:Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 85
    return-void
.end method

.method public setHardKeyboardLayoutID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1326
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mHardKeyboardLayoutID:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method public setKeyboardPage()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1243
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    if-nez v0, :cond_0

    .line 1244
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    invoke-interface {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;->getInputMode()Ljava/lang/String;

    move-result-object v2

    .line 1249
    const-string/jumbo v0, "number"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1250
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1251
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1252
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1258
    :goto_0
    if-nez v0, :cond_c

    .line 1259
    return-void

    .line 1263
    :cond_2
    const-string/jumbo v0, "abc"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1264
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "abc"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1265
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1266
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v1, v0

    .line 1272
    :cond_4
    if-nez v1, :cond_12

    .line 1273
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1274
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ambig"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1280
    :goto_1
    if-nez v0, :cond_c

    .line 1281
    return-void

    .line 1287
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1288
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1289
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1295
    :goto_2
    if-nez v0, :cond_c

    .line 1296
    return-void

    .line 1299
    :cond_8
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1300
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1299
    if-eqz v0, :cond_f

    .line 1301
    :cond_9
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mPages:Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1302
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getDefault()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1308
    :goto_3
    if-nez v0, :cond_c

    .line 1309
    return-void

    :cond_b
    move-object v0, v1

    .line 1315
    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    .line 1316
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastPage:Ljava/lang/String;

    .line 1317
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->getMode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mLastMode:Ljava/lang/String;

    .line 1319
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    .line 1320
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mCurrentPage:Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->resetKeyState()V

    .line 1323
    :cond_d
    return-void

    :cond_e
    move-object v0, v1

    goto :goto_3

    :cond_f
    move-object v0, v1

    goto :goto_4

    :cond_10
    move-object v0, v1

    goto :goto_2

    :cond_11
    move-object v0, v1

    goto/16 :goto_1

    :cond_12
    move-object v0, v1

    goto :goto_4

    :cond_13
    move-object v0, v1

    goto/16 :goto_0
.end method

.method public setListener(Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)V
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->mListener:Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;

    .line 942
    return-void
.end method

# Wave: hook around the stock onKeyDown (now onKeyDown$wave).
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    invoke-direct/range {p0 .. p2}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->onKeyDown$wave(ILandroid/view/KeyEvent;)Z
    move-result v0
    invoke-static {p0, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/WaveEarly;->afterKeyDown(Ljava/lang/Object;ILandroid/view/KeyEvent;Z)V
    return v0
.end method
