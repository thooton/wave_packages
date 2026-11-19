.class public Lcom/android/mms/ui/PopupList;
.super Ljava/lang/Object;
.source "PopupList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/PopupList$1;,
        Lcom/android/mms/ui/PopupList$2;,
        Lcom/android/mms/ui/PopupList$3;,
        Lcom/android/mms/ui/PopupList$Item;,
        Lcom/android/mms/ui/PopupList$ItemDataAdapter;,
        Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;
    }
.end annotation


# instance fields
.field private final mAnchorView:Landroid/view/View;

.field private mContentList:Landroid/widget/ListView;

.field private final mContext:Landroid/content/Context;

.field private mExpandImageView:Landroid/widget/ImageView;

.field private mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/PopupList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOnPopupItemClickListener:Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;

.field private mPopupHeight:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/PopupList;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/PopupList;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/mms/ui/PopupList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWidth:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/mms/ui/PopupList;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/PopupList;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mExpandImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/PopupList;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/PopupList;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/PopupList;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/PopupList;)Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mOnPopupItemClickListener:Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/PopupList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/PopupList;->mPopupHeight:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/PopupList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetX:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/mms/ui/PopupList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetY:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/PopupList;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/PopupList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/PopupList;->updatePopupLayoutParams()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/PopupList;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 2

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mItems:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Lcom/android/mms/ui/PopupList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PopupList$1;-><init>(Lcom/android/mms/ui/PopupList;)V

    .line 74
    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 91
    new-instance v0, Lcom/android/mms/ui/PopupList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PopupList$2;-><init>(Lcom/android/mms/ui/PopupList;)V

    .line 90
    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 103
    new-instance v0, Lcom/android/mms/ui/PopupList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/PopupList$3;-><init>(Lcom/android/mms/ui/PopupList;)V

    .line 102
    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 115
    iput-object p1, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/mms/ui/PopupList;->mAnchorView:Landroid/view/View;

    .line 117
    iput-object p3, p0, Lcom/android/mms/ui/PopupList;->mExpandImageView:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mExpandLessDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    return-void
.end method

.method private createPopupWindow()Landroid/widget/PopupWindow;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 179
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 181
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 182
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 183
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    .line 184
    const v3, 0x101006d

    .line 183
    invoke-direct {v1, v2, v5, v3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 185
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/ui/PopupList$ItemDataAdapter;

    invoke-direct {v2, p0, v5}, Lcom/android/mms/ui/PopupList$ItemDataAdapter;-><init>(Lcom/android/mms/ui/PopupList;Lcom/android/mms/ui/PopupList$ItemDataAdapter;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/PopupList;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 188
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 189
    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 191
    return-object v0
.end method

.method private updatePopupLayoutParams()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 159
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 160
    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 162
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/mms/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;)I

    move-result v1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v3

    .line 163
    iget-object v3, p0, Lcom/android/mms/ui/PopupList;->mContentList:Landroid/widget/ListView;

    .line 164
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 165
    const/high16 v5, -0x80000000

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 163
    invoke-virtual {v3, v4, v5}, Landroid/widget/ListView;->measure(II)V

    .line 166
    iget-object v3, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 167
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 168
    const/high16 v4, 0x430c0000    # 140.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/mms/ui/PopupList;->mPopupWidth:I

    .line 169
    invoke-virtual {v0}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/PopupList;->mPopupHeight:I

    .line 170
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetX:I

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mExpandImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 172
    iget v0, v2, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mExpandImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetY:I

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iget v0, v2, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetY:I

    goto :goto_0
.end method


# virtual methods
.method public addItem(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/mms/ui/PopupList$Item;

    invoke-direct {v1, p1, p2}, Lcom/android/mms/ui/PopupList$Item;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 153
    :cond_0
    return-void
.end method

.method public findItem(I)Lcom/android/mms/ui/PopupList$Item;
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mItems:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/PopupList$Item;

    .line 196
    iget v2, v0, Lcom/android/mms/ui/PopupList$Item;->id:I

    if-ne v2, p1, :cond_0

    return-object v0

    .line 198
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setOnPopupItemClickListener(Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/mms/ui/PopupList;->mOnPopupItemClickListener:Lcom/android/mms/ui/PopupList$OnPopupItemClickListener;

    .line 126
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    invoke-direct {p0}, Lcom/android/mms/ui/PopupList;->createPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 141
    invoke-direct {p0}, Lcom/android/mms/ui/PopupList;->updatePopupLayoutParams()V

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/mms/ui/PopupList;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/android/mms/ui/PopupList;->mPopupHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/PopupList;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/mms/ui/PopupList;->mAnchorView:Landroid/view/View;

    iget v2, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetX:I

    iget v3, p0, Lcom/android/mms/ui/PopupList;->mPopupOffsetY:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 148
    return-void
.end method
