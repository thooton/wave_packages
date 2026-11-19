.class public Lcom/android/mms/ui/AttachmentViewActivity$LinearLayoutManagerWrapper;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "AttachmentViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearLayoutManagerWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 319
    return-void
.end method


# virtual methods
.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x0

    return v0
.end method
