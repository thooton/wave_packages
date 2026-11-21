.class public Lcom/nuance/flext9_OEM/input/ContactsSyncManager$DataSyncIntentService;
.super Landroid/app/IntentService;
.source "ContactsSyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/ContactsSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSyncIntentService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 789
    const-string/jumbo v0, "DataSyncIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 790
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 794
    invoke-static {}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get4()Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 795
    const-string/jumbo v0, "syncType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 796
    if-eq v0, v1, :cond_0

    .line 797
    invoke-static {}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-get4()Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-wrap1(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V

    .line 800
    :cond_0
    return-void
.end method
