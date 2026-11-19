.class public Lcom/android/mms/ext/util/AlarmUtils;
.super Ljava/lang/Object;
.source "AlarmUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static alarmIntent:Landroid/app/PendingIntent;

.field private static alarmMgr:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/android/mms/ext/util/AlarmUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ext/util/AlarmUtils;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startAlarm(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 38
    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/ext/util/AlarmUtils;->alarmMgr:Landroid/app/AlarmManager;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ext/util/AlarmReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    const-string/jumbo v1, "borqs.intent.action.DELETE_OLD_MESSAGES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ext/util/AlarmUtils;->alarmIntent:Landroid/app/PendingIntent;

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 47
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 48
    const/16 v0, 0xb

    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v4}, Ljava/util/Calendar;->set(II)V

    .line 51
    sget-object v0, Lcom/android/mms/ext/util/AlarmUtils;->alarmMgr:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 52
    sget-object v6, Lcom/android/mms/ext/util/AlarmUtils;->alarmIntent:Landroid/app/PendingIntent;

    .line 51
    const/4 v1, 0x1

    .line 52
    const-wide/32 v4, 0x5265c00

    .line 51
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 53
    return-void
.end method
