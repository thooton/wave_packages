.class Lcom/android/mms/ui/ComposeMessageActivity$10;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 5296
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 5286
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 5290
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap83(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 5291
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$10;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set3(Lcom/android/mms/ui/ComposeMessageActivity;I)I

    .line 5292
    return-void
.end method
