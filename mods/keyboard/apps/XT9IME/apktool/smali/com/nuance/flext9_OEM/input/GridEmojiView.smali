.class public Lcom/nuance/flext9_OEM/input/GridEmojiView;
.super Landroid/widget/GridView;
.source "GridEmojiView.java"


# static fields
.field private static final BASE_HEX:I = 0x10

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final POSITION_PAUSE:I = 0x0

.field private static final POSITION_WAIT:I = 0x2

.field private static final SEMICOLON:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "XT9IME"


# instance fields
.field mTempArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static checkAscii(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 228
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0xe1

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 76
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    const v3, 0x7f030024

    .line 76
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setStretchMode(I)V

    .line 80
    new-instance v0, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView$1;-><init>(Lcom/nuance/flext9_OEM/input/GridEmojiView;)V

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setScrollbarFadingEnabled(Z)V

    .line 99
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 189
    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getNumColumns()I

    move-result v1

    .line 112
    sub-int/2addr v0, v1

    .line 113
    if-ltz v0, :cond_1

    .line 114
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 149
    :cond_0
    :goto_0
    return v3

    .line 116
    :cond_1
    invoke-virtual {p0, v2}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 117
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    if-nez v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmSymbolsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmSymbolsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 121
    :cond_2
    if-ne v0, v3, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiRecentsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiRecentsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 125
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiPeopleTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiPeopleTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto :goto_0

    .line 129
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiObjectsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiObjectsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_0

    .line 133
    :cond_5
    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 134
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiNatureTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiNatureTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_0

    .line 137
    :cond_6
    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 138
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiCarsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiCarsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_0

    .line 140
    :cond_7
    const/4 v1, 0x6

    if-ne v0, v1, :cond_8

    .line 141
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiPunctionsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 143
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmojiPunctionsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_0

    .line 144
    :cond_8
    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmoticonsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getmEmoticonsTab()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    goto/16 :goto_0

    .line 151
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v1

    .line 152
    if-ne v1, v2, :cond_9

    .line 154
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 155
    return v3

    .line 158
    :cond_9
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v0

    .line 159
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getNumColumns()I

    move-result v1

    .line 160
    add-int/2addr v0, v1

    .line 161
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getCount()I

    move-result v2

    .line 162
    if-lt v0, v2, :cond_a

    .line 163
    rem-int/2addr v0, v1

    .line 165
    :cond_a
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 166
    return v3

    .line 169
    :pswitch_2
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getNumColumns()I

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 172
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getCount()I

    move-result v2

    .line 173
    if-lt v1, v2, :cond_c

    .line 176
    :goto_1
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 177
    return v3

    .line 179
    :pswitch_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v1

    .line 180
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getNumColumns()I

    .line 181
    add-int/lit8 v1, v1, -0x1

    .line 182
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getCount()I

    .line 183
    if-gtz v1, :cond_b

    .line 186
    :goto_2
    invoke-virtual {p0, v0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->setSelection(I)V

    .line 187
    return v3

    :cond_b
    move v0, v1

    goto :goto_2

    :cond_c
    move v0, v1

    goto :goto_1

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    sparse-switch p1, :sswitch_data_0

    .line 222
    return v4

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedItemPosition()I

    move-result v2

    .line 199
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 200
    if-eqz v1, :cond_0

    instance-of v0, v1, Landroid/widget/TextView;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    return v4

    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 205
    return v4

    .line 206
    :cond_2
    if-ne v3, v6, :cond_4

    if-nez v2, :cond_4

    .line 207
    const-string/jumbo v0, ","

    move-object v1, v0

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 212
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 213
    if-eqz v3, :cond_3

    if-ne v3, v6, :cond_6

    .line 214
    :cond_3
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->closeDialogs()V

    .line 215
    return v5

    .line 208
    :cond_4
    if-ne v3, v6, :cond_5

    const/4 v1, 0x2

    if-ne v2, v1, :cond_5

    .line 209
    const-string/jumbo v0, ";"

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 208
    goto :goto_0

    .line 216
    :cond_6
    if-ne v3, v5, :cond_7

    .line 217
    return v5

    .line 219
    :cond_7
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IME;

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/IME;->populateRecentEmojilist(Ljava/lang/String;)V

    .line 220
    return v5

    .line 194
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public setArray([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 70
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/GridEmojiView;->mTempArray:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/GridEmojiView;->init()V

    .line 73
    return-void
.end method
