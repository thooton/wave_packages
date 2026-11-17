.class Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;
.super Landroid/widget/Filter;
.source "ApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/ApplicationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;


# direct methods
.method private constructor <init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;-><init>(Lcom/sonim/borqs/launcher/ApplicationAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 169
    new-instance v4, Landroid/widget/Filter$FilterResults;

    invoke-direct {v4}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 171
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->-get0(Lcom/sonim/borqs/launcher/ApplicationAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->-get0(Lcom/sonim/borqs/launcher/ApplicationAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iput v0, v4, Landroid/widget/Filter$FilterResults;->count:I

    .line 201
    :goto_0
    return-object v4

    .line 175
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 177
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 179
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->-get0(Lcom/sonim/borqs/launcher/ApplicationAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-static {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->-get0(Lcom/sonim/borqs/launcher/ApplicationAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;

    .line 182
    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 184
    invoke-virtual {v6, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    goto :goto_1

    .line 186
    :cond_3
    const-string/jumbo v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 187
    array-length v9, v8

    move v2, v3

    :goto_2
    if-ge v2, v9, :cond_2

    aget-object v10, v8, v2

    .line 188
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 189
    invoke-virtual {v6, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 187
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 198
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v4, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 199
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iput v0, v4, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    .prologue
    .line 207
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->-set0(Lcom/sonim/borqs/launcher/ApplicationAdapter;Ljava/util/List;)Ljava/util/List;

    .line 209
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->notifyDataSetChanged()V

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$AppFilter;->this$0:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/ApplicationAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
