.class public Lcom/android/mms/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field private mSlideCount:I

.field private mSlideView:Lcom/android/mms/ui/SlideView;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideshowActivity;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SlideshowActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/ui/SlideView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/mms/ui/SlideshowActivity;->isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initMediaController()V
    .locals 3

    .prologue
    .line 254
    new-instance v0, Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 255
    new-instance v0, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    .line 256
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v1, 0x7f0f015e

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 259
    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowActivity$2;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 264
    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowActivity$3;-><init>(Lcom/android/mms/ui/SlideshowActivity;)V

    .line 258
    invoke-virtual {v0, v1, v2}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method private static final isMMSConformance(Lorg/w3c/dom/smil/SMILDocument;)Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 90
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getHead()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v0

    .line 91
    if-nez v0, :cond_0

    .line 93
    return v2

    .line 95
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-eq v1, v9, :cond_2

    .line 98
    :cond_1
    return v2

    .line 100
    :cond_2
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_3

    const-string/jumbo v1, "layout"

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    .line 103
    :cond_3
    return v2

    .line 105
    :cond_4
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 106
    if-nez v4, :cond_5

    .line 108
    return v2

    .line 110
    :cond_5
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 111
    if-gtz v5, :cond_6

    .line 113
    return v2

    :cond_6
    move v3, v2

    .line 115
    :goto_0
    if-ge v3, v5, :cond_10

    .line 116
    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 117
    if-nez v0, :cond_7

    .line 119
    return v2

    .line 121
    :cond_7
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    .line 122
    const-string/jumbo v6, "root-layout"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 115
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 124
    :cond_9
    const-string/jumbo v6, "region"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 125
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    move v1, v2

    .line 126
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 127
    invoke-interface {v6, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 128
    if-nez v0, :cond_a

    .line 129
    return v2

    .line 131
    :cond_a
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    .line 133
    const-string/jumbo v8, "left"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string/jumbo v8, "top"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 134
    const-string/jumbo v8, "height"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 133
    if-nez v8, :cond_b

    .line 134
    const-string/jumbo v8, "width"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 133
    if-nez v8, :cond_b

    .line 135
    const-string/jumbo v8, "fit"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 133
    if-eqz v8, :cond_c

    .line 126
    :cond_b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 137
    :cond_c
    const-string/jumbo v8, "id"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 139
    instance-of v7, v0, Lcom/android/mms/dom/AttrImpl;

    if-eqz v7, :cond_d

    .line 140
    check-cast v0, Lcom/android/mms/dom/AttrImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string/jumbo v7, "Text"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    const-string/jumbo v7, "Image"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 148
    return v2

    .line 142
    :cond_d
    return v2

    .line 151
    :cond_e
    return v2

    .line 156
    :cond_f
    return v2

    .line 159
    :cond_10
    return v9
.end method


# virtual methods
.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/SlideshowActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/SlideshowActivity$4;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 172
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 173
    const v0, 0x7f04005b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->setContentView(I)V

    .line 175
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 180
    :try_start_0
    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideCount:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    const v0, 0x7f0f015e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    .line 189
    const-string/jumbo v0, "SlideshowPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-static {v0, p0, v2, v1}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    .line 191
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/SlideshowActivity$1;-><init>(Lcom/android/mms/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Cannot present the slide show."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->finish()V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSlideView:Lcom/android/mms/ui/SlideView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setMediaController(Landroid/widget/MediaController;)V

    .line 335
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 336
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 340
    sparse-switch p1, :sswitch_data_0

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 363
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 351
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    .line 352
    if-nez v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    .line 351
    if-eqz v0, :cond_0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 340
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 291
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    .line 294
    const-string/jumbo v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    .line 293
    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayerController:Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowActivity$SmilPlayerController;->pause()V

    .line 302
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string/jumbo v1, "SimlDocumentEnd"

    .line 284
    const/4 v2, 0x0

    .line 283
    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 286
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 287
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 311
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stopWhenReload()V

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 317
    const v1, 0x10202f5

    .line 316
    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 318
    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_1

    .line 319
    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 325
    :cond_2
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 276
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
