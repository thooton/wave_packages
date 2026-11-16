.class Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;
.super Ljava/lang/Object;
.source "SlideListItemView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 175
    if-nez p2, :cond_3

    .line 177
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get1(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get0(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    const-string/jumbo v2, "text/x-vCard"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    const-string/jumbo v1, "VIEW_VCARD_FROM_MMS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    iget-object v1, v1, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 210
    return-void

    .line 184
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get2(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get2(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v2}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get0(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-static {v1}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->-get0(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    :cond_3
    if-ne p2, v2, :cond_0

    .line 195
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->save()V

    goto :goto_1

    .line 198
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;->this$0:Lcom/android/mms/ui/SlideListItemView;

    invoke-static {v0}, Lcom/android/mms/ui/SlideListItemView;->-get0(Lcom/android/mms/ui/SlideListItemView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 200
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener$1;->this$1:Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->setViewAttachmentListener(Lcom/android/mms/ui/SlideListItemView$ViewAttachmentListener;)V

    .line 202
    new-array v1, v2, [Ljava/lang/String;

    .line 203
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v1, v3

    .line 205
    const/16 v2, 0x7e1

    .line 201
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MobilePaperShowActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_1
.end method
