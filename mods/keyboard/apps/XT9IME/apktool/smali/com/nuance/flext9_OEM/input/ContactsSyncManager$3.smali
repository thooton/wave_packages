.class Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    .line 206
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->onChange(ZLandroid/net/Uri;)V

    .line 210
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 215
    :try_start_0
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    iget-object v4, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v4}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 216
    const-string/jumbo v5, "user_setup_complete"

    .line 215
    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    invoke-static {v3, v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-set1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;Z)Z

    .line 217
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get2(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 219
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get5(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    invoke-static {v3, v2}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-wrap0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_2
    return-void

    .line 215
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v2, v1

    .line 219
    goto :goto_1

    .line 221
    :catch_0
    move-exception v2

    .line 222
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$3;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    invoke-static {v3}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get5(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_3
    invoke-static {v2, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-wrap0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3
.end method
