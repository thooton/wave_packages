.class Lcom/android/mms/ui/SlidesAdapter$1;
.super Ljava/lang/Object;
.source "SlidesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlidesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlidesAdapter;

.field final synthetic val$myViewHolder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlidesAdapter;Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlidesAdapter$1;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/SlidesAdapter$1;->val$myViewHolder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter$1;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/SlidesAdapter;->-get1(Lcom/android/mms/ui/SlidesAdapter;)Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlidesAdapter$1;->val$myViewHolder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onItemClick(I)V

    .line 84
    return-void
.end method
