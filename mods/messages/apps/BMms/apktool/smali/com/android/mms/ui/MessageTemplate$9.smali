.class Lcom/android/mms/ui/MessageTemplate$9;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageTemplate;->deleteTemplate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTemplate;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$9;->this$0:Lcom/android/mms/ui/MessageTemplate;

    iput p2, p0, Lcom/android/mms/ui/MessageTemplate$9;->val$position:I

    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$9;->this$0:Lcom/android/mms/ui/MessageTemplate;

    iget v1, p0, Lcom/android/mms/ui/MessageTemplate$9;->val$position:I

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageTemplate;->-wrap1(Lcom/android/mms/ui/MessageTemplate;I)Z

    .line 518
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 519
    return-void
.end method
