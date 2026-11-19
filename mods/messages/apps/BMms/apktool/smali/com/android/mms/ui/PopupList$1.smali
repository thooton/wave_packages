.class Lcom/android/mms/ui/PopupList$1;
.super Ljava/lang/Object;
.source "PopupList.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0, v1}, Lcom/android/mms/ui/PopupList;->-set0(Lcom/android/mms/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get2(Lcom/android/mms/ui/PopupList;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get2(Lcom/android/mms/ui/PopupList;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v1}, Lcom/android/mms/ui/PopupList;->-get3(Lcom/android/mms/ui/PopupList;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get0(Lcom/android/mms/ui/PopupList;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 85
    iget-object v1, p0, Lcom/android/mms/ui/PopupList$1;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v1}, Lcom/android/mms/ui/PopupList;->-get5(Lcom/android/mms/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 87
    :cond_2
    return-void
.end method
