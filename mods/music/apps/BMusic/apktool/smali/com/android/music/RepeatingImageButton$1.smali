.class Lcom/android/music/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/android/music/RepeatingImageButton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/RepeatingImageButton$1;->this$0:Lcom/android/music/RepeatingImageButton;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton$1;->this$0:Lcom/android/music/RepeatingImageButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/music/RepeatingImageButton;->-wrap0(Lcom/android/music/RepeatingImageButton;Z)V

    .line 119
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton$1;->this$0:Lcom/android/music/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/android/music/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/music/RepeatingImageButton$1;->this$0:Lcom/android/music/RepeatingImageButton;

    iget-object v1, p0, Lcom/android/music/RepeatingImageButton$1;->this$0:Lcom/android/music/RepeatingImageButton;

    invoke-static {v1}, Lcom/android/music/RepeatingImageButton;->-get0(Lcom/android/music/RepeatingImageButton;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lcom/android/music/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    :cond_0
    return-void
.end method
