.class public Lcom/borqs/eventnotifier/EventNotifier;
.super Ljava/lang/Object;
.source "EventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/borqs/eventnotifier/EventNotifier$EventNotifierException;,
        Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/borqs/eventnotifier/EventNotifier;


# instance fields
.field private final NOTIFIER_SERVICE_CLASS_NAME:Ljava/lang/String;

.field private final NOTIFIER_SERVICE_PACKAGE_NAME:Ljava/lang/String;

.field private isBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mPendingRegReqs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/borqs/eventnotifier/EventCallback;",
            "Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/borqs/easervice/IEAService;


# direct methods
.method static synthetic -get0(Lcom/borqs/eventnotifier/EventNotifier;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    return v0
.end method

.method static synthetic -set0(Lcom/borqs/eventnotifier/EventNotifier;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/borqs/eventnotifier/EventNotifier;Lcom/borqs/easervice/IEAService;)Lcom/borqs/easervice/IEAService;
    .locals 0

    iput-object p1, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/borqs/eventnotifier/EventNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/borqs/eventnotifier/EventNotifier;->registerPendingRequests()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string/jumbo v0, "com.borqs.easervice"

    iput-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->NOTIFIER_SERVICE_PACKAGE_NAME:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "com.borqs.easervice.EAService"

    iput-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->NOTIFIER_SERVICE_CLASS_NAME:Ljava/lang/String;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    .line 60
    iput-object v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    .line 61
    iput-object v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mPendingRegReqs:Ljava/util/HashMap;

    .line 67
    return-void
.end method

.method private connectToEAService()V
    .locals 5

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "connectToEAService, isBound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/borqs/eventnotifier/EventNotifier;->finish()V

    .line 102
    iget-boolean v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/borqs/eventnotifier/EventNotifier$1;

    invoke-direct {v0, p0}, Lcom/borqs/eventnotifier/EventNotifier$1;-><init>(Lcom/borqs/eventnotifier/EventNotifier;)V

    iput-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "connectToEAService,inside if, isBound : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.borqs.easervice"

    .line 123
    const-string/jumbo v4, "com.borqs.easervice.EAService"

    .line 122
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    .line 121
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 127
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/borqs/eventnotifier/EventNotifier;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/borqs/eventnotifier/EventNotifier;

    invoke-direct {v0}, Lcom/borqs/eventnotifier/EventNotifier;-><init>()V

    sput-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    .line 72
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    iput-object p0, v0, Lcom/borqs/eventnotifier/EventNotifier;->mContext:Landroid/content/Context;

    .line 75
    :cond_0
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    iget-object v0, v0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 76
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    invoke-direct {v0}, Lcom/borqs/eventnotifier/EventNotifier;->connectToEAService()V

    .line 82
    :cond_1
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    return-object v0
.end method

.method private registerPendingRequests()V
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mPendingRegReqs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;

    .line 207
    :try_start_0
    iget-object v2, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    iget-object v3, v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->callback:Lcom/borqs/eventnotifier/EventCallback;

    .line 208
    iget v4, v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->eventTypes:I

    iget-object v5, v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->filterText:Ljava/lang/String;

    iget-boolean v6, v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->missedEventsOnly:Z

    .line 207
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/borqs/easervice/IEAService;->registerEventCallback(Lcom/borqs/easervice/IEventCallback;ILjava/lang/String;Z)I

    move-result v2

    const/4 v3, -0x2

    if-ne v3, v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "EventNotifier not configured to handle event types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    iget v0, v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;->eventTypes:I

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPendingRequests: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "EventNotifier finish"

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    if-eqz v0, :cond_1

    .line 133
    const-string/jumbo v0, "EventNotifier finish, when instance is not null"

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    .line 135
    :try_start_0
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/borqs/eventnotifier/EventNotifier;->isBound:Z

    .line 137
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    iget-object v0, v0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    iget-object v1, v1, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 141
    sget-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/borqs/eventnotifier/EventNotifier;->mConnection:Landroid/content/ServiceConnection;

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/borqs/eventnotifier/EventNotifier;->mInstance:Lcom/borqs/eventnotifier/EventNotifier;

    .line 143
    const-string/jumbo v0, "EventNotifier finish, try"

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 146
    const-string/jumbo v0, "EventNotifier finish, catch"

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method public loge(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public registerEventCallback(Lcom/borqs/eventnotifier/EventCallback;ILjava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/borqs/eventnotifier/EventNotifier$EventNotifierException;
        }
    .end annotation

    .prologue
    .line 166
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Lcom/borqs/eventnotifier/EventNotifier$EventNotifierException;

    const-string/jumbo v1, "Invalid callback parameter"

    invoke-direct {v0, v1}, Lcom/borqs/eventnotifier/EventNotifier$EventNotifierException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    if-eqz v0, :cond_3

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/borqs/easervice/IEAService;->registerEventCallback(Lcom/borqs/easervice/IEventCallback;ILjava/lang/String;Z)I

    move-result v0

    const/4 v1, -0x2

    if-ne v1, v0, :cond_2

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "EventNotifier not configured to handle event types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_2
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerEventCallback: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_3
    new-instance v0, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/borqs/eventnotifier/EventNotifier$PendingRequestHolder;-><init>(Lcom/borqs/eventnotifier/EventNotifier;Lcom/borqs/eventnotifier/EventCallback;ILjava/lang/String;Z)V

    .line 183
    iget-object v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->mPendingRegReqs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/borqs/eventnotifier/EventNotifier;->mPendingRegReqs:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterEventCallback(Lcom/borqs/eventnotifier/EventCallback;)V
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mService:Lcom/borqs/easervice/IEAService;

    invoke-interface {v0, p1}, Lcom/borqs/easervice/IEAService;->unregisterEventCallback(Lcom/borqs/easervice/IEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/borqs/eventnotifier/EventNotifier;->mPendingRegReqs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterEventCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/borqs/eventnotifier/EventNotifier;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
