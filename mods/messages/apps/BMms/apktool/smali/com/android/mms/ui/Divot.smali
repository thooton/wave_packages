.class public interface abstract Lcom/android/mms/ui/Divot;
.super Ljava/lang/Object;
.source "Divot.java"


# static fields
.field public static final sPositionChoices:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, ""

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "left_upper"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "left_middle"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "left_lower"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "right_upper"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "right_middle"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "right_lower"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "top_left"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "top_middle"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "top_right"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "bottom_left"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "bottom_middle"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "bottom_right"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/mms/ui/Divot;->sPositionChoices:[Ljava/lang/String;

    .line 21
    return-void
.end method
