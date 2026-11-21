.class public Lcom/nuance/flext9_OEM/input/HardKeyboardPage;
.super Ljava/lang/Object;
.source "HardKeyboardPage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardKeyboardPage"

.field private static final mEmptyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCombineKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDefault:Z

.field private mKdbId:I

.field private mKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardKey;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPressedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    .line 498
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mIsDefault:Z

    .line 20
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mMode:Ljava/lang/String;

    .line 22
    iput p3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKdbId:I

    .line 23
    return-void
.end method

.method private isCombineKey(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    move v1, v2

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 74
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 77
    :cond_3
    return v2
.end method

.method private setKeyPressed(I)V
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 123
    if-nez v0, :cond_1

    return-void

    .line 124
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 126
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void

    .line 130
    :cond_3
    return-void
.end method

.method private sortPressedKeys(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardKey;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 82
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 83
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 84
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 89
    :cond_2
    return-object v3
.end method


# virtual methods
.method public addKey(Lcom/nuance/flext9_OEM/input/HardKeyboardKey;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public getDefault()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mIsDefault:Z

    return v0
.end method

.method public getKdbId()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKdbId:I

    return v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mMode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPressedKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 105
    if-nez v0, :cond_2

    return-object v1

    .line 106
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 108
    new-instance v1, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_4
    return-object v2
.end method

.method public hasKey(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x1

    return v0

    .line 55
    :cond_3
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 147
    const/4 v1, -0x1

    .line 151
    :cond_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 154
    const/4 v0, 0x0

    .line 155
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    if-ne v1, p1, :cond_3

    :goto_2
    move-object v3, v0

    goto :goto_1

    .line 145
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 165
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    goto :goto_2

    .line 169
    :cond_4
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->sortPressedKeys(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v8

    .line 170
    if-nez v3, :cond_5

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_5
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/4 v1, 0x0

    .line 176
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 177
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_20

    .line 178
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 179
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    .line 180
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 181
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 182
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 185
    :cond_7
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 188
    :cond_8
    const/4 v0, 0x0

    move v2, v0

    move-object v4, v1

    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 190
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v6

    .line 191
    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    .line 192
    if-nez v4, :cond_9

    .line 193
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 195
    :cond_9
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_31

    .line 196
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-ne v0, v5, :cond_d

    .line 197
    const/4 v0, 0x0

    move v5, v0

    :goto_6
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_a

    .line 198
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v9

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    if-ne v9, v0, :cond_c

    .line 199
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    :cond_a
    :goto_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :cond_b
    move-object v1, v4

    .line 188
    :goto_8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto/16 :goto_4

    .line 197
    :cond_c
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_6

    .line 204
    :cond_d
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 211
    :cond_e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v2

    .line 212
    if-eqz v2, :cond_29

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_29

    .line 213
    if-nez v4, :cond_f

    .line 214
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    :goto_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 217
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 223
    :cond_10
    const/4 v0, 0x0

    move v2, v0

    move-object v4, v1

    :goto_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_19

    .line 225
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v1, v4

    .line 223
    :goto_b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v4, v1

    goto :goto_a

    .line 227
    :cond_11
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    const/4 v6, 0x1

    invoke-direct {v5, v6, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v9, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_12
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_15

    .line 229
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v6, Landroid/view/KeyEvent;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    const/4 v10, 0x1

    invoke-direct {v6, v10, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v6, v0

    .line 231
    :goto_c
    if-eqz v6, :cond_16

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    .line 232
    if-nez v4, :cond_13

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :cond_13
    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    .line 236
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-ne v0, v5, :cond_18

    .line 237
    const/4 v0, 0x0

    move v5, v0

    :goto_e
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_14

    .line 238
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v10

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    if-ne v10, v0, :cond_17

    .line 239
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_14
    :goto_f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_15
    move-object v6, v0

    .line 228
    goto :goto_c

    :cond_16
    move-object v1, v4

    .line 231
    goto/16 :goto_b

    .line 237
    :cond_17
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_e

    .line 244
    :cond_18
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 251
    :cond_19
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v9, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_1a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 253
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    .line 255
    :goto_10
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1d

    .line 256
    if-nez v4, :cond_1b

    .line 257
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :cond_1b
    const/4 v0, 0x0

    move v1, v0

    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 260
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_1c
    move-object v2, v0

    .line 252
    goto :goto_10

    .line 263
    :cond_1d
    if-nez v4, :cond_29

    .line 264
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v2, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    const/4 v4, 0x1

    invoke-direct {v2, v4, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v9, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 265
    if-nez v0, :cond_1e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 266
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 268
    :cond_1e
    if-nez v0, :cond_1f

    .line 269
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 270
    const/4 v0, 0x0

    return-object v0

    .line 272
    :cond_1f
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 277
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    .line 278
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 279
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 280
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v4

    .line 281
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 282
    if-nez v4, :cond_21

    .line 283
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1, v5, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v4

    .line 286
    :cond_21
    if-nez v4, :cond_29

    .line 287
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v4, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v2

    const/4 v6, 0x1

    invoke-direct {v4, v6, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v5, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 288
    if-nez v1, :cond_2f

    .line 289
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v2

    new-instance v4, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    const/4 v5, 0x1

    invoke-direct {v4, v5, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 291
    :goto_12
    if-nez v0, :cond_22

    .line 292
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_22
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 301
    :cond_23
    new-instance v2, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {v2, v5, v4}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v4

    .line 302
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_26

    .line 304
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 306
    const/4 v0, 0x0

    move v1, v0

    :goto_13
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    .line 307
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    if-eq v0, v5, :cond_24

    .line 308
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    :goto_14
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_13

    .line 310
    :cond_24
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_25
    move-object v1, v2

    .line 316
    :cond_26
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v3

    .line 317
    if-eqz v3, :cond_28

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2e

    .line 318
    if-nez v1, :cond_27

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 321
    :cond_27
    const/4 v0, 0x0

    move v2, v0

    :goto_15
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2e

    .line 322
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 321
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_15

    :cond_28
    move-object v4, v1

    .line 327
    :cond_29
    :goto_16
    if-nez v4, :cond_2a

    .line 328
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 330
    :cond_2a
    return-object v4

    .line 333
    :cond_2b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 334
    if-nez v0, :cond_2d

    .line 335
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_2c

    .line 337
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 339
    :cond_2c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 340
    const/4 v0, 0x0

    return-object v0

    .line 343
    :cond_2d
    return-object v0

    :cond_2e
    move-object v4, v1

    goto :goto_16

    :cond_2f
    move-object v0, v1

    goto/16 :goto_12

    :cond_30
    move-object v1, v4

    goto/16 :goto_b

    :cond_31
    move-object v1, v4

    goto/16 :goto_8

    :cond_32
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v1, v2

    .line 354
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 356
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 363
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 364
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    if-ne v1, p1, :cond_2

    :goto_2
    move-object v3, v0

    goto :goto_1

    .line 354
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 368
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 369
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_2

    .line 372
    :cond_3
    invoke-direct {p0, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->sortPressedKeys(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 374
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    .line 375
    :cond_4
    return-object v4

    .line 377
    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_17

    .line 382
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_10

    .line 383
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    .line 385
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 386
    invoke-virtual {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 387
    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 391
    :cond_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v2, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_8

    .line 394
    return-object v0

    .line 396
    :cond_8
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v5, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 397
    if-nez v0, :cond_9

    .line 398
    return-object v4

    .line 400
    :cond_9
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 404
    :cond_a
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v5, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 405
    if-eqz v0, :cond_b

    .line 406
    return-object v0

    .line 407
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_e

    .line 408
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 409
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v1, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_c

    .line 411
    return-object v0

    .line 413
    :cond_c
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v5, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 414
    if-nez v0, :cond_d

    .line 415
    return-object v4

    .line 417
    :cond_d
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 421
    :cond_e
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v6, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 422
    if-nez v0, :cond_f

    .line 423
    return-object v4

    .line 425
    :cond_f
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 429
    :cond_10
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    .line 430
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->isCombineKey(I)Z

    move-result v1

    if-nez v1, :cond_13

    .line 431
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v2, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 432
    if-nez v0, :cond_12

    .line 433
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v5, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 434
    if-eqz v0, :cond_11

    .line 435
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 437
    :cond_11
    return-object v4

    .line 440
    :cond_12
    return-object v0

    .line 442
    :cond_13
    invoke-virtual {v0, v7}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setCombo(Z)V

    .line 444
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v5

    invoke-virtual {v1, v5, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 445
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 446
    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    if-nez v1, :cond_14

    .line 448
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1, v5, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 450
    :cond_14
    if-nez v1, :cond_19

    .line 451
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v6

    new-instance v7, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v0

    invoke-direct {v7, v2, v0}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v6, v7}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 452
    if-nez v0, :cond_15

    .line 453
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v6, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v6, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v5, v6}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 455
    :cond_15
    if-eqz v0, :cond_16

    .line 456
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 458
    :cond_16
    return-object v4

    .line 464
    :cond_17
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0, v2, p2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyUp(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 465
    if-nez v0, :cond_1a

    .line 466
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    new-instance v5, Landroid/view/KeyEvent;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    invoke-direct {v5, v2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v2, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;

    move-result-object v0

    .line 467
    if-eqz v0, :cond_18

    .line 468
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 470
    :cond_18
    return-object v4

    :cond_19
    move-object v0, v1

    .line 474
    :cond_1a
    return-object v0

    :cond_1b
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public removeKeyDownEvent(I)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    move v1, v2

    .line 478
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_3

    .line 480
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 485
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->getKeyCode()I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 487
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_2
    return-void

    .line 478
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public resetKeyState()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->reset()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mPressedKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public setCombineKeys(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    :cond_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    if-nez v0, :cond_2

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 67
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mCombineKeys:Ljava/util/List;

    new-instance v3, Ljava/lang/Integer;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 69
    :cond_3
    return-void
.end method

.method public setDefault(Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mIsDefault:Z

    .line 47
    return-void
.end method

.method public setPressedKeys(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->mKeys:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v0

    .line 115
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->setKeyPressed(I)V

    .line 115
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 118
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
