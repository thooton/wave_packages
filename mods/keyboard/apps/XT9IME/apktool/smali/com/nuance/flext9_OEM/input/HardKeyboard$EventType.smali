.class public final enum Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;
.super Ljava/lang/Enum;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

.field public static final enum EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

.field public static final enum EventType_None:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

.field public static final enum EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

.field public static final enum EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    const-string/jumbo v1, "EventType_None"

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_None:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 32
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    const-string/jumbo v1, "EventType_Press"

    invoke-direct {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 33
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    const-string/jumbo v1, "EventType_Hold"

    invoke-direct {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 34
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    const-string/jumbo v1, "EventType_Release"

    invoke-direct {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_None:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    return-object v0
.end method
