.class Lcom/android/mms/ui/PopupList$ItemDataAdapter;
.super Landroid/widget/BaseAdapter;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/PopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemDataAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/PopupList;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/PopupList;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/PopupList;Lcom/android/mms/ui/PopupList$ItemDataAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/PopupList$ItemDataAdapter;-><init>(Lcom/android/mms/ui/PopupList;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get4(Lcom/android/mms/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get4(Lcom/android/mms/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get4(Lcom/android/mms/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/PopupList$Item;

    iget v0, v0, Lcom/android/mms/ui/PopupList$Item;->id:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    if-nez p2, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v0}, Lcom/android/mms/ui/PopupList;->-get1(Lcom/android/mms/ui/PopupList;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 239
    const v1, 0x7f040046

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 241
    :cond_0
    const v0, 0x7f0f012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/PopupList$ItemDataAdapter;->this$0:Lcom/android/mms/ui/PopupList;

    invoke-static {v1}, Lcom/android/mms/ui/PopupList;->-get4(Lcom/android/mms/ui/PopupList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/PopupList$Item;

    iget-object v1, v1, Lcom/android/mms/ui/PopupList$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-object p2
.end method
