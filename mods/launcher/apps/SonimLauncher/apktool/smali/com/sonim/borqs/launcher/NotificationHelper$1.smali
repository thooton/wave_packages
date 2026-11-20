.class Lcom/sonim/borqs/launcher/NotificationHelper$1;
.super Lcom/borqs/eventnotifier/EventCallback;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    .line 142
    invoke-direct {p0}, Lcom/borqs/eventnotifier/EventCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public notifyEvent(Lcom/borqs/easervice/EventInfo;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "In eventCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, ", "

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    const-string/jumbo v2, ", "

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getEventType()I

    move-result v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/NotificationHelper;->-wrap1(Lcom/sonim/borqs/launcher/NotificationHelper;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getEventType()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 154
    :sswitch_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v2

    .line 155
    iget-object v1, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-static {v1, p1}, Lcom/sonim/borqs/launcher/NotificationHelper;->-wrap0(Lcom/sonim/borqs/launcher/NotificationHelper;Lcom/borqs/easervice/EventInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 156
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v6

    .line 154
    const/16 v1, 0x3ea

    invoke-static/range {v0 .. v7}, Lcom/sonim/borqs/launcher/NotificationHelper;->-wrap2(Lcom/sonim/borqs/launcher/NotificationHelper;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V

    goto :goto_0

    .line 160
    :sswitch_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getCount()I

    move-result v2

    .line 161
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getTitleTxt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    .line 162
    invoke-virtual {p1}, Lcom/borqs/easervice/EventInfo;->getLastEventTime()J

    move-result-wide v6

    .line 160
    const/16 v1, 0x3ec

    invoke-static/range {v0 .. v7}, Lcom/sonim/borqs/launcher/NotificationHelper;->-wrap2(Lcom/sonim/borqs/launcher/NotificationHelper;IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;J)V

    goto :goto_0

    .line 165
    :sswitch_2
    iget-object v0, p0, Lcom/sonim/borqs/launcher/NotificationHelper$1;->this$0:Lcom/sonim/borqs/launcher/NotificationHelper;

    invoke-static {v0, p1}, Lcom/sonim/borqs/launcher/NotificationHelper;->-wrap3(Lcom/sonim/borqs/launcher/NotificationHelper;Lcom/borqs/easervice/EventInfo;)V

    goto :goto_0

    .line 150
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0x10 -> :sswitch_2
    .end sparse-switch
.end method
