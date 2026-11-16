.class public Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;
.super Ljava/lang/Object;
.source "FavoriteDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavoriteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForwardClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/rcs/FavoriteDetailActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 237
    packed-switch p2, :pswitch_data_0

    .line 256
    :goto_0
    return-void

    .line 239
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-wrap3(Lcom/android/mms/rcs/FavoriteDetailActivity;)V

    goto :goto_0

    .line 242
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-wrap5(Lcom/android/mms/rcs/FavoriteDetailActivity;)V

    goto :goto_0

    .line 245
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    const-class v2, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    const-string/jumbo v1, "select_conversation"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setMailboxMode(Z)V

    .line 248
    iget-object v1, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    const/16 v2, 0x74

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/rcs/FavoriteDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 251
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteDetailActivity$ForwardClickListener;->this$0:Lcom/android/mms/rcs/FavoriteDetailActivity;

    const/16 v1, 0x75

    invoke-static {v0, v1}, Lcom/android/mms/rcs/FavoriteDetailActivity;->-wrap4(Lcom/android/mms/rcs/FavoriteDetailActivity;I)V

    goto :goto_0

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
