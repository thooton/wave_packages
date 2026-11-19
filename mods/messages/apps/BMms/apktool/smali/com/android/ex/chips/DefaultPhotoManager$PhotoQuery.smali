.class Lcom/android/ex/chips/DefaultPhotoManager$PhotoQuery;
.super Ljava/lang/Object;
.source "DefaultPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/DefaultPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PhotoQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 49
    const-string/jumbo v1, "data15"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 48
    sput-object v0, Lcom/android/ex/chips/DefaultPhotoManager$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
