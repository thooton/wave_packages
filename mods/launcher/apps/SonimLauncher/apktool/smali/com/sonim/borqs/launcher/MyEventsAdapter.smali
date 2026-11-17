.class public Lcom/sonim/borqs/launcher/MyEventsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MyEventsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/MyEventsAdapter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/sonim/borqs/launcher/MyEventsItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorfulThemeIconIds:[I

.field private mDateBuilder:Lcom/sonim/borqs/launcher/FormattedDateBuilder;

.field private mEventsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsAdapter$1;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/MyEventsAdapter$1;-><init>()V

    sput-object v0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->COMPARATOR:Ljava/util/Comparator;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-direct {p0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mEventsMap:Ljava/util/HashMap;

    .line 41
    const-string/jumbo v0, "layout_inflater"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    new-instance v0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;

    invoke-direct {v0, p1}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mDateBuilder:Lcom/sonim/borqs/launcher/FormattedDateBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.sonim.borqs.launcher.prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 45
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->initializeColorfulThemeDrawables()V

    .line 46
    return-void
.end method

.method private initializeColorfulThemeDrawables()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mColorfulThemeIconIds:[I

    if-eqz v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 132
    const v2, 0x7f060005

    .line 131
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 134
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mColorfulThemeIconIds:[I

    move v0, v1

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mColorfulThemeIconIds:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mColorfulThemeIconIds:[I

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v3, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    return-void
.end method


# virtual methods
.method public clearData(I)Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mEventsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mEventsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->clear()V

    .line 109
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->addAll(Ljava/util/Collection;)V

    .line 110
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->notifyDataSetChanged()V

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mEventsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 90
    sget-object v1, Lcom/sonim/borqs/launcher/MyEventsAdapter;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 91
    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 53
    if-eqz p2, :cond_0

    .line 56
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    const v1, 0x7f0e0021

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    const v2, 0x7f0e0022

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    const v3, 0x7f0e0024

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 61
    const v4, 0x7f0e0023

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 64
    iget-object v5, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "current_theme"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 69
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 71
    iget-object v6, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mColorfulThemeIconIds:[I

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v7

    aget v6, v6, v7

    .line 70
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 76
    :goto_1
    if-eqz v5, :cond_2

    .line 77
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    :goto_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mDateBuilder:Lcom/sonim/borqs/launcher/FormattedDateBuilder;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getLastEventTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->formatShortDateTime(J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-object p2

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030009

    invoke-virtual {v1, v2, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_1

    .line 80
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public refreshData(Lcom/sonim/borqs/launcher/MyEventsItem;)V
    .locals 2

    .prologue
    .line 95
    if-nez p1, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsAdapter;->mEventsMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->clear()V

    .line 98
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->addAll(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->notifyDataSetChanged()V

    .line 100
    return-void
.end method
