.class public Lcom/android/mms/ui/ContactDropdownLayouter;
.super Lcom/android/ex/chips/DropdownChipLayouter;
.source "ContactDropdownLayouter.java"


# static fields
.field private static final synthetic -com-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues:[I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private mDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

.field private mEntry:Lcom/android/ex/chips/RecipientEntry;


# direct methods
.method private static synthetic -getcom-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/mms/ui/ContactDropdownLayouter;->-com-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/ContactDropdownLayouter;->-com-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->values()[Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->BASE_RECIPIENT:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->RECIPIENT_ALTERNATES:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->SINGLE_RECIPIENT:Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;

    invoke-virtual {v1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/mms/ui/ContactDropdownLayouter;->-com-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/ex/chips/DropdownChipLayouter;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 64
    iput-object p2, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    .line 65
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

    .line 67
    return-void
.end method


# virtual methods
.method protected bindIconToView(ZLcom/android/ex/chips/RecipientEntry;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 126
    if-nez p3, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p3}, Landroid/widget/ImageView;->getId()I

    move-result v0

    const v1, 0x1020006

    if-ne v0, v1, :cond_6

    .line 132
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    .line 133
    const-wide/16 v2, -0x3ea

    .line 132
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 137
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mDefaultGroupContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 170
    :goto_0
    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :goto_1
    return-void

    .line 142
    :cond_2
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-static {v0, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 147
    iget-object v2, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 148
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNameForAvatar()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/LetterTileDrawable;->isEnglishLetterString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {v0, v1}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    :goto_2
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    :goto_3
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 152
    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/mms/util/MaterialColorMapUtils;->getLetterTitleDraw(Landroid/content/Context;Lcom/android/mms/data/Contact;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 154
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_2

    .line 158
    :cond_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 159
    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 165
    :cond_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 166
    const v1, 0x7f020100

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    .line 172
    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/ex/chips/DropdownChipLayouter;->bindIconToView(ZLcom/android/ex/chips/RecipientEntry;Landroid/widget/ImageView;Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)V

    .line 173
    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 8

    .prologue
    const v7, 0x1020015

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    .line 92
    const-wide/16 v2, -0x3e9

    .line 91
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v0

    const v1, 0x1020016

    if-ne v0, v1, :cond_1

    .line 94
    invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-static {v1, v2}, Lcom/android/mms/util/ContactRecipientEntryUtils;->getDisplayNameForContactList(Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-super {p0, v0, p2}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 121
    :goto_0
    return-void

    .line 100
    :cond_1
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    .line 103
    const-wide/16 v2, -0x3ea

    .line 102
    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 104
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 105
    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 107
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p2}, Landroid/widget/TextView;->getId()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 111
    if-eqz p1, :cond_5

    .line 112
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 113
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v5, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/ex/chips/DropdownChipLayouter;->bindTextToView(Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    goto :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;
    .locals 8

    .prologue
    .line 79
    iput-object p3, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/ContactDropdownLayouter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 81
    const v1, 0x7f02001d

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/StateListDrawable;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 82
    invoke-super/range {v0 .. v7}, Lcom/android/ex/chips/DropdownChipLayouter;->bindView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/ex/chips/RecipientEntry;ILcom/android/ex/chips/DropdownChipLayouter$AdapterType;Ljava/lang/String;Landroid/graphics/drawable/StateListDrawable;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getAlternateItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ContactDropdownLayouter;->getItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I

    move-result v0

    return v0
.end method

.method protected getItemLayoutResId(Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;)I
    .locals 3

    .prologue
    const v2, 0x7f040007

    .line 179
    invoke-static {}, Lcom/android/mms/ui/ContactDropdownLayouter;->-getcom-android-ex-chips-DropdownChipLayouter$AdapterTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/ex/chips/DropdownChipLayouter$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 185
    return v2

    .line 181
    :pswitch_0
    const v0, 0x7f040032

    return v0

    .line 183
    :pswitch_1
    return v2

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
