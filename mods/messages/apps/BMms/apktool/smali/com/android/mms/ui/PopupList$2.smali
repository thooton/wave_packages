.class Lcom/android/mms/ui/PopupList$2;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PopupList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PopupList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/PopupList$2;->this$0:Lcom/android/mms/ui/PopupList;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$2;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$2;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$2;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get6(Lcom/android/mms/ui/PopupList;)Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$2;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get6(Lcom/android/mms/ui/PopupList;)Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;

    move-result-object v0

    long-to-int v1, p4

    invoke-interface {v0, v1}, Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;->onPopupItemClick(I)Z

    .line 99
    :cond_1
    return-void
.end method
