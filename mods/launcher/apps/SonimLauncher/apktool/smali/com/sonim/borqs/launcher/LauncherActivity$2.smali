.class Lcom/sonim/borqs/launcher/LauncherActivity$2;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 700
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 703
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    new-instance v2, Lcom/sonim/borqs/launcher/DrawerAdapter;

    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;

    move-result-object v3

    .line 707
    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v4

    .line 706
    invoke-direct {v2, v3, v4}, Lcom/sonim/borqs/launcher/DrawerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {v0, v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-set5(Lcom/sonim/borqs/launcher/LauncherActivity;Lcom/sonim/borqs/launcher/DrawerAdapter;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    .line 708
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v2, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v2}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 709
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;

    move-result-object v0

    .line 710
    new-instance v2, Lcom/sonim/borqs/launcher/DrawerClickListener;

    .line 711
    iget-object v3, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v3}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get3(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v4}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get1(Lcom/sonim/borqs/launcher/LauncherActivity;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v5}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get16(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 710
    invoke-direct {v2, v3, v4, v5}, Lcom/sonim/borqs/launcher/DrawerClickListener;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;)V

    .line 709
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->requestFocus()Z

    .line 716
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;

    move-result-object v0

    # FEAT(tray): open on the first entry
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    .line 717
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get12(Lcom/sonim/borqs/launcher/LauncherActivity;)Landroid/widget/GridView;

    move-result-object v0

    # FEAT(tray): open on the first entry
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->smoothScrollToPosition(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 720
    :cond_0
    return-void

    .line 713
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$2;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get11(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/DrawerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/DrawerAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
