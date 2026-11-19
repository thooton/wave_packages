.class Lcom/android/mms/ui/MobilePaperShowActivity$4;
.super Ljava/lang/Object;
.source "MobilePaperShowActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;->drawRootView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$4;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 289
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 290
    const/4 v0, 0x0

    return v0
.end method
