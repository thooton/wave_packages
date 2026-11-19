.class Lcom/android/mms/ui/SearchConversationActivity$1;
.super Ljava/lang/Object;
.source "SearchConversationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchConversationActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SearchConversationActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchConversationActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SearchConversationActivity$1;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/SearchConversationActivity$1;->this$0:Lcom/android/mms/ui/SearchConversationActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/mms/ui/SearchConversationActivity;->-wrap1(Lcom/android/mms/ui/SearchConversationActivity;Ljava/lang/CharSequence;Z)V

    .line 133
    return-void
.end method
