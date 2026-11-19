.class Lcom/android/mms/ui/MiniPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MiniPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MiniPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MiniPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MiniPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 56
    if-ne p2, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    .line 58
    invoke-static {v2, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->enableNotifications(ZLandroid/content/Context;)V

    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MiniPreferenceActivity;->finish()V

    .line 65
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MiniPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MiniPreferenceActivity;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MiniPreferenceActivity;->setResult(I)V

    goto :goto_0
.end method
