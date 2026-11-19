.class Lcom/android/mms/ui/WwwContextMenuActivity$2;
.super Ljava/lang/Object;
.source "WwwContextMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/WwwContextMenuActivity$2;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/WwwContextMenuActivity$2;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/WwwContextMenuActivity;->finish()V

    .line 94
    return-void
.end method
