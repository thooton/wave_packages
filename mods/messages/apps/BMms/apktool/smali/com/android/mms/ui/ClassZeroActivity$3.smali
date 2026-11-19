.class Lcom/android/mms/ui/ClassZeroActivity$3;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->-set0(Lcom/android/mms/ui/ClassZeroActivity;Z)Z

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap1(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 243
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 244
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap0(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 245
    return-void
.end method
