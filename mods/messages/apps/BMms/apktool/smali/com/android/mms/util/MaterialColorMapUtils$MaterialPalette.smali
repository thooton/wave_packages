.class public Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mPrimaryColor:I

.field public final mSecondaryColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette$1;

    invoke-direct {v0}, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette$1;-><init>()V

    sput-object v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 55
    iput p2, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .line 56
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    if-ne p0, p1, :cond_0

    .line 63
    return v3

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    return v2

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 69
    return v2

    .line 71
    :cond_2
    check-cast p1, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    .line 72
    iget v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget v1, p1, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    if-eq v0, v1, :cond_3

    .line 73
    return v2

    .line 75
    :cond_3
    iget v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iget v1, p1, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    if-eq v0, v1, :cond_4

    .line 76
    return v2

    .line 78
    :cond_4
    return v3
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    add-int/lit8 v0, v0, 0x1f

    .line 86
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    return-void
.end method
