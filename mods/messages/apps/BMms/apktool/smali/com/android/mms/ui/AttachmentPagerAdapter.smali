.class public Lcom/android/mms/ui/AttachmentPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "AttachmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;,
        Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mHasAttachment:Z

.field private mHasSlideshow:Z

.field private mHasVcard:Z

.field private mIsRTL:Z

.field private mIsReplace:Z

.field private mPagerGridViewViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAddSubject:Z


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasAttachment:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasSlideshow:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mShowAddSubject:Z

    return v0
.end method

.method private bindPagerView(Landroid/view/View;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 108
    const v0, 0x7f0f0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/GridView;

    .line 109
    new-instance v0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/AttachmentPagerAdapter;->getGridData(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 111
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "grid_item_image"

    const/4 v4, 0x0

    aput-object v1, v5, v4

    const-string/jumbo v1, "grid_item_text"

    aput-object v1, v5, v9

    .line 112
    const v1, 0x7f0f0007

    const v4, 0x7f0f0008

    filled-new-array {v1, v4}, [I

    move-result-object v6

    .line 110
    const v4, 0x7f040001

    move-object v1, p0

    move v7, p2

    .line 109
    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[II)V

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 116
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v9, :cond_0

    .line 117
    const/4 v0, 0x3

    .line 116
    :goto_0
    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mGridItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    invoke-direct {p0, v8}, Lcom/android/mms/ui/AttachmentPagerAdapter;->setPagerGridViews(Landroid/widget/GridView;)V

    .line 120
    return-void

    .line 117
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private getAttachmentData()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7f0702bf

    const v2, 0x7f02005c

    const v1, 0x7f02005b

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isRcsAttachmentEnabled(Landroid/content/Context;)Z

    move-result v3

    .line 168
    new-instance v4, Ljava/util/ArrayList;

    const/16 v0, 0xb

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022a

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 170
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mShowAddSubject:Z

    if-eqz v0, :cond_4

    const v0, 0x7f020058

    .line 169
    :goto_0
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 173
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_5

    const v0, 0x7f020053

    .line 172
    :goto_1
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 178
    const-string/jumbo v5, "android.hardware.camera"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 180
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_6

    const v0, 0x7f02004c

    .line 179
    :goto_2
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 184
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_7

    const v0, 0x7f02005e

    .line 183
    :goto_3
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_0
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022e

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_8

    const v0, 0x7f02004e

    .line 188
    :goto_4
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f07022f

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 193
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_9

    const v0, 0x7f020046

    .line 192
    :goto_5
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_1
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f070230

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 197
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_a

    const v0, 0x7f020048

    .line 196
    :goto_6
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f070231

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 200
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasVcard:Z

    if-eqz v0, :cond_b

    const v0, 0x7f020055

    .line 199
    :goto_7
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f090006

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 203
    if-eqz v0, :cond_e

    .line 204
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f0702be

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasSlideshow:Z

    if-eqz v0, :cond_c

    const v0, 0x7f020050

    .line 204
    :goto_8
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    new-instance v5, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 208
    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasAttachment:Z

    if-eqz v0, :cond_d

    move v0, v1

    .line 207
    :goto_9
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    :goto_a
    new-instance v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f07029d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 217
    const v2, 0x7f020059

    .line 216
    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    if-eqz v3, :cond_3

    .line 220
    new-instance v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    const v2, 0x7f0200e9

    .line 220
    invoke-direct {v0, p0, v1, v2}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_3
    return-object v4

    .line 171
    :cond_4
    const v0, 0x7f020057

    goto/16 :goto_0

    .line 174
    :cond_5
    const v0, 0x7f020054

    goto/16 :goto_1

    .line 181
    :cond_6
    const v0, 0x7f02004d

    goto/16 :goto_2

    .line 185
    :cond_7
    const v0, 0x7f02005f

    goto/16 :goto_3

    .line 190
    :cond_8
    const v0, 0x7f02004f

    goto/16 :goto_4

    .line 194
    :cond_9
    const v0, 0x7f020047

    goto/16 :goto_5

    .line 198
    :cond_a
    const v0, 0x7f02009a

    goto/16 :goto_6

    .line 201
    :cond_b
    const v0, 0x7f020056

    goto/16 :goto_7

    .line 206
    :cond_c
    const v0, 0x7f020051

    goto :goto_8

    :cond_d
    move v0, v2

    .line 209
    goto :goto_9

    .line 211
    :cond_e
    if-eqz v3, :cond_2

    .line 212
    new-instance v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    iget-object v5, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-boolean v6, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsReplace:Z

    if-nez v6, :cond_f

    iget-boolean v6, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mHasAttachment:Z

    if-eqz v6, :cond_f

    .line 212
    :goto_b
    invoke-direct {v0, p0, v5, v1}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;-><init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    move v1, v2

    .line 214
    goto :goto_b
.end method

.method private getGridData(I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->getAttachmentData()Ljava/util/List;

    move-result-object v3

    .line 124
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 125
    iget-boolean v2, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsRTL:Z

    if-eqz v2, :cond_2

    .line 126
    if-nez p1, :cond_0

    .line 127
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 128
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string/jumbo v5, "grid_item_image"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getResource()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v5, "grid_item_text"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    .line 135
    :goto_1
    if-ge v2, v1, :cond_1

    .line 136
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    .line 137
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 138
    const-string/jumbo v6, "grid_item_image"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getResource()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v6, "grid_item_text"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 143
    :cond_1
    return-object v4

    .line 146
    :cond_2
    if-nez p1, :cond_3

    move v2, v0

    .line 147
    :goto_2
    if-ge v2, v1, :cond_4

    .line 148
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    .line 149
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 150
    const-string/jumbo v6, "grid_item_image"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getResource()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v6, "grid_item_text"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 155
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 156
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;

    .line 157
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 158
    const-string/jumbo v5, "grid_item_image"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getResource()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v5, "grid_item_text"

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 163
    :cond_4
    return-object v4
.end method

.method private setPagerGridViews(Landroid/widget/GridView;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mPagerGridViewViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mPagerGridViewViews:Ljava/util/ArrayList;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mPagerGridViewViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mPagerGridViewViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_1
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 255
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 256
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x2

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPagerGridViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mPagerGridViewViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 100
    const v3, 0x7f040002

    .line 99
    invoke-virtual {v2, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter;->mIsRTL:Z

    .line 102
    invoke-direct {p0, v2, p2}, Lcom/android/mms/ui/AttachmentPagerAdapter;->bindPagerView(Landroid/view/View;I)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    return-object v2

    :cond_0
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p1, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
