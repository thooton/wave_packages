.class public Lcom/sonim/borqs/launcher/MyEventsFragment;
.super Landroid/app/ListFragment;
.source "MyEventsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;
.implements Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Lcom/sonim/borqs/launcher/MyEventsItem;",
        ">;",
        "Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;",
        "Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

.field private mPageTitle:Landroid/widget/TextView;

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private announceNoMissedEvents()V
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b0051

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/AccessibilityUtil;->announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    return-void
.end method

.method private clearData(I)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->clearData(I)Z

    .line 258
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/MyEventsFragment;->resetMissedEventCount(I)V

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->showNewEventNotice(Z)V

    .line 260
    return-void
.end method

.method public static create()Lcom/sonim/borqs/launcher/MyEventsFragment;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsFragment;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;-><init>()V

    .line 43
    return-object v0
.end method

.method private readMissedEventCount(Lcom/sonim/borqs/launcher/MyEventsItem;)I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private resetMissedEventCount(I)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 219
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 220
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    return-void
.end method

.method private saveMissedEventCount()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getItems()Ljava/util/List;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 269
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->writeMissedEventCount(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    goto :goto_0

    .line 271
    :cond_1
    return-void
.end method

.method private saveNewEventNoticeVisibility(Z)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    const-string/jumbo v1, "com.sonim.borqs.launcher.newevent.visibility"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 238
    return-void
.end method

.method private showNewEventNotice(Z)V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->showNewEventNotice(Z)V

    .line 247
    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/MyEventsFragment;->saveNewEventNoticeVisibility(Z)V

    .line 248
    return-void
.end method

.method private updateHeaderCount()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->getItems()Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 157
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getTotalMissedEvents()I

    move-result v4

    .line 158
    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->readMissedEventCount(Lcom/sonim/borqs/launcher/MyEventsItem;)I

    move-result v5

    .line 162
    if-le v4, v5, :cond_1

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_1

    .line 163
    const/4 v1, 0x1

    .line 165
    :cond_1
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getTotalMissedEvents()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_3

    .line 169
    const-string/jumbo v0, "MyEventsFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show unread notice and save visibility :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/MyEventsFragment;->showNewEventNotice(Z)V

    .line 173
    :cond_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b003e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    if-lez v2, :cond_4

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_4
    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mPageTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 178
    iget-object v1, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mPageTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_5
    return-void
.end method

.method private writeMissedEventCount(Lcom/sonim/borqs/launcher/MyEventsItem;)V
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/MyEventsItem;->getEventTypeAndPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p1}, Lcom/sonim/borqs/launcher/MyEventsItem;->getTotalMissedEvents()I

    move-result v2

    .line 212
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.sonim.borqs.launcher.prefs"

    .line 72
    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 75
    new-instance v0, Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonim/borqs/launcher/MyEventsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    .line 76
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 81
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 82
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setMissedEventCallback(Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;)V

    .line 50
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setThemeChangedListener(Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;)V

    .line 51
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 97
    :pswitch_0
    new-instance v0, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonim/borqs/launcher/MissedCallInfoLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 99
    :pswitch_1
    new-instance v0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 63
    const v0, 0x7f0e0003

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mPageTitle:Landroid/widget/TextView;

    .line 64
    return-object v1
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-super {p0}, Landroid/app/ListFragment;->onDetach()V

    .line 56
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setMissedEventCallback(Lcom/sonim/borqs/launcher/LauncherActivity$LoadEventsCallback;)V

    .line 57
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setThemeChangedListener(Lcom/sonim/borqs/launcher/LauncherActivity$ThemeChangedListener;)V

    .line 58
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 124
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 125
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/MyEventsItem;

    .line 126
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getLaunchIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startActivitySafely(Landroid/content/Intent;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsItem;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string/jumbo v1, "MyEventsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception in launching pending intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/sonim/borqs/launcher/MyEventsItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    if-nez p2, :cond_0

    .line 108
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->clearData(I)V

    .line 109
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->updateHeaderCount()V

    .line 110
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v0, p2}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->refreshData(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    .line 113
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->updateHeaderCount()V

    .line 114
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p2, Lcom/sonim/borqs/launcher/MyEventsItem;

    invoke-virtual {p0, p1, p2}, Lcom/sonim/borqs/launcher/MyEventsFragment;->onLoadFinished(Landroid/content/Loader;Lcom/sonim/borqs/launcher/MyEventsItem;)V

    return-void
.end method

.method public onLoadNotificationMissedEventInfo(Lcom/sonim/borqs/launcher/MyEventsItem;I)V
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 140
    const-string/jumbo v0, "MyEventsFragment"

    const-string/jumbo v1, "Non-fatal onLoadNotificationMissedEventInfo - getActivity() is null"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_0
    if-nez p1, :cond_1

    .line 144
    invoke-direct {p0, p2}, Lcom/sonim/borqs/launcher/MyEventsFragment;->clearData(I)V

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->updateHeaderCount()V

    .line 149
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->refreshData(Lcom/sonim/borqs/launcher/MyEventsItem;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Lcom/sonim/borqs/launcher/MyEventsItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->clearData(I)V

    .line 119
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->updateHeaderCount()V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 87
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/UnreadMessageInfoLoader;->checkForReload()V

    .line 91
    :cond_0
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    if-eqz v0, :cond_0

    .line 276
    const-string/jumbo v0, "MyEventsFragment"

    const-string/jumbo v1, "Theme changed"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/sonim/borqs/launcher/MyEventsFragment;->mAdapter:Lcom/sonim/borqs/launcher/MyEventsAdapter;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/MyEventsAdapter;->notifyDataSetChanged()V

    .line 279
    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/app/ListFragment;->setUserVisibleHint(Z)V

    .line 185
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->showNewEventNotice(Z)V

    .line 188
    invoke-direct {p0, v1}, Lcom/sonim/borqs/launcher/MyEventsFragment;->saveNewEventNoticeVisibility(Z)V

    .line 190
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->announceNoMissedEvents()V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->saveMissedEventCount()V

    .line 197
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 199
    :cond_2
    if-eqz p1, :cond_3

    .line 200
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_3
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/MyEventsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    goto :goto_0
.end method
