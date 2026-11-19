.class Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;
.super Ljava/lang/Object;
.source "VcardVcalViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VcalVcardRunnable"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/mms/ui/multipleviews/IAttachmentSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/multipleviews/IAttachmentSelection;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    .line 139
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/multipleviews/VcardVcalViewFragment$VcalVcardRunnable;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    .line 144
    if-eqz v0, :cond_0

    .line 145
    invoke-interface {v0}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onPlayNextSlide()V

    .line 147
    :cond_0
    return-void
.end method
