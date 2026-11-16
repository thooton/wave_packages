.class Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;
.super Landroid/os/Handler;
.source "VcardVcalViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VcalVcardHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 154
    return-void
.end method
