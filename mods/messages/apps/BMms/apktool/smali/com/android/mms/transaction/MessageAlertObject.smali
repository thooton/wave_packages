.class public Lcom/android/mms/transaction/MessageAlertObject;
.super Ljava/lang/Object;
.source "MessageAlertObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessageAlertObject$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field mBody:Ljava/lang/String;

.field mSender:Ljava/lang/String;

.field mSenderNumber:Ljava/lang/String;

.field mThreadId:Ljava/lang/Long;

.field mTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Lcom/android/mms/transaction/MessageAlertObject$1;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessageAlertObject$1;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessageAlertObject;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSender:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mBody:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mTime:Ljava/lang/Long;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mThreadId:Ljava/lang/Long;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSenderNumber:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSender:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/android/mms/transaction/MessageAlertObject;->mBody:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/android/mms/transaction/MessageAlertObject;->mTime:Ljava/lang/Long;

    .line 41
    iput-object p4, p0, Lcom/android/mms/transaction/MessageAlertObject;->mThreadId:Ljava/lang/Long;

    .line 42
    iput-object p5, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSenderNumber:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getmBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getmSender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSender:Ljava/lang/String;

    return-object v0
.end method

.method public getmSenderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSenderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getmThreadId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mThreadId:Ljava/lang/Long;

    return-object v0
.end method

.method public getmTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mTime:Ljava/lang/Long;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSender:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mThreadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Lcom/android/mms/transaction/MessageAlertObject;->mSenderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void
.end method
