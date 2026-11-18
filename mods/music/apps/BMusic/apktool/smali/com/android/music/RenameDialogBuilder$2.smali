.class Lcom/android/music/RenameDialogBuilder$2;
.super Ljava/lang/Object;
.source "RenameDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/RenameDialogBuilder;->setPositiveButton(ILcom/android/music/RenameDialogBuilder$OnPositiveListener;)Lcom/android/music/RenameDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/RenameDialogBuilder;

.field final synthetic val$onPositiveListener:Lcom/android/music/RenameDialogBuilder$OnPositiveListener;


# direct methods
.method constructor <init>(Lcom/android/music/RenameDialogBuilder;Lcom/android/music/RenameDialogBuilder$OnPositiveListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/RenameDialogBuilder$2;->this$0:Lcom/android/music/RenameDialogBuilder;

    iput-object p2, p0, Lcom/android/music/RenameDialogBuilder$2;->val$onPositiveListener:Lcom/android/music/RenameDialogBuilder$OnPositiveListener;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/music/RenameDialogBuilder$2;->this$0:Lcom/android/music/RenameDialogBuilder;

    iget-object v1, p0, Lcom/android/music/RenameDialogBuilder$2;->val$onPositiveListener:Lcom/android/music/RenameDialogBuilder$OnPositiveListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/music/RenameDialogBuilder;->-wrap1(Lcom/android/music/RenameDialogBuilder;Lcom/android/music/RenameDialogBuilder$OnPositiveListener;Landroid/content/DialogInterface;I)V

    .line 186
    return-void
.end method
