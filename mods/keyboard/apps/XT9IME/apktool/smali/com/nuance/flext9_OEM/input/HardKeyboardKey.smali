.class public Lcom/nuance/flext9_OEM/input/HardKeyboardKey;
.super Ljava/lang/Object;
.source "HardKeyboardKey.java"


# static fields
.field private static final PREPROCESS_KEY:Ljava/lang/String; = "S"

.field private static final TAG:Ljava/lang/String; = "Hardkeyboardkey"

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
.field private mIsCombo:Z

.field private mIsHold:Z

.field private mKeyCode:I

.field private mMapEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mPopupCharacters:Ljava/lang/CharSequence;

.field private mPopupKeyboard:I

.field private mRepeat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mEmptyList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 398
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    .line 403
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupKeyboard:I

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupCharacters:Ljava/lang/CharSequence;

    .line 18
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mKeyCode:I

    .line 19
    iput-boolean p2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mRepeat:Z

    .line 20
    return-void
.end method


# virtual methods
.method public addKeyEvent(ILcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 34
    if-nez v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    return-void

    .line 42
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 43
    if-nez v1, :cond_1

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    :cond_1
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addKeyEvent(Ljava/util/List;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 57
    :cond_1
    const-string/jumbo v1, ""

    .line 58
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 66
    if-nez v0, :cond_3

    .line 67
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 82
    :goto_1
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-void

    .line 74
    :cond_3
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 75
    if-nez v1, :cond_4

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    :cond_4
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public getHold()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    return v0
.end method

.method public getKeyCode()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mKeyCode:I

    return v0
.end method

.method public getPopupCharacters()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupCharacters:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPopupKeyboard()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupKeyboard:I

    return v0
.end method

.method public isCombo()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 6
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
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 113
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 115
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->isCombo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    return-object v5

    .line 119
    :cond_1
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 121
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 123
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 127
    :cond_2
    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    if-ne v1, v2, :cond_4

    iget v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupKeyboard:I

    if-eqz v2, :cond_4

    if-nez p1, :cond_4

    .line 128
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 129
    sget-object v2, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 130
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupKeyboard:I

    .line 131
    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;ILjava/lang/String;)V

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    if-nez v1, :cond_3

    .line 135
    return-object v5

    .line 138
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    return-object v1

    .line 141
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-le v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mRepeat:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 142
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    .line 145
    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 148
    if-nez v1, :cond_8

    .line 149
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-nez v1, :cond_6

    .line 150
    return-object v5

    .line 154
    :cond_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 155
    if-nez v0, :cond_7

    .line 156
    return-object v5

    .line 160
    :cond_7
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mRepeat:Z

    if-nez v1, :cond_9

    .line 161
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mEmptyList:Ljava/util/ArrayList;

    return-object v0

    :cond_8
    move-object v0, v1

    .line 166
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    if-nez v1, :cond_a

    .line 168
    return-object v5

    .line 173
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 174
    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getDelay()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 175
    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 180
    return-object v5

    .line 183
    :cond_e
    return-object v1
.end method

.method public onKeyDown(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 187
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-object v4

    .line 188
    :cond_1
    const-string/jumbo v1, ""

    .line 189
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 194
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->isCombo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    :cond_3
    return-object v4

    .line 198
    :cond_4
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 200
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-eqz v2, :cond_5

    .line 201
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 202
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 205
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-le v2, v3, :cond_6

    iget-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mRepeat:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 206
    return-object v4

    .line 209
    :cond_6
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 212
    if-nez v1, :cond_9

    .line 213
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-nez v1, :cond_7

    .line 214
    return-object v4

    .line 218
    :cond_7
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 219
    if-nez v0, :cond_8

    .line 220
    return-object v4

    .line 224
    :cond_8
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mRepeat:Z

    if-nez v1, :cond_a

    .line 225
    return-object v4

    :cond_9
    move-object v0, v1

    .line 230
    :cond_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 234
    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getDelay()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_b

    .line 235
    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    return-object v4

    .line 243
    :cond_e
    return-object v1
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
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 316
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 318
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->isCombo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    :cond_0
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 320
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    .line 321
    return-object v6

    .line 325
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 326
    if-nez v3, :cond_2

    .line 327
    return-object v6

    .line 330
    :cond_2
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v1, :cond_6

    .line 331
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 333
    if-eqz v1, :cond_4

    .line 334
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 335
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getDelay()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 336
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_4
    iput-boolean v7, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 344
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 345
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 346
    return-object v6

    .line 348
    :cond_5
    return-object v3

    .line 353
    :cond_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 355
    if-nez v0, :cond_8

    .line 356
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 357
    return-object v6

    .line 359
    :cond_7
    return-object v3

    .line 363
    :cond_8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 364
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 367
    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 368
    return-object v6

    .line 371
    :cond_a
    return-object v3
.end method

.method public onKeyUp(Ljava/util/List;Landroid/view/KeyEvent;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/view/KeyEvent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object v7

    .line 249
    :cond_1
    const-string/jumbo v0, ""

    move-object v1, v0

    move v0, v3

    .line 250
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mMapEvents:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 255
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->isCombo()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    :cond_3
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 257
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    .line 258
    return-object v7

    .line 262
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 264
    iget-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    if-eqz v1, :cond_8

    .line 265
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 266
    if-eqz v1, :cond_6

    .line 267
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 268
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getDelay()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 269
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_6
    iput-boolean v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 277
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 278
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 279
    return-object v7

    .line 281
    :cond_7
    return-object v4

    .line 286
    :cond_8
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 288
    if-nez v0, :cond_a

    .line 289
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 290
    return-object v7

    .line 292
    :cond_9
    return-object v4

    .line 296
    :cond_a
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    .line 297
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 300
    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 301
    return-object v7

    .line 304
    :cond_c
    return-object v4
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsHold:Z

    .line 92
    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    .line 93
    return-void
.end method

.method public setCombo(Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mIsCombo:Z

    .line 97
    return-void
.end method

.method public setPopupCharacters(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupCharacters:Ljava/lang/CharSequence;

    .line 383
    return-void
.end method

.method public setPopupKeyboard(I)V
    .locals 0

    .prologue
    .line 374
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->mPopupKeyboard:I

    .line 375
    return-void
.end method
