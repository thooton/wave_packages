.class Lcom/sonim/borqs/launcher/NotificationHelper$2;
.super Landroid/os/Handler;
.source "NotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/NotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/NotificationHelper;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/NotificationHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    .line 223
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method

.method private getLaunchIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 291
    const-string/jumbo v0, "launchIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    const-string/jumbo v0, "NotificationUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mHandlerevents msg.what =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 281
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->-get0(Lcom/sonim/borqs/launcher/NotificationHelper;)Lcom/sonim/borqs/launcher/LauncherActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->loadMissedEventInfoFromNotification()V

    .line 287
    return-void

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/NotificationHelper;->registerEventCallbacks()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0, v3}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 234
    const-string/jumbo v0, "NotificationUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \n \n alram count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    .line 237
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 238
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setTitleTxt(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setText(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "eventTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/borqs/easervice/EventInfo;->setLastEventTime(J)V

    .line 241
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mAlramCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/NotificationHelper$2;->getLaunchIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setContentIntent(Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    goto/16 :goto_0

    .line 249
    :pswitch_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0, v3}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 250
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    .line 252
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 253
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setTitleTxt(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setText(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "eventTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/borqs/easervice/EventInfo;->setLastEventTime(J)V

    .line 256
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mCalendarCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/NotificationHelper$2;->getLaunchIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 262
    :goto_1
    const-string/jumbo v1, "NotificationUpdate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event txt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    goto :goto_1

    .line 266
    :pswitch_4
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {v0, v3}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 267
    const-string/jumbo v0, "NotificationUpdate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " \n \n Voicemail count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    or-int/lit8 v1, v1, 0x5

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    .line 270
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setCount(I)V

    .line 271
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setTitleTxt(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setText(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "eventTime"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/borqs/easervice/EventInfo;->setLastEventTime(J)V

    .line 274
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mVoicemailCount:Lcom/borqs/easervice/EventInfo;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/NotificationHelper$2;->getLaunchIntent(Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/borqs/easervice/EventInfo;->setContentIntent(Landroid/app/PendingIntent;)V

    .line 278
    :goto_2
    const-string/jumbo v1, "NotificationUpdate"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "event txt: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$2;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    iget v1, v1, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    and-int/lit8 v1, v1, -0x6

    iput v1, v0, Lcom/sonim/borqs/launcher/NotificationHelper;->mEventCount:I

    goto :goto_2

    .line 227
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
