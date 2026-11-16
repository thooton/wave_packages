.class Lcom/android/ex/chips/RecipientEditTextView$8$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$8;->tryDrawAndInvalidate(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/RecipientEditTextView$8;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$8;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$8$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$8;

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$8$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$8;

    iget-object v0, v0, Lcom/android/ex/chips/RecipientEditTextView$8;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEditTextView;->invalidate()V

    .line 1138
    return-void
.end method
