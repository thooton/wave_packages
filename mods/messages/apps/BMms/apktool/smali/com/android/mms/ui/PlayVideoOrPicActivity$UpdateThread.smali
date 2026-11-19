.class Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PlayVideoOrPicActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;-><init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get2(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Lcom/android/mms/ui/VideoProgressBar;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    int-to-double v4, v1

    div-double/2addr v2, v4

    .line 274
    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/VideoProgressBar;->updateLocation(F)V

    .line 276
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get6(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDisplayTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get0(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getDisplayTime(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get5(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Landroid/widget/VideoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$UpdateThread;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v1}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-get4(Lcom/android/mms/ui/PlayVideoOrPicActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/VideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 279
    return-void
.end method
