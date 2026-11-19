.class Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;
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
    name = "TemplateSelectListener"
.end annotation


# instance fields
.field private mTempArray:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 4989
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4990
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    .line 4991
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4996
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, p2, :cond_1

    .line 5000
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get48(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    .line 5001
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap11(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5002
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 5003
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5015
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5016
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5017
    const-string/jumbo v1, "_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5019
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5018
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5020
    const-string/jumbo v1, "rank"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5025
    :cond_0
    :goto_1
    const-string/jumbo v1, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5026
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5028
    :cond_1
    return-void

    .line 5005
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;

    move-result-object v0

    .line 5006
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 5007
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->mTempArray:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-interface {v2, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 5013
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 5022
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 5021
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5023
    const-string/jumbo v1, "timestamp"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1
.end method
