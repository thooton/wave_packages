.class Lcom/android/providers/contacts/VoicemailContentProvider$1;
.super Lcom/android/providers/contacts/ContactsTaskScheduler;
.source "VoicemailContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/VoicemailContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/VoicemailContentProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/VoicemailContentProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->this$0:Lcom/android/providers/contacts/VoicemailContentProvider;

    .line 95
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsTaskScheduler;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onPerformTask(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailContentProvider$1;->this$0:Lcom/android/providers/contacts/VoicemailContentProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/contacts/VoicemailContentProvider;->performBackgroundTask(ILjava/lang/Object;)V

    .line 99
    return-void
.end method
