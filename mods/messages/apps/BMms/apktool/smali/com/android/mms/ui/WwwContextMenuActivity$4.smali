.class Lcom/android/mms/ui/WwwContextMenuActivity$4;
.super Ljava/lang/Object;
.source "WwwContextMenuActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WwwContextMenuActivity;->showMenu()V
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
    iput-object p1, p0, Lcom/android/mms/ui/WwwContextMenuActivity$4;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 165
    if-nez p2, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/WwwContextMenuActivity$4;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    invoke-static {v0}, Lcom/android/mms/ui/WwwContextMenuActivity;->-wrap2(Lcom/android/mms/ui/WwwContextMenuActivity;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/WwwContextMenuActivity$4;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    invoke-static {v0}, Lcom/android/mms/ui/WwwContextMenuActivity;->-wrap0(Lcom/android/mms/ui/WwwContextMenuActivity;)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/WwwContextMenuActivity$4;->this$0:Lcom/android/mms/ui/WwwContextMenuActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/WwwContextMenuActivity;->finish()V

    goto :goto_0
.end method
