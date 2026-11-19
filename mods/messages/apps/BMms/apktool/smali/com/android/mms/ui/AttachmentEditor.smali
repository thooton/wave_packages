.class public Lcom/android/mms/ui/AttachmentEditor;
.super Landroid/widget/LinearLayout;
.source "AttachmentEditor.java"


# static fields
.field private static ATTACHMENT_FONT_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMediaSize:I

.field private mPresenter:Lcom/android/mms/ui/Presenter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/16 v0, 0xc

    sput v0, Lcom/android/mms/ui/AttachmentEditor;->ATTACHMENT_FONT_SIZE:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mMediaSize:I

    .line 80
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentEditor;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentEditor;->mPresenter:Lcom/android/mms/ui/Presenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/Presenter;->cancelBackgroundLoading()V

    .line 295
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 296
    return-void
.end method
