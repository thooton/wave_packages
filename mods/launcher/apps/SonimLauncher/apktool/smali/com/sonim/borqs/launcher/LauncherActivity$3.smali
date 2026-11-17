.class Lcom/sonim/borqs/launcher/LauncherActivity$3;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 2529
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2536
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap1(Lcom/sonim/borqs/launcher/LauncherActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sim.cling.pref"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2538
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get13(Lcom/sonim/borqs/launcher/LauncherActivity;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2537
    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, v8}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set6(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z

    .line 2540
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->showFTU()V

    .line 2548
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2549
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, " SPN String updated "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    const-string/jumbo v0, "spn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2551
    const-string/jumbo v1, "plmn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2552
    const-string/jumbo v2, "showSpn"

    invoke-virtual {p2, v2, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2553
    const-string/jumbo v3, "showPlmn"

    invoke-virtual {p2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2554
    if-nez v2, :cond_1

    if-eqz v3, :cond_4

    .line 2555
    :cond_1
    const-string/jumbo v4, "LauncherActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "one flag is true, SPN flag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2556
    const-string/jumbo v5, ", PLMN flag : "

    .line 2555
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 2558
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2559
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SPN Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2579
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2580
    const-string/jumbo v1, "airplane_mode_on"

    .line 2578
    invoke-static {v0, v1, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2581
    if-ne v0, v8, :cond_6

    .line 2584
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2585
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, " Airpane mode "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2586
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, v8}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set0(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z

    .line 2591
    :goto_1
    return-void

    .line 2560
    :cond_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 2561
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2562
    const-string/jumbo v0, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PLMN Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2564
    :cond_4
    if-nez v2, :cond_2

    xor-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_2

    .line 2565
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap0(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v8, :cond_5

    .line 2566
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, " No SIM card "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 2570
    :cond_5
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " No coverage, SPN flag"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2571
    const-string/jumbo v2, ", PLMN Flag : "

    .line 2570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get15(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2588
    :cond_6
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$3;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, v7}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set0(Lcom/sonim/borqs/launcher/LauncherActivity;Z)Z

    goto/16 :goto_1
.end method
