.class Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;
.super Landroid/database/ContentObserver;
.source "ContactsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    .line 164
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;->onChange(ZLandroid/net/Uri;)V

    .line 168
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v2, v4}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-set0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Z)Z

    .line 175
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get3(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$1;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v0, v4}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-wrap0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V

    .line 178
    :cond_0
    return-void
.end method
