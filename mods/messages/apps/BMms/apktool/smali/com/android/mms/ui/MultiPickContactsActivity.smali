.class public Lcom/android/mms/ui/MultiPickContactsActivity;
.super Landroid/app/ExpandableListActivity;
.source "MultiPickContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;,
        Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;,
        Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

.field private mCancelBtn:Landroid/widget/Button;

.field private mContactCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;

.field private mMode:I

.field private mOkBtn:Landroid/widget/Button;

.field private mSearchText:Landroid/widget/EditText;

.field private mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MultiPickContactsActivity;)Landroid/widget/ExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MultiPickContactsActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MultiPickContactsActivity;)Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MultiPickContactsActivity;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity;->init(Landroid/database/Cursor;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    .line 71
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 72
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 73
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mContactCursor:Landroid/database/Cursor;

    .line 56
    return-void
.end method

.method private getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 274
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    .line 275
    const-string/jumbo v0, "_id"

    aput-object v0, v4, v1

    .line 276
    const-string/jumbo v0, "lookup"

    const/4 v3, 0x1

    aput-object v0, v4, v3

    .line 277
    const-string/jumbo v0, "display_name"

    const/4 v3, 0x2

    aput-object v0, v4, v3

    .line 278
    const-string/jumbo v0, "sort_key"

    const/4 v3, 0x3

    aput-object v0, v4, v3

    .line 281
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 282
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 284
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 290
    const-string/jumbo v7, "sort_key"

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    .line 289
    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-object v2

    .line 292
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 293
    const-string/jumbo v10, "sort_key"

    move-object v6, v3

    move-object v7, v4

    move-object v8, v2

    move-object v9, v2

    .line 292
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method private getContactsDetailCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    const-string/jumbo v0, "contact_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 301
    const-string/jumbo v1, " AND ("

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 302
    const-string/jumbo v1, "mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 303
    const-string/jumbo v1, " OR "

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 304
    const-string/jumbo v1, "mimetype=\'vnd.android.cursor.item/email_v2\')"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 307
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    .line 306
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 309
    return-object v0
.end method

.method private getSelectedResult()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 216
    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 217
    :cond_0
    iget v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v2}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsVcard()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 216
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 217
    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 271
    return-void
.end method

.method private putExtraWithContact(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 221
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 222
    const-string/jumbo v0, "info"

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 224
    const-string/jumbo v0, "vcard"

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->getSelectedAsVcard()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setOKButtonState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    if-ne v0, v3, :cond_3

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 257
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->mSelectedContactLookupKey:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 259
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 261
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->init(Landroid/database/Cursor;)V

    .line 234
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 239
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 142
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    return v3

    .line 144
    :cond_0
    const v0, 0x7f0f0126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 145
    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 150
    iget v2, v1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-eq v2, p4, :cond_1

    .line 151
    const-string/jumbo v0, "MultiPickContactsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The child click, the groupPosition("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    const-string/jumbo v3, ") ,and the childPosition("

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    const-string/jumbo v3, ") is not same as saved childPosition("

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    iget v1, v1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    .line 151
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 154
    const-string/jumbo v2, ")"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0

    .line 158
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 159
    if-eqz v2, :cond_2

    .line 160
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->removeSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setOKButtonState()V

    .line 167
    invoke-super/range {p0 .. p6}, Landroid/app/ExpandableListActivity;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0

    .line 163
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 174
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getSelectedResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->putExtraWithContact(Landroid/content/Intent;)V

    .line 177
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 181
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->finish()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->setResult(I)V

    goto :goto_1

    .line 184
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MultiPickContactsActivity;->setResult(I)V

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->finish()V

    goto :goto_0

    .line 193
    :sswitch_2
    check-cast p1, Landroid/widget/CheckBox;

    .line 194
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 195
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 196
    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(J)V

    .line 201
    :goto_2
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setOKButtonState()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->removeSelected(J)V

    goto :goto_2

    .line 204
    :sswitch_3
    check-cast p1, Landroid/widget/RadioButton;

    .line 205
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    .line 207
    if-eqz v1, :cond_2

    .line 208
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;->addSelected(Ljava/lang/String;)V

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setOKButtonState()V

    goto :goto_0

    .line 172
    :sswitch_data_0
    .sparse-switch
        0x7f0f011d -> :sswitch_0
        0x7f0f011e -> :sswitch_1
        0x7f0f0126 -> :sswitch_2
        0x7f0f0127 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v5, 0x7f040044

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    return-void

    .line 88
    :cond_0
    if-eqz p1, :cond_2

    .line 89
    const-string/jumbo v0, "mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    .line 94
    :goto_0
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setContentView(I)V

    .line 95
    iget v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 103
    const-string/jumbo v0, "MultiPickContactsActivity"

    const-string/jumbo v1, "shouldn\'t be here."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSelected:Lcom/android/mms/ui/MultiPickContactsActivity$MySelected;

    .line 108
    const v0, 0x7f0f011d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setOKButtonState()V

    .line 111
    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mCancelBtn:Landroid/widget/Button;

    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0f011c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSearchText:Landroid/widget/EditText;

    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mSearchText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 118
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    .line 120
    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v3, [I

    .line 121
    new-array v9, v3, [Ljava/lang/String;

    new-array v10, v3, [I

    move-object v1, p0

    move-object v3, p0

    move v8, v5

    .line 119
    invoke-direct/range {v0 .. v10}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;-><init>(Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/content/Context;Lcom/android/mms/ui/MultiPickContactsActivity;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 122
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/MultiPickContactsActivity;->getContactsCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    .line 125
    :cond_1
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "mode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mMode:I

    goto/16 :goto_0

    .line 97
    :pswitch_0
    const v0, 0x7f0702be

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setTitle(I)V

    goto :goto_1

    .line 100
    :pswitch_1
    const v0, 0x7f0702bf

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactsActivity;->setTitle(I)V

    goto/16 :goto_1

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 131
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MultiPickContactsActivity;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 132
    iput-object v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity;->mAdapter:Lcom/android/mms/ui/MultiPickContactsActivity$ContactsAdapter;

    .line 134
    :cond_0
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 244
    return-void
.end method
