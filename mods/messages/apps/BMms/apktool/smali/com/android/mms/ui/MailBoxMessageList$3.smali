.class Lcom/android/mms/ui/MailBoxMessageList$3;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageList;->showDownloadDialog(Landroid/net/Uri;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;

.field final synthetic val$subId:I

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iput-object p2, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->val$uri:Landroid/net/Uri;

    iput p3, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->val$subId:I

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->val$uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/mms/ui/MailBoxMessageList$3;->val$subId:I

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap7(Lcom/android/mms/ui/MailBoxMessageList;Landroid/net/Uri;I)V

    .line 353
    return-void
.end method
