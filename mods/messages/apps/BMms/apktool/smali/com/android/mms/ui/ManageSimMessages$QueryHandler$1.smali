.class Lcom/android/mms/ui/ManageSimMessages$QueryHandler$1;
.super Ljava/lang/Object;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ManageSimMessages$QueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ManageSimMessages$QueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ManageSimMessages$QueryHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler$1;->this$1:Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p2, :cond_0

    .line 244
    check-cast p2, Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {p2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 246
    :cond_0
    return-void
.end method
