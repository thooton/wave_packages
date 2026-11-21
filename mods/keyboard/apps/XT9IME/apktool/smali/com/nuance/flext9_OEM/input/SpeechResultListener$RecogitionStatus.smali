.class public final enum Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;
.super Ljava/lang/Enum;
.source "SpeechResultListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/SpeechResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecogitionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

.field public static final enum Canceled:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

.field public static final enum Failed:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

.field public static final enum Failed_Connection:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

.field public static final enum Success:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    const-string/jumbo v1, "Success"

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Success:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    .line 9
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    const-string/jumbo v1, "Canceled"

    invoke-direct {v0, v1, v3}, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Canceled:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    .line 10
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    const-string/jumbo v1, "Failed"

    invoke-direct {v0, v1, v4}, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Failed:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    .line 11
    new-instance v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    const-string/jumbo v1, "Failed_Connection"

    invoke-direct {v0, v1, v5}, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Failed_Connection:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    sget-object v1, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Success:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Canceled:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Failed:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->Failed_Connection:Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->$VALUES:[Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    return-object v0
.end method

.method public static values()[Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;->$VALUES:[Lcom/nuance/flext9_OEM/input/SpeechResultListener$RecogitionStatus;

    return-object v0
.end method
