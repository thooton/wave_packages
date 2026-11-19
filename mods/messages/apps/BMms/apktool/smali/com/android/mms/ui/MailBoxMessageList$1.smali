.class Lcom/android/mms/ui/MailBoxMessageList$1;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$1;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$1;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageList;->-get9(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/SearchView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageList$1;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageList;->-get9(Lcom/android/mms/ui/MailBoxMessageList;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 574
    return-void
.end method
