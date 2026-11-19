.class Lcom/android/mms/ui/PopupList$3;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-wrap0(Lcom/android/mms/ui/PopupList;)V

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v1}, Lcom/android/mms/ui/PopupList;->-get0(Lcom/android/mms/ui/PopupList;)Landroid/view/View;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v2}, Lcom/android/mms/ui/PopupList;->-get8(Lcom/android/mms/ui/PopupList;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v3}, Lcom/android/mms/ui/PopupList;->-get9(Lcom/android/mms/ui/PopupList;)I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v4}, Lcom/android/mms/ui/PopupList;->-get10(Lcom/android/mms/ui/PopupList;)I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/PopupList$3;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v5}, Lcom/android/mms/ui/PopupList;->-get7(Lcom/android/mms/ui/PopupList;)I

    move-result v5

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 111
    return-void
.end method
