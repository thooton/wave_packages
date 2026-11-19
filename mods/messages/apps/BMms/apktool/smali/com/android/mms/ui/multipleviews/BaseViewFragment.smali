.class public abstract Lcom/android/mms/ui/multipleviews/BaseViewFragment;
.super Landroid/app/Fragment;
.source "BaseViewFragment.java"


# instance fields
.field public iAttachmentSelection:Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

.field public mMediaWithTextModel:Lcom/android/mms/model/MediaWithTextModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onMenuUpdate(Landroid/view/Menu;)V
.end method

.method public abstract onPauseMedia()V
.end method

.method public abstract onPlayMedia()V
.end method

.method public abstract onResumeMedia()V
.end method

.method public abstract onStopMedia()V
.end method
