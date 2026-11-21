.class public final enum Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;
.super Ljava/lang/Enum;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventClass"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

.field public static final enum EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Index"

    invoke-direct {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 40
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Character"

    invoke-direct {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 41
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Virtual"

    invoke-direct {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 42
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_String"

    invoke-direct {v0, v1, v6}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 43
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Link"

    invoke-direct {v0, v1, v7}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 44
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Bookmark"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 45
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Language"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 46
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const-string/jumbo v1, "EventClass_Popup"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 38
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    aput-object v1, v0, v5

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    aput-object v1, v0, v6

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    aput-object v1, v0, v7

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    return-object v0
.end method

.method public static values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->$VALUES:[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    return-object v0
.end method
