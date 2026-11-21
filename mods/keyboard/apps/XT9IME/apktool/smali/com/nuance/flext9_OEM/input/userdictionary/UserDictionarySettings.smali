.class public Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;
.super Landroid/app/ListFragment;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADAPTER_FROM:[Ljava/lang/String;

.field private static final ADAPTER_FROM_SHORTCUT_SUPPORTED:[Ljava/lang/String;

.field private static final ADAPTER_FROM_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

.field private static final ADAPTER_TO:[I

.field private static final ADAPTER_TO_SHORTCUT_SUPPORTED:[I

.field private static final ADAPTER_TO_SHORTCUT_UNSUPPORTED:[I

.field private static final DELETE_SELECTION_SHORTCUT_UNSUPPORTED:Ljava/lang/String; = "word=?"

.field private static final DELETE_SELECTION_WITHOUT_SHORTCUT:Ljava/lang/String; = "word=? AND shortcut is null OR shortcut=\'\'"

.field private static final DELETE_SELECTION_WITH_SHORTCUT:Ljava/lang/String; = "word=? AND shortcut=?"

.field private static final INDEX_SHORTCUT:I = 0x2

.field public static final IS_SHORTCUT_API_SUPPORTED:Z

.field private static final OPTIONS_MENU_ADD:I = 0x1

.field private static final QUERY_PROJECTION:[Ljava/lang/String;

.field private static final QUERY_PROJECTION_SHORTCUT_SUPPORTED:[Ljava/lang/String;

.field private static final QUERY_PROJECTION_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

.field private static final QUERY_SELECTION:Ljava/lang/String; = "locale=?"

.field private static final QUERY_SELECTION_ALL_LOCALES:Ljava/lang/String; = "locale is null"


# instance fields
.field private mAdapter:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const v5, 0x1020014

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 54
    :goto_0
    sput-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    .line 58
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v0, v2

    const-string/jumbo v3, "word"

    aput-object v3, v0, v1

    .line 57
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v0, v2

    const-string/jumbo v3, "word"

    aput-object v3, v0, v1

    const-string/jumbo v3, "shortcut"

    aput-object v3, v0, v4

    .line 59
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION_SHORTCUT_SUPPORTED:[Ljava/lang/String;

    .line 62
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 63
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION_SHORTCUT_SUPPORTED:[Ljava/lang/String;

    .line 61
    :goto_1
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    .line 68
    new-array v0, v1, [Ljava/lang/String;

    .line 69
    const-string/jumbo v3, "word"

    aput-object v3, v0, v2

    .line 68
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

    .line 72
    new-array v0, v4, [Ljava/lang/String;

    .line 73
    const-string/jumbo v3, "word"

    aput-object v3, v0, v2

    const-string/jumbo v3, "shortcut"

    aput-object v3, v0, v1

    .line 72
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM_SHORTCUT_SUPPORTED:[Ljava/lang/String;

    .line 76
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM_SHORTCUT_SUPPORTED:[Ljava/lang/String;

    .line 76
    :goto_2
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM:[Ljava/lang/String;

    .line 79
    new-array v0, v1, [I

    .line 80
    aput v5, v0, v2

    .line 79
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO_SHORTCUT_UNSUPPORTED:[I

    .line 84
    const v0, 0x1020015

    .line 83
    filled-new-array {v5, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO_SHORTCUT_SUPPORTED:[I

    .line 87
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-eqz v0, :cond_3

    .line 88
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO_SHORTCUT_SUPPORTED:[I

    .line 87
    :goto_3
    sput-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO:[I

    .line 52
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0

    .line 63
    :cond_1
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_2
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM_SHORTCUT_UNSUPPORTED:[Ljava/lang/String;

    goto :goto_2

    .line 88
    :cond_3
    sget-object v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO_SHORTCUT_UNSUPPORTED:[I

    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private createAdapter()Landroid/widget/ListAdapter;
    .locals 7

    .prologue
    .line 150
    new-instance v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 151
    sget-object v4, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_FROM:[Ljava/lang/String;

    sget-object v5, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->ADAPTER_TO:[I

    .line 150
    const v2, 0x7f03002a

    const/4 v3, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[ILcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;)V

    return-object v0
.end method

.method public static deleteWord(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 223
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 224
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=?"

    .line 225
    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 224
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut is null OR shortcut=\'\'"

    .line 229
    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    .line 227
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_1
    sget-object v0, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "word=? AND shortcut=?"

    .line 233
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object p0, v2, v3

    aput-object p1, v2, v4

    .line 231
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getShortcut(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 211
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-nez v0, :cond_0

    return-object v1

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    return-object v1

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 215
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 217
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 218
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "shortcut"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 217
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getWord(I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    return-object v1

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 204
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 207
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    const-string/jumbo v2, "word"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 206
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 188
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 189
    const-string/jumbo v1, "mode"

    if-nez p1, :cond_0

    .line 190
    const/4 v0, 0x1

    .line 189
    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string/jumbo v0, "word"

    invoke-virtual {v2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v0, "shortcut"

    invoke-virtual {v2, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 196
    const-class v1, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionaryAddWordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 197
    const v3, 0x7f09017c

    move-object v5, v4

    .line 196
    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 198
    return-void

    :cond_0
    move v0, v6

    .line 191
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 131
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getArguments()Landroid/os/Bundle;

    .line 133
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 136
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 137
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->createAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mAdapter:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    .line 138
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mAdapter:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->setHasOptionsMenu(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 147
    return-void

    .line 129
    :cond_0
    const-string/jumbo v1, "locale"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f09018e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 114
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 297
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->QUERY_PROJECTION:[Ljava/lang/String;

    const-string/jumbo v6, "UPPER(word)"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    const/4 v0, 0x1

    const v1, 0x7f09017b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 167
    const v1, 0x7f020047

    .line 166
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 170
    const/4 v1, 0x5

    .line 169
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 120
    const v0, 0x7f03002b

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0, p3}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getWord(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-direct {p0, p3}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->getShortcut(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mCursor:Landroid/database/Cursor;

    .line 303
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mAdapter:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 304
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->mAdapter:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 309
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 176
    invoke-direct {p0, v2, v2}, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return v1

    .line 179
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
