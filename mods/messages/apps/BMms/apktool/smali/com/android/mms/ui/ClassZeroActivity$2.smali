.class Lcom/android/mms/ui/ClassZeroActivity$2;
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
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 234
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 235
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->-wrap0(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 236
    return-void
.end method
