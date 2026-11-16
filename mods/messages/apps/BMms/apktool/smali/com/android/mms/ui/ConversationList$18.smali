.class Lcom/android/mms/ui/ConversationList$18;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->selectComposeAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$18;->this$0:Lcom/android/mms/ui/ConversationList;

    .line 2017
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 2020
    packed-switch p2, :pswitch_data_0

    .line 2028
    :goto_0
    return-void

    .line 2022
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$18;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    goto :goto_0

    .line 2025
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$18;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-wrap1(Lcom/android/mms/ui/ConversationList;)V

    goto :goto_0

    .line 2020
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
