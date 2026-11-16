.class Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "MailBoxMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MailBoxMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MailBoxMessageContent;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MailBoxMessageContent;Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;-><init>(Lcom/android/mms/ui/MailBoxMessageContent;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get8(Lcom/android/mms/ui/MailBoxMessageContent;)Ljava/util/ArrayList;

    move-result-object v1

    .line 235
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v3}, Lcom/android/mms/ui/MailBoxMessageContent;->-get2(Lcom/android/mms/ui/MailBoxMessageContent;)F

    move-result v3

    .line 234
    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->onFontSizeScale(Ljava/util/ArrayList;FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-set1(Lcom/android/mms/ui/MailBoxMessageContent;F)F

    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-get6(Lcom/android/mms/ui/MailBoxMessageContent;)Lcom/android/mms/ui/MessageDetailAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v1}, Lcom/android/mms/ui/MailBoxMessageContent;->-get2(Lcom/android/mms/ui/MailBoxMessageContent;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageDetailAdapter;->setBodyFontSize(F)V

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/MailBoxMessageContent$MyScaleListener;->this$0:Lcom/android/mms/ui/MailBoxMessageContent;

    invoke-static {v0}, Lcom/android/mms/ui/MailBoxMessageContent;->-get6(Lcom/android/mms/ui/MailBoxMessageContent;)Lcom/android/mms/ui/MessageDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageDetailAdapter;->notifyDataSetChanged()V

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method
