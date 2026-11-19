.class final Lcom/android/mms/ui/MessageUtils$11;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$msgUri:Landroid/net/Uri;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$11;->val$msgUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$11;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/android/mms/ui/MessageUtils$11;->val$requestCode:I

    .line 1833
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$11;->val$msgUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 1839
    return-void

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$11;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$11;->val$msgUri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/ui/MessageUtils$11;->val$requestCode:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->launchSlideshowActivity(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 1856
    return-void
.end method
