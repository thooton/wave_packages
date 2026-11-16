.class Lcom/android/mms/ui/WwwContextMenuActivity$3;
.super Ljava/lang/Object;
.source "WwwContextMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WwwContextMenuActivity;->loadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/WwwContextMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WwwContextMenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/WwwContextMenuActivity$3;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/mms/ui/WwwContextMenuActivity$3;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/WwwContextMenuActivity;->finish()V

    .line 100
    return-void
.end method
