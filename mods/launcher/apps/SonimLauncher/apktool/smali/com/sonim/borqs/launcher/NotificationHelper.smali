.class public Lcom/sonim/borqs/launcher/NotificationHelper;
.super Ljava/lang/Object;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/NotificationHelper$1;,
        Lcom/sonim/borqs/launcher/NotificationHelper$2;
    }
.end annotation


# instance fields
.field private eventCallback:Lcom/borqs/eventnotifier/EventCallback;

.field public mAlramCount:Lcom/borqs/easervice/EventInfo;

.field public mCalendarCount:Lcom/borqs/easervice/EventInfo;

.field public mCallCount:Lcom/borqs/easervice/EventInfo;

.field private mContext:Landroid/content/Context;

.field public mEventCount:I

.field mHandlerEvent:Landroid/os/Handler;

.field private mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

.field public mMsgCount:Lcom/borqs/easervice/EventInfo;

.field private mNotifier:Lcom/borqs/eventnotifier/EventNotifier;

.field public mVoicemailCount:Lcom/borqs/easervice/EventInfo;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/NotificationHelper;)Lcom/sonim/borqs/launcher/LauncherActivity;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/NotificationHelper;Lcom/borqs/easervice/EventInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/NotificationHelper;->getTitleForAlarmCount(Lcom/borqs/easervice/EventInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonim/borqs/launcher/NotificationHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/NotificationHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonim/borqs/launcher/NotificationHelper;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sonim/borqs/launcher/NotificationHelper;->updateEventCount(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonim/borqs/launcher/NotificationHelper;Lcom/borqs/easervice/EventInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/NotificationHelper;->updateVoicemailCount(Lcom/borqs/easervice/EventInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    .line 139
    new-instance v0, Lcom/sonim/borqs/launcher/NotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/NotificationHelper$1;-><init>(Lcom/sonim/borqs/launcher/NotificationHelper;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->eventCallback:Lcom/borqs/eventnotifier/EventCallback;

    .line 223
    new-instance v0, Lcom/sonim/borqs/launcher/NotificationHelper$2;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/NotificationHelper$2;-><init>(Lcom/sonim/borqs/launcher/NotificationHelper;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mHandlerEvent:Landroid/os/Handler;

    .line 77
    const-string/jumbo v0, "NotificationUpdate"

    const-string/jumbo v1, " In NotificationHelper"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mContext:Landroid/content/Context;

    .line 79
    check-cast p1, Lcom/sonim/borqs/launcher/LauncherActivity;

    iput-object p1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mLauncher:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 80
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    .line 81
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    .line 82
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCallCount:Lcom/borqs/easervice/EventInfo;

    .line 83
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mMsgCount:Lcom/borqs/easervice/EventInfo;

    .line 84
    new-instance v0, Lcom/borqs/easervice/EventInfo;

    invoke-direct {v0}, Lcom/borqs/easervice/EventInfo;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    .line 85
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/borqs/eventnotifier/EventNotifier;->getInstance(Landroid/content/Context;)Lcom/borqs/eventnotifier/EventNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mNotifier:Lcom/borqs/eventnotifier/EventNotifier;

    .line 86
    return-void
.end method

.method private getTitleForAlarmCount(Lcom/borqs/easervice/EventInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    const-string/jumbo v0, "NotificationUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getTitleTxt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "subtext: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getSubTxt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v0

    .line 175
    if-lez v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f0c0002

    .line 176
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 220
    const-string/jumbo v0, "NotificationUpdate"

    invoke-static {v0, p1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private updateEventCount(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mHandlerEvent:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 128
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 129
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 130
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string/jumbo v2, "eventTime"

    invoke-virtual {v1, v2, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 133
    const-string/jumbo v2, "launchIntent"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 136
    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mHandlerEvent:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    return-void
.end method

.method private updateVoicemailCount(Lcom/borqs/easervice/EventInfo;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 192
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    .line 193
    const-string/jumbo v1, "NotificationUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "info.getTitleTxt() - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz v3, :cond_1

    const-string/jumbo v1, "New voicemail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string/jumbo v1, "Correo de voz"

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 194
    if-eqz v1, :cond_1

    .line 198
    :cond_0
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getSubTxt()Ljava/lang/String;

    move-result-object v1

    .line 199
    if-eqz v1, :cond_2

    const-string/jumbo v2, "Voicemail notification is removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const-string/jumbo v1, "NotificationUpdate"

    const-string/jumbo v2, "Voicemail notification is removed"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 212
    :goto_0
    invoke-virtual {p1, v2}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 213
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v6

    .line 213
    const/16 v1, 0x3ee

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonim/borqs/launcher/NotificationHelper;->updateEventCount(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V

    .line 216
    :cond_1
    return-void

    .line 203
    :cond_2
    const-string/jumbo v1, "("

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 204
    const-string/jumbo v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 206
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 209
    :cond_3
    const-string/jumbo v1, "NotificationUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Voicemail count calculated as :- "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    const-string/jumbo v4, ", Title is :"

    .line 209
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    goto :goto_0
.end method


# virtual methods
.method public getEventNotifier()Lcom/borqs/eventnotifier/EventNotifier;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mNotifier:Lcom/borqs/eventnotifier/EventNotifier;

    return-object v0
.end method

.method public registerEventCallbacks()V
    .locals 5

    .prologue
    .line 90
    :try_start_0
    const-string/jumbo v0, "NotificationUpdate"

    const-string/jumbo v1, " In registerEventCallbacks"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mNotifier:Lcom/borqs/eventnotifier/EventNotifier;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->eventCallback:Lcom/borqs/eventnotifier/EventCallback;

    .line 92
    const/16 v2, 0x1c

    .line 94
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 91
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/borqs/eventnotifier/EventNotifier;->registerEventCallback(Lcom/borqs/eventnotifier/EventCallback;ILjava/lang/String;Z)V
    :try_end_0
    .catch Lcom/borqs/eventnotifier/EventNotifier$EventNotifierException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    const-string/jumbo v1, "NotificationUpdate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregisterEventCallbacks()V
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "NotificationUpdate"

    const-string/jumbo v1, " In unregisterEventCallbacks"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->mNotifier:Lcom/borqs/eventnotifier/EventNotifier;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper;->eventCallback:Lcom/borqs/eventnotifier/EventCallback;

    invoke-virtual {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier;->unregisterEventCallback(Lcom/borqs/eventnotifier/EventCallback;)V

    .line 109
    return-void
.end method
