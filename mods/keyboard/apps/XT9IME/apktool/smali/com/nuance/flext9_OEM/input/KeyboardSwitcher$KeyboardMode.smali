.class final enum Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;
.super Ljava/lang/Enum;
.source "KeyboardSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/KeyboardSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "KeyboardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_EMOJI:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_SYMBOLS:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

.field public static final enum KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 24
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_SYMBOLS"

    invoke-direct {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_SYMBOLS:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 25
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_PHONE"

    invoke-direct {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 26
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_URL"

    invoke-direct {v0, v1, v6}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 27
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_EMAIL"

    invoke-direct {v0, v1, v7}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 28
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_IM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 29
    new-instance v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const-string/jumbo v1, "KEYBOARD_EMOJI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMOJI:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_TEXT:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_SYMBOLS:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_PHONE:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_URL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMAIL:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_IM:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->KEYBOARD_EMOJI:Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->$VALUES:[Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    return-object v0
.end method

.method public static values()[Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;->$VALUES:[Lcom/nuance/flext9_OEM/input/KeyboardSwitcher$KeyboardMode;

    return-object v0
.end method
