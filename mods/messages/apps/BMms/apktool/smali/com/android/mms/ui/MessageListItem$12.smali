.class Lcom/android/mms/ui/MessageListItem$12;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$adapter:Lcom/android/mms/ui/MessageListItem$LinkAdapter;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageListItem$LinkAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$12;->val$adapter:Lcom/android/mms/ui/MessageListItem$LinkAdapter;

    iput-object p3, p0, Lcom/android/mms/ui/MessageListItem$12;->val$urls:Ljava/util/ArrayList;

    .line 1663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 1666
    if-ltz p2, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$12;->val$adapter:Lcom/android/mms/ui/MessageListItem$LinkAdapter;

    invoke-virtual {v0, p2}, Lcom/android/mms/ui/MessageListItem$LinkAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1668
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$12;->this$0:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get1(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1669
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$12;->val$urls:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 1668
    invoke-static {v1, v2, v0}, Lcom/android/mms/ui/MessageListItem;->-wrap2(Lcom/android/mms/ui/MessageListItem;Landroid/content/Context;Ljava/lang/String;)V

    .line 1670
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1673
    :cond_0
    return-void
.end method
