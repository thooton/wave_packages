.class public Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;
.super Landroid/app/ListFragment;
.source "ShortCutKeyChangeFragment.java"


# instance fields
.field public appList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInputSearch:Landroid/widget/EditText;

.field private mListAdapter:Lcom/sonim/borqs/launcher/ApplicationAdapter;

.field private mNavigationKeyPref:Ljava/lang/String;

.field private mNavigationTitle:Ljava/lang/String;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;)Lcom/sonim/borqs/launcher/ApplicationAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mListAdapter:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mListAdapter:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    .line 45
    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationKeyPref:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private filterList(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 167
    const-string/jumbo v0, "com.android.stk"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 169
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v4

    .line 170
    :goto_0
    if-ge v5, v6, :cond_1

    .line 171
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move v3, v4

    .line 172
    :goto_1
    if-ge v3, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    add-int/lit8 v1, v2, -0x1

    .line 175
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 172
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v1

    goto :goto_1

    .line 170
    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    .line 179
    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private getAppFilterList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0b0026

    invoke-virtual {p0, v2}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0b0027

    invoke-virtual {p0, v2}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 136
    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_2
    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mInputSearch:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterSearch(Landroid/widget/EditText;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    if-eqz v0, :cond_0

    .line 79
    const-string/jumbo v0, "ShortCutKeyChangeActivity"

    const-string/jumbo v1, "============== "

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/AccessArrayList;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/AccessArrayList;->getApplicationsListForNavigation()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    .line 81
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getAppFilterList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->filterList(Ljava/util/ArrayList;)V

    .line 82
    new-instance v0, Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->appList:Ljava/util/List;

    const v3, 0x7f030007

    .line 82
    invoke-direct {v0, v1, v3, v2}, Lcom/sonim/borqs/launcher/ApplicationAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mListAdapter:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    .line 84
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mListAdapter:Lcom/sonim/borqs/launcher/ApplicationAdapter;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar$LayoutParams;->setMarginEnd(I)V

    .line 89
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 90
    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 91
    const v0, 0x7f0e0028

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mInputSearch:Landroid/widget/EditText;

    .line 92
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 93
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 96
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mInputSearch:Landroid/widget/EditText;

    new-instance v1, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;

    invoke-direct {v1, p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment$1;-><init>(Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    const-string/jumbo v2, "com.sonim.borqs.launcher.prefs"

    const/4 v3, 0x0

    .line 60
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 62
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_2

    const-string/jumbo v0, "preferenceKey"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationKeyPref:Ljava/lang/String;

    .line 64
    if-eqz v2, :cond_0

    const-string/jumbo v0, "preferenceTitle"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationTitle:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationKeyPref:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationTitle:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 67
    :cond_1
    return-void

    :cond_2
    move-object v0, v1

    .line 63
    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 144
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 145
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationKeyPref:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonim.borqs.KEY_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "short_cut_change"

    .line 155
    iget-object v2, p0, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->mNavigationTitle:Ljava/lang/String;

    .line 154
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 158
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 159
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/ShortCutKeyChangeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 160
    return-void
.end method
