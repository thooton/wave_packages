.class Lcom/android/mms/ui/SearchActivity$3$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$3;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$3;

.field final synthetic val$addressPos:I

.field final synthetic val$bodyPos:I

.field final synthetic val$rowidPos:I

.field final synthetic val$searchString:Ljava/lang/String;

.field final synthetic val$threadIdPos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$3;Landroid/content/Context;Landroid/database/Cursor;ZIILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    iput-object p7, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$searchString:Ljava/lang/String;

    iput p8, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    iput p9, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    .line 313
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 1
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 317
    const v0, 0x7f0f0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 318
    const v1, 0x7f0f0156

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    .line 320
    iget v3, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 321
    if-eqz v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v3, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v2

    .line 323
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v2

    .line 324
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$searchString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 333
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 335
    new-instance v0, Lcom/android/mms/ui/SearchActivity$3$1$1;

    iget-object v4, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$searchString:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/SearchActivity$3$1$1;-><init>(Lcom/android/mms/ui/SearchActivity$3$1;JLjava/lang/String;J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 344
    return-void

    .line 323
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 348
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 349
    const v1, 0x7f040054

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 350
    return-object v0
.end method
