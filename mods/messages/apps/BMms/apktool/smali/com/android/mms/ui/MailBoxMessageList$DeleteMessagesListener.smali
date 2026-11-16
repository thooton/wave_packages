.class Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;
.super Ljava/lang/Object;
.source "MailBoxMessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessagesListener"
.end annotation


# instance fields
.field private mDeleteLockedMessages:Z

.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;)V
    .locals 0

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MailBoxMessageList;Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;-><init>(Lcom/android/mms/ui/MailBoxMessageList;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->this$0:Lcom/android/mms/ui/MailBoxMessageList;

    iget-boolean v1, p0, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->mDeleteLockedMessages:Z

    invoke-static {v0, v1}, Lcom/android/mms/ui/MailBoxMessageList;->-wrap2(Lcom/android/mms/ui/MailBoxMessageList;Z)V

    .line 848
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0

    .prologue
    .line 842
    iput-boolean p1, p0, Lcom/android/mms/ui/MailBoxMessageList$DeleteMessagesListener;->mDeleteLockedMessages:Z

    .line 843
    return-void
.end method
