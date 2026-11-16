.class final Lcom/android/mms/data/Contact$1;
.super Landroid/database/ContentObserver;
.source "Contact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .prologue
    .line 63
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "contact changed, invalidate cache"

    invoke-static {v0}, Lcom/android/mms/data/Contact;->-wrap2(Ljava/lang/String;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Contact;->-get0()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {}, Lcom/android/mms/data/Contact;->-get0()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 69
    :cond_1
    return-void
.end method
