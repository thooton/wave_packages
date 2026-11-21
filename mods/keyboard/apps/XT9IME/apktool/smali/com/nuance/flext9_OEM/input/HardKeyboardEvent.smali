.class public Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;
.super Ljava/lang/Object;
.source "HardKeyboardEvent.java"


# instance fields
.field private mData:I

.field private mEventClass:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field private mEventType:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

.field private mIsDelay:Z

.field private mMultitap:Z

.field private mShiftState:I

.field private mShiftable:Z

.field private mStringData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;I)V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;ILjava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;ILjava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mData:I

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mStringData:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftable:Z

    .line 76
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mMultitap:Z

    .line 78
    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mIsDelay:Z

    .line 79
    sget v0, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_SHIFTABLE:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftState:I

    .line 16
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mEventType:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 17
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mEventClass:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 18
    iput p3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mData:I

    .line 19
    iput-object p4, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mStringData:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;ILjava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getData()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mData:I

    return v0
.end method

.method public getDelay()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mIsDelay:Z

    return v0
.end method

.method public getEventClass()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mEventClass:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    return-object v0
.end method

.method public getEventType()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mEventType:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    return-object v0
.end method

.method public getMultitap()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mMultitap:Z

    return v0
.end method

.method public getShiftState()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftState:I

    return v0
.end method

.method public getShiftable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftable:Z

    return v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mStringData:Ljava/lang/String;

    return-object v0
.end method

.method public setDelay(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mIsDelay:Z

    .line 62
    return-void
.end method

.method public setMultitap(Z)V
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mMultitap:Z

    .line 54
    return-void
.end method

.method public setShiftState(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftState:I

    .line 48
    return-void
.end method

.method public setShiftable(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->mShiftable:Z

    .line 40
    return-void
.end method
