.class public Lcom/android/mms/ui/AttachmentPlayAllActivity;
.super Lcom/android/mms/ui/BaseAttachmentViewActivity;
.source "AttachmentPlayAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;,
        Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isDataLoadFinished:Z

.field private mAttachmentHandler:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

.field private mAttachmentRunnable:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

.field private mMediaWithTextModelQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/android/mms/model/MediaWithTextModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->isDataLoadFinished:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/AttachmentPlayAllActivity;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mMediaWithTextModelQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onBackPressed()V

    .line 108
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f040055

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;-><init>(Lcom/android/mms/ui/BaseAttachmentViewActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BaseAttachmentViewActivity$GetDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method public onDataInsert(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataInsert"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/AttachmentPlayAllActivity$1;-><init>(Lcom/android/mms/ui/AttachmentPlayAllActivity;Ljava/lang/String;Lcom/android/mms/model/MediaModel;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method

.method public onDataLoadFinished()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->isDataLoadFinished:Z

    .line 86
    return-void
.end method

.method public onDataUpdate(Lcom/android/mms/model/MediaModel;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onItemClick(I)V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 124
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->setPlayAllMode(Z)V

    .line 125
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->finish()V

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayNextSlide()V
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;-><init>(Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentHandler:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

    .line 59
    new-instance v0, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;-><init>(Lcom/android/mms/ui/AttachmentPlayAllActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentRunnable:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentHandler:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentRunnable:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->invalidateOptionsMenu()V

    .line 114
    const/4 v0, 0x5

    const v1, 0x7f07038e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 115
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "playallActivity onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->onStop()V

    .line 171
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentHandler:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentRunnable:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentHandler:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mAttachmentRunnable:Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentRunnable;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setInitialSlideSize(I)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->setInitialSlideSize(I)V

    .line 94
    sget-object v0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setInitialSlideSize"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mMediaWithTextModelQueue:Ljava/util/Queue;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mMediaWithTextModelList:Ljava/util/List;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/AttachmentPlayAllActivity;->mActualNumberOfSlides:I

    .line 102
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AttachmentPlayAllActivity;->setPlayAllMode(Z)V

    .line 103
    return-void
.end method
