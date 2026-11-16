.class public final enum Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;
.super Ljava/lang/Enum;
.source "RecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/RecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

.field public static final enum LANDSCAPE:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

.field public static final enum PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 231
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    const-string/jumbo v1, "PORTRAIT"

    invoke-direct {v0, v1, v2}, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    .line 232
    new-instance v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    const-string/jumbo v1, "LANDSCAPE"

    invoke-direct {v0, v1, v3}, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->LANDSCAPE:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    .line 230
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->LANDSCAPE:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->$VALUES:[Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    return-object v0
.end method

.method public static values()[Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->$VALUES:[Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    return-object v0
.end method
