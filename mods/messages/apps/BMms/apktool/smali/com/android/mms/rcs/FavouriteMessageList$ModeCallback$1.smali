.class Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;
.super Ljava/lang/Object;
.source "FavouriteMessageList.java"

# interfaces
.implements Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPopupItemClick(I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 495
    if-ne p1, v2, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->-get0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->unCheckAll()V

    .line 498
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->-set0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;Z)Z

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->-get1(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)Lcom/android/mms/rcs/RcsSelectionMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-static {v1}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->-get0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/rcs/RcsSelectionMenu;->updateSelectAllMode(Z)V

    .line 505
    :cond_0
    return v2

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    iget-object v0, v0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->checkAll()V

    .line 501
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback$1;->this$1:Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;

    invoke-static {v0, v2}, Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;->-set0(Lcom/android/mms/rcs/FavouriteMessageList$ModeCallback;Z)Z

    goto :goto_0
.end method
