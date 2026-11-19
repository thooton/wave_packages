.class Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;
.super Ljava/lang/Object;
.source "FavouriteMessageList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavouriteMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mHasSelectAll:Z

.field private mMode:Landroid/view/ActionMode;

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

.field final synthetic this$0:Lcom/android/mms/rcs/FavouriteMessageList;


# direct methods
.method static synthetic -get0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)Lcom/android/mms/rcs/RcsSelectionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList;)V
    .locals 1

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    .line 476
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMode:Landroid/view/ActionMode;

    .line 469
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;-><init>(Lcom/android/mms/rcs/FavouriteMessageList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    .line 522
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 529
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 524
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-wrap1(Lcom/android/mms/rcs/FavouriteMessageList;)V

    goto :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x7f0f017b
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 480
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0, v4}, Lcom/android/mms/rcs/FavouriteMessageList;->-set2(Lcom/android/mms/rcs/FavouriteMessageList;Z)Z

    .line 481
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 482
    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMode:Landroid/view/ActionMode;

    .line 483
    const v1, 0x7f0e0003

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 485
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    .line 486
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 487
    const/high16 v1, 0x7f040000

    .line 486
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 490
    new-instance v1, Lcom/android/mms/rcs/RcsSelectionMenu;

    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 491
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0f0006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 492
    new-instance v3, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;-><init>(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)V

    .line 490
    invoke-direct {v1, v2, v0, v3}, Lcom/android/mms/rcs/RcsSelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    .line 508
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavouriteMessageList;->-set2(Lcom/android/mms/rcs/FavouriteMessageList;Z)Z

    .line 535
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 536
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 537
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsSelectionMenu;->dismiss()V

    .line 539
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 550
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    iget-object v2, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v2}, Lcom/android/mms/rcs/FavouriteMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 553
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 552
    const v4, 0x7f070310

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/rcs/RcsSelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 554
    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v1}, Lcom/android/mms/rcs/FavouriteMessageList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 555
    iput-boolean v6, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    iget-boolean v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/RcsSelectionMenu;->updateSelectAllMode(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->updateItemBackgroud(I)V

    .line 561
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-get3(Lcom/android/mms/rcs/FavouriteMessageList;)Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 562
    return-void

    .line 557
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mHasSelectAll:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 512
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/rcs/RcsSelectionMenu;

    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v1}, Lcom/android/mms/rcs/FavouriteMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 514
    iget-object v3, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v3}, Lcom/android/mms/rcs/FavouriteMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 513
    const v3, 0x7f070310

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/RcsSelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 516
    :cond_0
    return v5
.end method

.method public setModeFinish()V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 543
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->mMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 546
    return-void
.end method
