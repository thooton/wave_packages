.class Lcom/android/mms/ui/MessageTemplate$2;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTemplate;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 149
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->-get0(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 150
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 151
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MessageTemplate;->-set0(Lcom/android/mms/ui/MessageTemplate;I)I

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$2;->this$0:Lcom/android/mms/ui/MessageTemplate;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$2;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageTemplate;->-wrap2(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;)V

    .line 154
    return-void
.end method
