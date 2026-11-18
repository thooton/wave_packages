.class Lcom/android/providers/contacts/CallLogProvider$1;
.super Lcom/android/providers/contacts/ContactsTaskScheduler;
.source "CallLogProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/CallLogProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/CallLogProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/CallLogProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogProvider$1;->this$0:Lcom/android/providers/contacts/CallLogProvider;

    .line 208
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/ContactsTaskScheduler;-><init>(Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onPerformTask(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogProvider$1;->this$0:Lcom/android/providers/contacts/CallLogProvider;

    invoke-static {v0, p1, p2}, Lcom/android/providers/contacts/CallLogProvider;->-wrap0(Lcom/android/providers/contacts/CallLogProvider;ILjava/lang/Object;)V

    .line 212
    return-void
.end method
