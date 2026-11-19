.class Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeThemes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/HomeThemes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/sonim/borqs/launcher/HomeThemes;


# direct methods
.method public constructor <init>(Lcom/sonim/borqs/launcher/HomeThemes;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x2

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 92
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->mContext:Landroid/content/Context;

    .line 98
    const-string/jumbo v1, "layout_inflater"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 99
    const v1, 0x7f03000e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 100
    const v0, 0x7f0e0029

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 101
    const v1, 0x7f0e002a

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    const v2, 0x7f0e002b

    invoke-virtual {v6, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 103
    const v3, 0x7f0e002c

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 104
    const v4, 0x7f0e002d

    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 105
    const v5, 0x7f0e002e

    invoke-virtual {v6, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 107
    iget-object v7, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    invoke-static {v7}, Lcom/sonim/borqs/launcher/HomeThemes;->-get0(Lcom/sonim/borqs/launcher/HomeThemes;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "current_theme"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 153
    :goto_0
    return-object v6

    .line 112
    :pswitch_0
    if-nez v7, :cond_0

    .line 113
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 117
    :goto_1
    const v0, 0x7f0b005d

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v1, 0x7f060003

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-static {v1, v7}, Lcom/sonim/borqs/launcher/HomeThemes;->-wrap0(Lcom/sonim/borqs/launcher/HomeThemes;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/HomeThemes;->-wrap0(Lcom/sonim/borqs/launcher/HomeThemes;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/HomeThemes;->-wrap0(Lcom/sonim/borqs/launcher/HomeThemes;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/HomeThemes;->-wrap0(Lcom/sonim/borqs/launcher/HomeThemes;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 115
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 131
    :pswitch_1
    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 132
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 136
    :goto_2
    const v0, 0x7f0b005e

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 138
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeThemes$ThemeAdapter;->this$0:Lcom/sonim/borqs/launcher/HomeThemes;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/HomeThemes;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 139
    const v1, 0x7f060004

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 140
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 141
    new-array v7, v0, [I

    .line 142
    const/4 v0, 0x0

    :goto_3
    array-length v8, v7

    if-ge v0, v8, :cond_2

    .line 143
    const/4 v8, 0x0

    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    aput v8, v7, v0

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 134
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 145
    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 147
    const/4 v0, 0x0

    aget v0, v7, v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 148
    const/4 v0, 0x1

    aget v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    const/4 v0, 0x2

    aget v0, v7, v0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    const/4 v0, 0x3

    aget v0, v7, v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
