.class Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;
.super Ljava/lang/Object;
.source "DigitalClock.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;

.field final synthetic val$clock:Lcom/sonim/borqs/launcher/DigitalClock;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;Lcom/sonim/borqs/launcher/DigitalClock;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;->this$1:Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;

    iput-object p2, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/sonim/borqs/launcher/DigitalClock;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/sonim/borqs/launcher/DigitalClock;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/DigitalClock;->updateTime()V

    .line 91
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver$1;->val$clock:Lcom/sonim/borqs/launcher/DigitalClock;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/DigitalClock;->updateDate()V

    .line 92
    return-void
.end method
