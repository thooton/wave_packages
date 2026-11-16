.class Lcom/android/mms/ui/ConversationList$12$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$12;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$12;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$12;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$12$2;->this$1:Lcom/android/mms/ui/ConversationList$12;

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$12$2;->this$1:Lcom/android/mms/ui/ConversationList$12;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$12;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->-get16(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 634
    const-string/jumbo v1, "pref_key_auto_delete"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 635
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 636
    return-void
.end method
