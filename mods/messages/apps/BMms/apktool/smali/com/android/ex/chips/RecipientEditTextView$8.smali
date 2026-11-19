.class Lcom/android/ex/chips/RecipientEditTextView$8;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/PhotoManager$PhotoManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->loadAvatarIcon(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;

.field final synthetic val$bitmapContainer:Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

.field final synthetic val$contact:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$contact:Lcom/android/ex/chips/RecipientEntry;

    iput-object p3, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$bitmapContainer:Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    .line 1102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private tryDrawAndInvalidate(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    iget-object v1, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$bitmapContainer:Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;

    invoke-static {v0, v1, p1}, Lcom/android/ex/chips/RecipientEditTextView;->-wrap9(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEditTextView$ChipBitmapContainer;Landroid/graphics/Bitmap;)V

    .line 1130
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->invalidate()V

    .line 1141
    :goto_0
    return-void

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    new-instance v1, Lcom/android/ex/chips/RecipientEditTextView$8$1;

    invoke-direct {v1, p0}, Lcom/android/ex/chips/RecipientEditTextView$8$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$8;)V

    invoke-virtual {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onPhotoBytesAsyncLoadFailed()V
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-static {v0}, Lcom/android/ex/chips/RecipientEditTextView;->-get9(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$8;->tryDrawAndInvalidate(Landroid/graphics/Bitmap;)V

    .line 1122
    return-void
.end method

.method public onPhotoBytesAsynchronouslyPopulated()V
    .locals 3

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8;->val$contact:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getPhotoBytes()[B

    move-result-object v0

    .line 1114
    array-length v1, v0

    .line 1113
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1115
    invoke-direct {p0, v0}, Lcom/android/ex/chips/RecipientEditTextView$8;->tryDrawAndInvalidate(Landroid/graphics/Bitmap;)V

    .line 1116
    return-void
.end method

.method public onPhotoBytesPopulated()V
    .locals 0

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/android/ex/chips/RecipientEditTextView$8;->onPhotoBytesAsynchronouslyPopulated()V

    .line 1108
    return-void
.end method
