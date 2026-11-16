.class Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;
.super Landroid/text/style/URLSpan;
.source "MessageListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeadingUrlSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageListItem;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/text/style/URLSpan;)V
    .locals 1

    .prologue
    .line 2326
    invoke-virtual {p2}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;-><init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)V

    .line 2327
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MessageListItem;Landroid/text/style/URLSpan;Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;-><init>(Lcom/android/mms/ui/MessageListItem;Landroid/text/style/URLSpan;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/MessageListItem;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2329
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$HeadingUrlSpan;->this$0:Lcom/android/mms/ui/MessageListItem;

    .line 2330
    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 2331
    return-void
.end method
