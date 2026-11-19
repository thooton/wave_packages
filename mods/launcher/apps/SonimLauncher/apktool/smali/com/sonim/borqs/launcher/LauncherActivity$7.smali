.class Lcom/sonim/borqs/launcher/LauncherActivity$7;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$7;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$7;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get2(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->onPageScrollStateChanged(I)V

    .line 596
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$7;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get2(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->onPageScrolled(IFI)V

    .line 582
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$7;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-get2(Lcom/sonim/borqs/launcher/LauncherActivity;)Lcom/sonim/borqs/launcher/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/CirclePageIndicator;->onPageSelected(I)V

    .line 588
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$7;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap2(Lcom/sonim/borqs/launcher/LauncherActivity;I)V

    .line 591
    :cond_0
    return-void
.end method
