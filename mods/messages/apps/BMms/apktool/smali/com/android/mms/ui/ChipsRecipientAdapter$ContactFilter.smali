.class final Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;
.super Landroid/widget/Filter;
.source "ChipsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ChipsRecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;
    }
.end annotation


# instance fields
.field private final mComparator:Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;

.field final synthetic this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ChipsRecipientAdapter;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 63
    new-instance v0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;-><init>(Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;)V

    iput-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->mComparator:Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;

    .line 60
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ChipsRecipientAdapter;Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;-><init>(Lcom/android/mms/ui/ChipsRecipientAdapter;)V

    return-void
.end method

.method private getFilteredResultsCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Landroid/support/v4/util/Pair",
            "<",
            "Landroid/database/Cursor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 67
    invoke-static {v0, p2}, Lcom/android/mms/util/ContactRecipientEntryUtils;->filterDestination(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/support/v4/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 161
    check-cast p1, Lcom/android/ex/chips/RecipientEntry;

    .line 162
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    return-object v1

    .line 167
    :cond_1
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->-wrap0(Lcom/android/mms/ui/ChipsRecipientAdapter;)V

    .line 79
    return-object v3

    .line 82
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->getFilteredResultsCursor(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/util/Pair;

    move-result-object v1

    .line 88
    iget-object v0, v1, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    .line 89
    iget-object v1, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 90
    if-eqz v0, :cond_7

    .line 91
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ChipsRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 104
    invoke-static {v1, v4}, Lcom/android/mms/util/ContactRecipientEntryUtils;->filterGroupDestination(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 106
    if-eqz v1, :cond_2

    .line 107
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget-object v2, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/ChipsRecipientAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    .line 108
    invoke-static {v2, v1, v4}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createRecipientEntryForGroupQuery(Landroid/content/Context;Landroid/database/Cursor;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    :goto_1
    if-eqz v1, :cond_1

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_1
    throw v0

    .line 114
    :cond_2
    if-eqz v1, :cond_3

    .line 115
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 120
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 124
    const/4 v2, 0x0

    .line 123
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 125
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 126
    if-eqz v2, :cond_4

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_4
    invoke-static {v0, v2}, Lcom/android/mms/util/ContactRecipientEntryUtils;->createRecipientEntryForPhoneQuery(Landroid/database/Cursor;Z)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 134
    :cond_5
    if-nez v5, :cond_6

    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->mComparator:Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 137
    :cond_6
    iput-object v6, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 138
    iput v7, v3, Landroid/widget/Filter$FilterResults;->count:I

    .line 139
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 141
    :cond_7
    return-object v3

    .line 113
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChipsRecipientAdapter;->-set0(Lcom/android/mms/ui/ChipsRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 147
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->-wrap0(Lcom/android/mms/ui/ChipsRecipientAdapter;)V

    .line 149
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 152
    iget-object v1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->-wrap1(Lcom/android/mms/ui/ChipsRecipientAdapter;Ljava/util/List;)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;->this$0:Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ChipsRecipientAdapter;->-wrap1(Lcom/android/mms/ui/ChipsRecipientAdapter;Ljava/util/List;)V

    goto :goto_0
.end method
