.class Lcom/sonim/borqs/launcher/LauncherActivity$4;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 2594
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .prologue
    # FEAT(tray): ArgonTray handles package changes (true = done)
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, p2}, Lcom/sonim/borqs/launcher/ArgonTray;->onPackageEvent(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :argon_stock_receiver

    return-void

    :argon_stock_receiver
    .line 2597
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2598
    :cond_0
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "appInstalledReceiver, App-tray is not set"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    return-void

    .line 2601
    :cond_1
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "appInstalledReceiver11 intent.getAction() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    const-string/jumbo v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 2606
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2607
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 2606
    if-eqz v0, :cond_4

    .line 2610
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2611
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    .line 2613
    :cond_2
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, " appInstalledReceiver, Adding STK"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2614
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setSTKApp()V

    .line 2831
    :cond_3
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2832
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/DrawerAdapter;->notifyDataSetChanged()V

    .line 2837
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/AccessArrayList;->setAppsAndFolderListForShorcut(Ljava/util/ArrayList;)V

    .line 2838
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/AccessArrayList;->notifyAppListChanged()V

    .line 2839
    return-void

    .line 2617
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 2618
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2617
    if-eqz v0, :cond_12

    .line 2620
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " appInstalledReceiver, mIsSafeMode---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-boolean v2, v2, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSafeMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-boolean v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mIsSafeMode:Z

    if-eqz v0, :cond_5

    .line 2622
    return-void

    .line 2624
    :cond_5
    const/4 v0, 0x0

    .line 2625
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 2626
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " getdata : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2629
    :goto_1
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appInstalledReceiver intent.getAction() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2630
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 2629
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2630
    const-string/jumbo v3, ", pkgName : "

    .line 2629
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->autoStartAppIfNeeded(Ljava/lang/String;)V

    .line 2634
    const/4 v3, 0x0

    .line 2653
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2654
    const/4 v1, 0x0

    .line 2653
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 2655
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2656
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2657
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2658
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2659
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2660
    const/4 v4, 0x0

    .line 2659
    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 2661
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appInstalledReceiver, resolveInfoList.size() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2662
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    .line 2661
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sonim_postion"

    const/4 v4, -0x1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2664
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_7

    .line 2665
    :cond_6
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "appInstalledReceiver ACTION_PACKAGE_ADDED---,apps folder position is not correct"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2667
    return-void

    .line 2669
    :cond_7
    const-string/jumbo v1, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appInstalledReceiver ACTION_PACKAGE_ADDED,sonimAppsPostion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2671
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_9

    .line 2672
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    .line 2678
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2679
    if-eqz v7, :cond_b

    .line 2681
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 2682
    const/4 v1, 0x0

    move v4, v1

    :goto_2
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_a

    .line 2683
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2684
    const-string/jumbo v1, "LauncherActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " match pkg found at : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    new-instance v5, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {v5, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 2686
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-virtual {v5, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->setApp(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V

    .line 2687
    invoke-virtual {v5, v4}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->setPosition(I)V

    .line 2688
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2682
    :cond_8
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    .line 2674
    :cond_9
    return-void

    .line 2692
    :cond_a
    const-string/jumbo v1, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " matchedPackageNameList size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2693
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2692
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    :cond_b
    const/4 v1, 0x0

    move v6, v1

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v6, v1, :cond_10

    .line 2697
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 2698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2699
    const-string/jumbo v1, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appInstalledReceiver ACTION_PACKAGE_ADDED,pkgAndClassName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2701
    if-eqz v10, :cond_1a

    .line 2702
    new-instance v3, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v3}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    .line 2705
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2704
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 2706
    invoke-virtual {v3, v10}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 2708
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1, v10}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2709
    if-nez v1, :cond_c

    .line 2710
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2712
    :cond_c
    invoke-virtual {v3, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2713
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 2714
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2713
    invoke-virtual {v1, v4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 2717
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 2718
    invoke-virtual {v3, v2}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V

    move-object v5, v3

    .line 2722
    :goto_4
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_e

    if-eqz v10, :cond_e

    .line 2723
    const/4 v3, 0x0

    .line 2725
    if-eqz v7, :cond_f

    .line 2727
    const/4 v1, 0x0

    move v4, v1

    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v4, v1, :cond_d

    .line 2728
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->getApp()Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v11

    .line 2729
    invoke-virtual {v11}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v1

    .line 2730
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v12

    .line 2729
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2731
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->setUpdateFound(Z)V

    .line 2733
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v1

    .line 2732
    invoke-virtual {v11, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageAndClassName(Ljava/lang/String;)V

    .line 2734
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 2735
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setName(Ljava/lang/String;)V

    .line 2736
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setIntent(Landroid/content/Intent;)V

    .line 2737
    invoke-virtual {v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->setPackageName(Ljava/lang/String;)V

    .line 2738
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1, v10}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap7(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V

    .line 2741
    const/4 v3, 0x1

    .line 2742
    const-string/jumbo v11, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " update  position "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 2743
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->getPosition()I

    move-result v1

    .line 2742
    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 2727
    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v1

    goto :goto_5

    .line 2749
    :cond_d
    if-nez v3, :cond_e

    .line 2750
    invoke-virtual {v0, v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V

    .line 2696
    :cond_e
    :goto_7
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move-object v3, v5

    goto/16 :goto_3

    .line 2752
    :cond_f
    if-nez v7, :cond_e

    .line 2753
    const-string/jumbo v1, "LauncherActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appInstalledReceiver ACTION_PACKAGE_ADDEDnew package is added---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2757
    invoke-virtual {v0, v5}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->setAppListInsideFolder(Lcom/sonim/borqs/launcher/LauncherActivity$Apps;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 2776
    :catch_0
    move-exception v0

    .line 2777
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2778
    const-string/jumbo v1, "LauncherActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    return-void

    .line 2763
    :cond_10
    if-eqz v7, :cond_3

    .line 2764
    :try_start_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_8
    if-ltz v2, :cond_3

    .line 2765
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;

    .line 2766
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->isUpdateFound()Z

    move-result v3

    if-nez v3, :cond_11

    .line 2767
    const-string/jumbo v3, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Postion to delete item if activity hase beenremoved from installed package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2769
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->getPosition()I

    move-result v5

    .line 2767
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->getApp()Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageAndClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap3(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V

    .line 2772
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$UpdatedApp;->getPosition()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2764
    :cond_11
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_8

    .line 2784
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2785
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2784
    if-eqz v0, :cond_3

    .line 2786
    xor-int/lit8 v0, v7, 0x1

    .line 2784
    if-eqz v0, :cond_3

    .line 2788
    const/4 v0, 0x0

    .line 2789
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2790
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2792
    :goto_9
    const-string/jumbo v0, "LauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "appInstalledReceiver11 ACTION_PACKAGE_REMOVED, pkgName "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2794
    const-string/jumbo v3, " will be removed"

    .line 2792
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2799
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap3(Lcom/sonim/borqs/launcher/LauncherActivity;Ljava/lang/String;)V

    .line 2801
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get17(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sonim_postion"

    const/4 v3, -0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2802
    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_14

    .line 2803
    :cond_13
    const-string/jumbo v0, "LauncherActivity"

    const-string/jumbo v1, "appInstalledReceiver ACTION_PACKAGE_DELETED---,apps folder position is not correct"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2805
    return-void

    .line 2807
    :cond_14
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    if-eqz v1, :cond_16

    .line 2808
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;

    .line 2812
    new-instance v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    invoke-direct {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;-><init>()V

    .line 2820
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_a
    if-ltz v3, :cond_3

    .line 2821
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    .line 2822
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2823
    const-string/jumbo v1, "LauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "appInstalledReceiver ACTION_PACKAGE_REMOVED application present in the list, match pos found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2826
    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Folder;->-get0(Lcom/sonim/borqs/launcher/LauncherActivity$Folder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2820
    :cond_15
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_a

    .line 2810
    :cond_16
    return-void

    .line 2834
    :cond_17
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$4;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    iget-object v0, v0, Lcom/sonim/borqs/launcher/LauncherActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_18
    move-object v2, v0

    goto/16 :goto_9

    :cond_19
    move v1, v3

    goto/16 :goto_6

    :cond_1a
    move-object v5, v3

    goto/16 :goto_4

    :cond_1b
    move-object v2, v0

    goto/16 :goto_1
.end method
