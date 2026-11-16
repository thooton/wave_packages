.class Lcom/android/mms/ui/MessageTemplate$4;
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


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$4;->this$0:Lcom/android/mms/ui/MessageTemplate;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 200
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$4;->this$0:Lcom/android/mms/ui/MessageTemplate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageTemplate;->-wrap3(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;)V

    .line 201
    return-void
.end method
