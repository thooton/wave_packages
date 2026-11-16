.class Lcom/android/mms/ui/SearchActivity$3$1$1;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$3$1;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/mms/ui/SearchActivity$3$1;

.field final synthetic val$rowid:J

.field final synthetic val$searchString:Ljava/lang/String;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$3$1;JLjava/lang/String;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iput-wide p2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$threadId:J

    iput-object p4, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$searchString:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$rowid:J

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    const-class v2, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string/jumbo v1, "thread_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$threadId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 339
    const-string/jumbo v1, "highlight"

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$searchString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string/jumbo v1, "select_id"

    iget-wide v2, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->val$rowid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 341
    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3$1$1;->this$2:Lcom/android/mms/ui/SearchActivity$3$1;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3;->this$0:Lcom/android/mms/ui/SearchActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/SearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 342
    return-void
.end method
