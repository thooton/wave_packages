.class public Lcom/sonim/borqs/launcher/MyEventsItem;
.super Ljava/lang/Object;
.source "MyEventsItem.java"


# instance fields
.field private mEventTypeAndPriority:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLastEventTime:J

.field private mLaunchIntent:Landroid/content/Intent;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTotalMissedEvents:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventTypeAndPriority()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mEventTypeAndPriority:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLastEventTime()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mLastEventTime:J

    return-wide v0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTotalMissedEvents()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mTotalMissedEvents:I

    return v0
.end method

.method public setEventTypeAndPriority(I)V
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mEventTypeAndPriority:I

    .line 76
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 56
    return-void
.end method

.method public setLastEventTime(J)V
    .locals 1

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mLastEventTime:J

    .line 68
    return-void
.end method

.method public setLaunchIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mLaunchIntent:Landroid/content/Intent;

    .line 80
    return-void
.end method

.method public setPendingIntent(Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mPendingIntent:Landroid/app/PendingIntent;

    .line 85
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mSummary:Ljava/lang/CharSequence;

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mTitle:Ljava/lang/CharSequence;

    .line 60
    return-void
.end method

.method public setTotalMissedEvents(I)V
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/sonim/borqs/launcher/MyEventsItem;->mTotalMissedEvents:I

    .line 72
    return-void
.end method
