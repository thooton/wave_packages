.class final Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MultiPickContactGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalGroupListAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactGroups;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 432
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    .line 433
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 435
    iput-object p2, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mContext:Landroid/content/Context;

    .line 437
    const-string/jumbo v0, "layout_inflater"

    .line 436
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 438
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 442
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;

    .line 443
    invoke-interface {p3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_id:J

    .line 444
    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_title:Ljava/lang/String;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_count:Ljava/lang/String;

    .line 446
    const v1, 0x7f0f0121

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 447
    iget-object v2, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_title:Ljava/lang/String;

    .line 446
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    const v1, 0x7f0f0122

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_count:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const v1, 0x7f0f0123

    .line 450
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 452
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v2}, Lcom/android/mms/ui/MultiPickContactGroups;->-get1(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/os/Bundle;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 457
    :goto_0
    return-void

    .line 455
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 491
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 492
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get4(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get5(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/TextView;

    move-result-object v0

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get4(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 501
    :goto_0
    return-void

    .line 496
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v1}, Lcom/android/mms/ui/MultiPickContactGroups;->-get1(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get4(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactGroups;->-get4(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 480
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 481
    return-object p2

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 462
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 463
    new-instance v1, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-direct {v1, v2, v3}, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;-><init>(Lcom/android/mms/ui/MultiPickContactGroups;Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;)V

    .line 464
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 465
    return-object v0
.end method

.method protected onContentChanged()V
    .locals 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    const/16 v1, 0x37

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactGroups;->startQuery(I)V

    .line 487
    return-void
.end method
