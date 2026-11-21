.class Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter$1;->this$1:Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings$MyAdapter;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 245
    sget-boolean v0, Lcom/nuance/flext9_OEM/input/userdictionary/UserDictionarySettings;->IS_SHORTCUT_API_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 247
    return v2

    .line 249
    :cond_0
    if-ne p3, v1, :cond_2

    .line 250
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 257
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 258
    const/4 v0, 0x1

    return v0

    :cond_1
    move-object v0, p1

    .line 254
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 261
    :cond_2
    return v2
.end method
