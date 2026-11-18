.class Lcom/android/music/MusicUtils$LogEntry;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/MusicUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogEntry"
.end annotation


# instance fields
.field item:Ljava/lang/Object;

.field time:J


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    iput-object p1, p0, Lcom/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    .line 1641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/music/MusicUtils$LogEntry;->time:J

    .line 1642
    return-void
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 1645
    invoke-static {}, Lcom/android/music/MusicUtils;->-get0()Landroid/text/format/Time;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/music/MusicUtils$LogEntry;->time:J

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 1646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/music/MusicUtils;->-get0()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1652
    :goto_0
    return-void

    .line 1650
    :cond_0
    iget-object v0, p0, Lcom/android/music/MusicUtils$LogEntry;->item:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method
