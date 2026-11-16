.class Lcom/android/mms/ui/MessageTemplate$1;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTemplate;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTemplate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    const v3, 0x7f07029e

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-wide v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v0

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageTemplate;->-wrap4(Lcom/android/mms/ui/MessageTemplate;I)V

    .line 139
    :cond_0
    :goto_0
    return v5

    .line 125
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageTemplate;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 126
    const v3, 0x7f07016f

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    .line 128
    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    long-to-int v0, v2

    .line 129
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const-string/jumbo v3, "sms_body"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MessageTemplate;->startActivity(Landroid/content/Intent;)V

    .line 135
    const-string/jumbo v2, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v3, v0, v1, v5}, Lcom/android/mms/ui/MessageTemplate;->-wrap0(Lcom/android/mms/ui/MessageTemplate;ILjava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$1;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
