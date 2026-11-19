.class Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "addGrouChatWayClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 10441
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 10443
    packed-switch p2, :pswitch_data_0

    .line 10455
    :goto_0
    return-void

    .line 10445
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap54(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 10448
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10449
    const-string/jumbo v1, "select_conversation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10450
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v2, 0x7c

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 10443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
