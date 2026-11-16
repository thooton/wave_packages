.class Lcom/android/mms/ui/SlidesAdapter$2;
.super Ljava/lang/Object;
.source "SlidesAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/android/mms/ui/SlidesAdapter$2;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/SlidesAdapter$2;->val$myViewHolder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 90
    if-eqz p2, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter$2;->val$myViewHolder:Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlidesAdapter$MyViewHolder;->getAdapterPosition()I

    move-result v1

    .line 92
    invoke-static {}, Lcom/android/mms/ui/SlidesAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MyViewHolder onSelect position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter$2;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/SlidesAdapter;->-get2(Lcom/android/mms/ui/SlidesAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaWithTextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/MediaWithTextModel;->getMediaModel()Lcom/android/mms/model/MediaModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {}, Lcom/android/mms/ui/SlidesAdapter;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attachment onDataSetChange "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/SlidesAdapter$2;->this$0:Lcom/android/mms/ui/SlidesAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/SlidesAdapter;->-get1(Lcom/android/mms/ui/SlidesAdapter;)Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onLoadContainerView(I)V

    .line 98
    :cond_0
    return-void
.end method
