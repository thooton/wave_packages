.class Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;
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
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    .line 188
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;->onChange(ZLandroid/net/Uri;)V

    .line 192
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/ContactsSyncManager$2;->this$0:Lcom/nuance/flext9_OEM/input/ContactsSyncManager;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/nuance/flext9_OEM/input/ContactsSyncManager;->-wrap0(Lcom/nuance/flext9_OEM/input/ContactsSyncManager;I)V

    .line 197
    return-void
.end method
