.class public Lcom/borqs/easervice/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/borqs/easervice/EventInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/borqs/easervice/EventInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentIntent:Landroid/app/PendingIntent;

.field private mCount:I

.field private mEventTime:J

.field private mEventType:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mPkg:Ljava/lang/String;

.field private mSubTxt:Ljava/lang/String;

.field private mSummaryTxt:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTickerTxt:Ljava/lang/String;

.field private mTitleTxt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/borqs/easervice/EventInfo$1;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo$1;-><init>()V

    sput-object v0, Lcom/borqs/easervice/EventInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v1, p0, Lcom/borqs/easervice/EventInfo;->mCount:I

    .line 62
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mText:Ljava/lang/String;

    .line 63
    iput v1, p0, Lcom/borqs/easervice/EventInfo;->mEventType:I

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mPkg:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/borqs/easervice/EventInfo;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 66
    iput-object v2, p0, Lcom/borqs/easervice/EventInfo;->mContentIntent:Landroid/app/PendingIntent;

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTitleTxt:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSubTxt:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTickerTxt:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSummaryTxt:Ljava/lang/String;

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/borqs/easervice/EventInfo;->mEventTime:J

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/borqs/easervice/EventInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mContentIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/borqs/easervice/EventInfo;->mCount:I

    return v0
.end method

.method public getEventType()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/borqs/easervice/EventInfo;->mEventType:I

    return v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/borqs/easervice/EventInfo;->mEventTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSubTxt:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleTxt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTitleTxt:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/borqs/easervice/EventInfo;->mCount:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mText:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/borqs/easervice/EventInfo;->mEventType:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mPkg:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTitleTxt:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTickerTxt:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSummaryTxt:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSubTxt:Ljava/lang/String;

    .line 125
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mContentIntent:Landroid/app/PendingIntent;

    .line 126
    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/borqs/easervice/EventInfo;->mFullScreenIntent:Landroid/app/PendingIntent;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/borqs/easervice/EventInfo;->mEventTime:J

    .line 128
    return-void
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/borqs/easervice/EventInfo;->mContentIntent:Landroid/app/PendingIntent;

    .line 200
    return-void
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 135
    iput p1, p0, Lcom/borqs/easervice/EventInfo;->mCount:I

    .line 136
    return-void
.end method

.method public setLastEventTime(J)V
    .locals 1

    .prologue
    .line 215
    iput-wide p1, p0, Lcom/borqs/easervice/EventInfo;->mEventTime:J

    .line 216
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/borqs/easervice/EventInfo;->mText:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setTitleTxt(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/borqs/easervice/EventInfo;->mTitleTxt:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 103
    iget v0, p0, Lcom/borqs/easervice/EventInfo;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget v0, p0, Lcom/borqs/easervice/EventInfo;->mEventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTitleTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mTickerTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSummaryTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mSubTxt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mContentIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 112
    iget-object v0, p0, Lcom/borqs/easervice/EventInfo;->mFullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 113
    iget-wide v0, p0, Lcom/borqs/easervice/EventInfo;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/borqs/easervice/EventInfo;->writeToParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method
