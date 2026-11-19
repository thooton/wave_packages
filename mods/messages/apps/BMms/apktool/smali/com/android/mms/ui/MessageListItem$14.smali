.class Lcom/android/mms/ui/MessageListItem$14;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem;->setOnClickListener(Lcom/android/mms/ui/MessageItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;

.field final synthetic val$msgItem:Lcom/android/mms/ui/MessageItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$14;->this$0:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$14;->val$msgItem:Lcom/android/mms/ui/MessageItem;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageListItem;->-wrap3(Lcom/android/mms/ui/MessageListItem;Lcom/android/mms/ui/MessageItem;I)V

    .line 1700
    return-void
.end method
