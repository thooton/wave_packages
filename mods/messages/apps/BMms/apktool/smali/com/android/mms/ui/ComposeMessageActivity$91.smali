.class Lcom/android/mms/ui/ComposeMessageActivity$91;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->imageDispose(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$photoPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->val$photoPath:Ljava/lang/String;

    .line 10059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 10062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-set0(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 10063
    packed-switch p2, :pswitch_data_0

    .line 10088
    :goto_0
    return-void

    .line 10065
    :pswitch_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->val$photoPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10066
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap34(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/io/File;)V

    .line 10067
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 10070
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->val$photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap75(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 10073
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->val$photoPath:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap6(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10074
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10075
    return-void

    .line 10077
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 10078
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->val$photoPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 10079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$91;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap25(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10080
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 10083
    :pswitch_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 10063
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
