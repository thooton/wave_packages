.class final Lcom/nuance/flext9_OEM/input/UserWord$1;
.super Ljava/lang/Object;
.source "UserWord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/UserWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nuance/flext9_OEM/input/UserWord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/nuance/flext9_OEM/input/UserWord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nuance/flext9_OEM/input/UserWord;-><init>(Landroid/os/Parcel;Lcom/nuance/flext9_OEM/input/UserWord;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/UserWord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nuance/flext9_OEM/input/UserWord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/nuance/flext9_OEM/input/UserWord;
    .locals 1

    .prologue
    .line 23
    new-array v0, p1, [Lcom/nuance/flext9_OEM/input/UserWord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/nuance/flext9_OEM/input/UserWord$1;->newArray(I)[Lcom/nuance/flext9_OEM/input/UserWord;

    move-result-object v0

    return-object v0
.end method
