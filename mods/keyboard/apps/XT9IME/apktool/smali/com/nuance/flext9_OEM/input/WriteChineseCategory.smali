.class public Lcom/nuance/flext9_OEM/input/WriteChineseCategory;
.super Ljava/lang/Object;
.source "WriteChineseCategory.java"


# static fields
.field public static final DECUMA_ALPHA:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_BIGFIVE_LEVEL_1:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_BIGFIVE_LEVEL_2:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field private static final DECUMA_CATEGORY_ANSI:I = 0x3ea

.field private static final DECUMA_CATEGORY_BIGFIVE_LEVEL_1:I = 0x1774

.field private static final DECUMA_CATEGORY_BIGFIVE_LEVEL_2:I = 0x1775

.field private static final DECUMA_CATEGORY_CJK_SYMBOL:I = 0x1770

.field private static final DECUMA_CATEGORY_DIGIT:I = 0x44d

.field private static final DECUMA_CATEGORY_GB2312_A:I = 0x1771

.field private static final DECUMA_CATEGORY_GB2312_B:I = 0x179b

.field private static final DECUMA_CATEGORY_GESTURES:I = 0x69

.field private static final DECUMA_CATEGORY_PUNCTUATIONS:I = 0x4e2

.field public static final DECUMA_DIGIT:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_GB2312_A:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_GB2312_B:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_GESTURES:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_PUNCTUATION:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

.field public static final DECUMA_SYMBOL:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;


# instance fields
.field private final m_category:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x1771

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GB2312_A:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 16
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x179b

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GB2312_B:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 17
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x1774

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_BIGFIVE_LEVEL_1:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 18
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x1775

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_BIGFIVE_LEVEL_2:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 20
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_ALPHA:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 21
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x44d

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_DIGIT:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 22
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x4e2

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_PUNCTUATION:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 23
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x1770

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_SYMBOL:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 24
    new-instance v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    const/16 v1, 0x69

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;-><init>(I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->DECUMA_GESTURES:Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    .line 3
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->m_category:I

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 36
    if-eq p0, p1, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->get()I

    move-result v0

    check-cast p1, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;

    invoke-virtual {p1}, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->get()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 37
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public get()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/nuance/flext9_OEM/input/WriteChineseCategory;->m_category:I

    return v0
.end method
