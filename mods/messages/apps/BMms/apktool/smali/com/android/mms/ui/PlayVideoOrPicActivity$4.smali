.class Lcom/android/mms/ui/PlayVideoOrPicActivity$4;
.super Ljava/lang/Object;
.source "PlayVideoOrPicActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/PlayVideoOrPicActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$4;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/PlayVideoOrPicActivity$4;->this$0:Lcom/android/mms/ui/PlayVideoOrPicActivity;

    invoke-static {v0}, Lcom/android/mms/ui/PlayVideoOrPicActivity;->-wrap3(Lcom/android/mms/ui/PlayVideoOrPicActivity;)V

    .line 165
    return-void
.end method
