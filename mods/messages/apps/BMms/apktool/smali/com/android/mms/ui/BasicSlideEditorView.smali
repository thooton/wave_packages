.class public Lcom/android/mms/ui/BasicSlideEditorView;
.super Landroid/widget/LinearLayout;
.source "BasicSlideEditorView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    }
.end annotation


# instance fields
.field private mAudioNameView:Landroid/widget/TextView;

.field private mAudioView:Landroid/view/View;

.field private mEditText:Landroid/widget/EditText;

.field private mImageView:Landroid/widget/ImageView;

.field private mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mOnTextChangedListenerEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/BasicSlideEditorView;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/BasicSlideEditorView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 60
    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    const v0, 0x7f0f0088

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0f0089

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    .line 66
    const v0, 0x7f0f000f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0f0090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/BasicSlideEditorView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/BasicSlideEditorView$1;-><init>(Lcom/android/mms/ui/BasicSlideEditorView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 168
    return-void
.end method

.method public seekAudio(I)V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public seekVideo(I)V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mAudioNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 102
    if-nez p2, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    const v1, 0x7f02008d

    .line 103
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setImage: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 176
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 122
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mOnTextChangedListenerEnabled:Z

    .line 127
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public setVcal(Lcom/android/mms/model/VcalModel;)V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public setVcard(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/mms/ui/BasicSlideEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    const v1, 0x7f02008f

    .line 137
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "setVideo: out of memory: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/BasicSlideEditorView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 156
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 160
    return-void
.end method
