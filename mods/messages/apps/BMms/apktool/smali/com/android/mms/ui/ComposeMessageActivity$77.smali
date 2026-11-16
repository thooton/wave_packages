.class Lcom/android/mms/ui/ComposeMessageActivity$77;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 6680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 6682
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6683
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSizeChanged: w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6684
    const-string/jumbo v2, " oldw="

    .line 6683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6684
    const-string/jumbo v2, " oldh="

    .line 6683
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6687
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get28(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    sub-int v0, p4, p2

    const/16 v1, 0xc8

    if-le v0, v1, :cond_1

    .line 6689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap56(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 6697
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$77;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    sub-int v1, p2, p4

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap77(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V

    .line 6698
    return-void
.end method
