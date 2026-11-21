.class public final enum Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;
.super Ljava/lang/Enum;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShiftState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

.field public static final enum ShiftStat_Cycle:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

.field public static final enum ShiftStat_Locked:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

.field public static final enum ShiftStat_Shifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

.field public static final enum ShiftStat_Unshifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    const-string/jumbo v1, "ShiftStat_Unshifted"

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Unshifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    .line 24
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    const-string/jumbo v1, "ShiftStat_Shifted"

    invoke-direct {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Shifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    .line 25
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    const-string/jumbo v1, "ShiftStat_Locked"

    invoke-direct {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Locked:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    .line 26
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    const-string/jumbo v1, "ShiftStat_Cycle"

    invoke-direct {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Cycle:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Unshifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Shifted:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Locked:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->ShiftStat_Cycle:Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    return-object v0
.end method

.method public static values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$ShiftState;

    return-object v0
.end method
