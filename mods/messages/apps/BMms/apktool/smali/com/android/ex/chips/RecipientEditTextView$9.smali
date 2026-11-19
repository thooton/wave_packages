.class Lcom/android/ex/chips/RecipientEditTextView$9;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView;->showWarningDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/chips/RecipientEditTextView;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$9;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    .line 2369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 2372
    iget-object v0, p0, Lcom/android/ex/chips/RecipientEditTextView$9;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/ex/chips/RecipientEditTextView;->-set3(Lcom/android/ex/chips/RecipientEditTextView;Ljava/lang/String;)Ljava/lang/String;

    .line 2373
    return-void
.end method
