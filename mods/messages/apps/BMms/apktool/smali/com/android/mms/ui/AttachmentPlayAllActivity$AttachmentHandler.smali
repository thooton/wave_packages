.class Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;
.super Landroid/os/Handler;
.source "AttachmentPlayAllActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentPlayAllActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttachmentHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentPlayAllActivity$AttachmentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 164
    return-void
.end method
