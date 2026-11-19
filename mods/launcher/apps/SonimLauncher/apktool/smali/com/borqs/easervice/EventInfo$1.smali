.class final Lcom/borqs/easervice/EventInfo$1;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/borqs/easervice/EventInfo;
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
        "Lcom/borqs/easervice/EventInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/borqs/easervice/EventInfo;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0, p1}, Lcom/borqs/easervice/EventInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/borqs/easervice/EventInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/borqs/easervice/EventInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/borqs/easervice/EventInfo;
    .locals 1

    .prologue
    .line 82
    new-array v0, p1, [Lcom/borqs/easervice/EventInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/borqs/easervice/EventInfo$1;->newArray(I)[Lcom/borqs/easervice/EventInfo;

    move-result-object v0

    return-object v0
.end method
