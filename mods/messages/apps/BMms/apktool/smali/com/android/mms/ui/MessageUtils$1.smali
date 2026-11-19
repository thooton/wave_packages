.class final Lcom/android/mms/ui/MessageUtils$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->markAsNotificationThreadIfNeed(Landroid/content/Context;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$number:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/mms/ui/MessageUtils$1;->val$threadId:J

    iput-object p4, p0, Lcom/android/mms/ui/MessageUtils$1;->val$number:Ljava/lang/String;

    .line 979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 982
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$1;->val$context:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/mms/ui/MessageUtils$1;->val$threadId:J

    invoke-static {v1, v2, v3, v0}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 983
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 984
    return-void

    .line 987
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$1;->val$number:Ljava/lang/String;

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 988
    const/4 v1, 0x0

    .line 990
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 991
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->-get1()Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 992
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 997
    :goto_0
    if-eqz v0, :cond_1

    .line 998
    iget-wide v0, p0, Lcom/android/mms/ui/MessageUtils$1;->val$threadId:J

    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 999
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1000
    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :cond_1
    :goto_1
    return-void

    .line 1003
    :catch_0
    move-exception v0

    .line 1004
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Update Threads.NOTIFICATION Error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
