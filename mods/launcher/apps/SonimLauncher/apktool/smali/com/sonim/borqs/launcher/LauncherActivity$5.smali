.class Lcom/sonim/borqs/launcher/LauncherActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 2997
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3000
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3001
    if-eqz v0, :cond_2

    const-string/jumbo v1, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3006
    const-string/jumbo v0, "short_cut_change"

    .line 3005
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3007
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const v2, 0x7f0b0023

    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3008
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get10()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set4(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3009
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get6(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap6(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;I)V

    .line 3014
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const v2, 0x7f0b0024

    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3015
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get9()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set3(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3017
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get5(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-static {v1, v2, v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap6(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;I)V

    .line 3022
    :cond_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3023
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get8()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set2(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 3025
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$5;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get4(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x66

    invoke-static {v0, v1, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap6(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;I)V

    .line 3029
    :cond_2
    return-void
.end method
