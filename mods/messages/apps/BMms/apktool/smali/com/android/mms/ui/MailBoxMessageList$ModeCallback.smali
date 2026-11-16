.class Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field private mHasSelectAll:Z

.field private mMultiSelectActionBarView:Landroid/view/View;

.field private mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)Lcom/android/mms/ui/SelectionMenu;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    return p1
.end method

.method private constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 1

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    .line 1031
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;-><init>(Lcom/android/mms/ui/MailBoxMessageList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1082
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    .line 1083
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1090
    :goto_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 1091
    const/4 v0, 0x1

    return v0

    .line 1085
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap1(Lcom/android/mms/ui/MailBoxMessageList;)V

    goto :goto_0

    .line 1083
    nop

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

    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, v4}, Lcom/android/mms/ui/MailBoxMessageList;->-set2(Lcom/android/mms/ui/MailBoxMessageList;Z)Z

    .line 1042
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get11(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1044
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1046
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 1047
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1048
    const/high16 v1, 0x7f040000

    .line 1047
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 1051
    new-instance v1, Lcom/android/mms/ui/SelectionMenu;

    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mMultiSelectActionBarView:Landroid/view/View;

    const v3, 0x7f0f0006

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1053
    new-instance v3, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback$1;-><init>(Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;)V

    .line 1051
    invoke-direct {v1, v2, v0, v3}, Lcom/android/mms/ui/SelectionMenu;-><init>(Landroid/content/Context;Landroid/widget/Button;Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V

    iput-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    .line 1069
    return v4
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1096
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->-set2(Lcom/android/mms/ui/MailBoxMessageList;Z)Z

    .line 1097
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 1098
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->notifyDataSetChanged()V

    .line 1099
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get11(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    invoke-virtual {v0}, Lcom/android/mms/ui/SelectionMenu;->dismiss()V

    .line 1102
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1106
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1107
    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 1108
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    iget-object v2, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v2}, Lcom/android/mms/ui/MailBoxMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    .line 1109
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 1108
    const v4, 0x7f070310

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1110
    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v1}, Lcom/android/mms/ui/MailBoxMessageList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1111
    iput-boolean v6, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    .line 1115
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    iget-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectionMenu;->updateSelectAllMode(Z)V

    .line 1116
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get4(Lcom/android/mms/ui/MailBoxMessageList;)Lcom/android/mms/ui/MailBoxMessageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->updateItemBackgroud(I)V

    .line 1117
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    invoke-virtual {v0}, Lcom/android/mms/ui/SelectionMenu;->updateCheckedCount()V

    .line 1118
    return-void

    .line 1113
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mHasSelectAll:Z

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->mSelectionMenu:Lcom/android/mms/ui/SelectionMenu;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v1}, Lcom/android/mms/ui/MailBoxMessageList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 1075
    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageList$ModeCallback;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-virtual {v3}, Lcom/android/mms/ui/MailBoxMessageList;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1074
    const v3, 0x7f070310

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SelectionMenu;->setTitle(Ljava/lang/CharSequence;)V

    .line 1077
    :cond_0
    return v5
.end method
