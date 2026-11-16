.class Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySelected"
.end annotation


# instance fields
.field mSelectedContactLookupKey:Ljava/lang/String;

.field mSelectedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;)V
    .locals 2

    .prologue
    .line 527
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    .line 528
    invoke-static {p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    .line 531
    :cond_0
    return-void
.end method

.method private getKeyString(JI)Ljava/lang/String;
    .locals 5

    .prologue
    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 860
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 861
    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addSelected(J)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 607
    :cond_0
    return-void
.end method

.method public addSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 633
    iget v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-gez v0, :cond_0

    .line 634
    const-string/jumbo v0, "MultiPickContactsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "the selected child position is wrong:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return-void

    .line 638
    :cond_0
    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v4, v5, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v3

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 641
    if-nez v0, :cond_5

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 645
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ne v2, v4, :cond_3

    .line 650
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v1, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 673
    :cond_2
    return-void

    .line 652
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ge v2, v4, :cond_4

    .line 653
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 659
    :cond_4
    const-string/jumbo v0, "MultiPickContactsActivity"

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addSelected, contactId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "), childPosition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 661
    iget v3, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 661
    const-string/jumbo v3, "), count("

    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 662
    iget v3, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 663
    const-string/jumbo v3, "), shouldn\'t be here caused by the selected list size("

    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 664
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 660
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    const-string/jumbo v2, ") would be larger than the count."

    .line 660
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 659
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    move-object v1, v0

    move v0, v2

    goto/16 :goto_0
.end method

.method public addSelected(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 616
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 624
    :cond_0
    return-void
.end method

.method public getSelectedAsText()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 753
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 754
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/Map$Entry;

    .line 755
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 756
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 757
    aget-object v9, v0, v11

    .line 758
    aget-object v10, v0, v12

    .line 760
    const-string/jumbo v0, "["

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v1, 0x7f0702c0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 764
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    .line 765
    const-string/jumbo v3, "display_name"

    aput-object v3, v2, v11

    .line 767
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 763
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 769
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 773
    :cond_0
    if-eqz v1, :cond_1

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0, v9}, Lcom/android/mms/ui/MultiPickContactsActivity;->-wrap1(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 781
    :try_start_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 782
    if-eqz v1, :cond_d

    .line 784
    const-string/jumbo v2, "mimetype"

    .line 783
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 785
    const-string/jumbo v3, "data1"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 786
    const-string/jumbo v5, "data1"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 788
    if-nez v0, :cond_6

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 790
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 791
    const-string/jumbo v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 793
    const-string/jumbo v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v6, 0x7f0702c1

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 795
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 833
    :catchall_0
    move-exception v0

    .line 834
    if-eqz v1, :cond_3

    .line 835
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 833
    :cond_3
    throw v0

    .line 772
    :catchall_1
    move-exception v0

    .line 773
    if-eqz v1, :cond_4

    .line 774
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_4
    throw v0

    .line 796
    :cond_5
    :try_start_2
    const-string/jumbo v6, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 797
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    const v6, 0x7f0702c2

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 801
    :cond_6
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 803
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 804
    const-string/jumbo v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    iget-object v9, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 806
    iget-object v9, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 805
    if-eqz v9, :cond_a

    .line 808
    :cond_8
    iget v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 809
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 810
    const-string/jumbo v9, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 811
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 812
    const v9, 0x7f0702c1

    .line 811
    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 814
    :cond_9
    const-string/jumbo v9, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 816
    const v9, 0x7f0702c2

    .line 815
    invoke-virtual {v0, v9}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 821
    :cond_a
    iget-object v9, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    const-string/jumbo v10, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 822
    iget-object v9, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 823
    const v10, 0x7f0702c1

    .line 822
    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    :cond_b
    :goto_3
    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mValue:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 824
    :cond_c
    iget-object v9, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mMimeType:Ljava/lang/String;

    const-string/jumbo v10, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 825
    iget-object v9, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    .line 826
    const v10, 0x7f0702c2

    .line 825
    invoke-virtual {v9, v10}, Lcom/android/mms/ui/MultiPickContactsActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 834
    :cond_d
    if-eqz v1, :cond_e

    .line 835
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 840
    :cond_e
    const-string/jumbo v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 842
    :cond_f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedAsVcard()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    .line 853
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    .line 852
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 855
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSelected(J)Z
    .locals 3

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 573
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v1, -0x1

    invoke-direct {p0, v2, v3, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    return v4

    .line 577
    :cond_0
    iget-wide v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v0, v1, v4}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v0

    .line 578
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 579
    if-eqz v0, :cond_1

    .line 581
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 583
    :cond_1
    return v5

    .line 589
    :cond_2
    return v5
.end method

.method public isSelected(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeSelected(J)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-direct {p0, p1, p2, v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 689
    :cond_0
    return-void
.end method

.method public removeSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 698
    iget-wide v2, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {p0, v2, v3, v6}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v2

    .line 699
    iget-wide v4, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    const/4 v0, -0x1

    invoke-direct {p0, v4, v5, v0}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getKeyString(JI)Ljava/lang/String;

    move-result-object v3

    .line 700
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 701
    if-eqz v0, :cond_3

    .line 704
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_2

    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->-get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 743
    :cond_1
    return-void

    .line 713
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-le v0, v6, :cond_0

    .line 729
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 730
    :goto_1
    iget v1, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mCount:I

    if-ge v0, v1, :cond_5

    .line 731
    iget v1, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-ne v0, v1, :cond_4

    .line 730
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 733
    :cond_4
    new-instance v1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    iget-wide v6, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    invoke-direct {v1, v4, v6, v7, v0}, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 735
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
