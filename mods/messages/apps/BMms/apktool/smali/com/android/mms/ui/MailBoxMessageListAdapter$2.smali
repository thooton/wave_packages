.class Lcom/android/mms/ui/MailBoxMessageListAdapter$2;
.super Ljava/lang/Object;
.source "MailBoxMessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MailBoxMessageListAdapter;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MailBoxMessageListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter$2;->this$0:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageListAdapter$2;->this$0:Lcom/android/mms/ui/MailBoxMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MailBoxMessageListAdapter;->notifyDataSetChanged()V

    .line 190
    return-void
.end method
