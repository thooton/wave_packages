.class public Lcom/android/mms/ui/MultiPickContactGroups;
.super Landroid/app/ListActivity;
.source "MultiPickContactGroups.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;,
        Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;,
        Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACTS_GROUP_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

.field private mCancelButton:Landroid/widget/Button;

.field private mChoiceSet:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mMaxContactCount:I

.field private mOKButton:Landroid/widget/Button;

.field private mPublicAccountPickGroup:Z

.field private mQueryHandler:Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllLabel:Landroid/widget/TextView;

.field private preFilterCursor:Landroid/database/Cursor;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MultiPickContactGroups;)Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/MultiPickContactGroups;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mPublicAccountPickGroup:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/MultiPickContactGroups;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->preFilterCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MultiPickContactGroups;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mPublicAccountPickGroup:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->preFilterCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "title"

    aput-object v1, v0, v3

    .line 74
    const-string/jumbo v1, "summ_count"

    aput-object v1, v0, v4

    .line 71
    sput-object v0, Lcom/android/mms/ui/MultiPickContactGroups;->CONTACTS_GROUP_PROJECTION:[Ljava/lang/String;

    .line 81
    new-array v0, v4, [Ljava/lang/String;

    .line 82
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "data1"

    aput-object v1, v0, v3

    .line 81
    sput-object v0, Lcom/android/mms/ui/MultiPickContactGroups;->PHONE_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mMaxContactCount:I

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->preFilterCursor:Landroid/database/Cursor;

    .line 61
    return-void
.end method

.method private getOKString()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 193
    if-nez v2, :cond_2

    .line 194
    const-string/jumbo v0, "MultiPickContactGroups"

    const-string/jumbo v2, "cursor is null."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 205
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0701ac

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MultiPickContactGroups;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 196
    :cond_2
    const/4 v0, -0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v1

    .line 197
    :cond_3
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 199
    iget-object v4, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 200
    int-to-long v4, v0

    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v0, v4

    goto :goto_0
.end method

.method private getSortOrder(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 307
    packed-switch p1, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 309
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/MultiPickContactGroups;->CONTACTS_GROUP_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " asc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 311
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/mms/ui/MultiPickContactGroups;->PHONE_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " asc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUriToQuery(I)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 249
    packed-switch p1, :pswitch_data_0

    .line 255
    const/4 v0, 0x0

    return-object v0

    .line 251
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    return-object v0

    .line 253
    :pswitch_1
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    return-object v0

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initResource()V
    .locals 2

    .prologue
    .line 159
    const v0, 0x7f0f011d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getOKString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 162
    const v0, 0x7f0f011e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mCancelButton:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const v0, 0x7f0f0120

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v0, 0x7f0f011f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllLabel:Landroid/widget/TextView;

    .line 167
    return-void
.end method

.method private selectAll(Z)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 332
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 333
    if-nez v1, :cond_0

    .line 335
    return-void

    .line 338
    :cond_0
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 339
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 341
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 344
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    aput-object v2, v5, v0

    aput-object v3, v5, v6

    aput-object v4, v5, v7

    .line 345
    if-eqz p1, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 348
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getOKString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 354
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    move v1, v0

    .line 355
    :goto_1
    if-ge v1, v2, :cond_3

    .line 356
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 357
    const v3, 0x7f0f0123

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 358
    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 360
    :cond_3
    return-void
.end method


# virtual methods
.method public getProjectionForQuery(I)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    packed-switch p1, :pswitch_data_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 261
    :pswitch_0
    sget-object v0, Lcom/android/mms/ui/MultiPickContactGroups;->CONTACTS_GROUP_PROJECTION:[Ljava/lang/String;

    return-object v0

    .line 263
    :pswitch_1
    sget-object v0, Lcom/android/mms/ui/MultiPickContactGroups;->PHONE_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getSelectionArgsForQuery(I)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 291
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_0
    return-object v1

    .line 293
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 295
    const/4 v0, 0x0

    .line 296
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 297
    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_0

    .line 299
    :cond_1
    return-object v3

    .line 291
    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectionForQuery(I)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 287
    return-object v1

    .line 271
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string/jumbo v1, "mimetype=\'vnd.android.cursor.item/phone_v2\' AND  raw_contact_id IN (SELECT data.raw_contact_id FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE mimetype=\'vnd.android.cursor.item/group_membership\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AND ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 276
    if-lez v1, :cond_0

    .line 277
    const-string/jumbo v0, " OR "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_0
    const-string/jumbo v0, "data1"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "=?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 282
    :cond_1
    const-string/jumbo v0, "))"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 285
    :cond_2
    :pswitch_1
    const-string/jumbo v0, "sourceid != \'RCS\' OR sourceid IS NULL"

    return-object v0

    .line 269
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 220
    packed-switch v0, :pswitch_data_0

    .line 232
    :goto_0
    :pswitch_0
    return-void

    .line 222
    :pswitch_1
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->startQuery(I)V

    goto :goto_0

    .line 225
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->finish()V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->selectAll(Z)V

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x7f0f011d
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 132
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 133
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    const-string/jumbo v1, "max_contact_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mMaxContactCount:I

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.suntek.rcs.action.ACTION_PICK_CONTACTGROUPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mPublicAccountPickGroup:Z

    .line 142
    :cond_1
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->setContentView(I)V

    .line 143
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    .line 144
    new-instance v0, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;-><init>(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    .line 145
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 146
    new-instance v0, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;-><init>(Lcom/android/mms/ui/MultiPickContactGroups;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mQueryHandler:Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mContext:Landroid/content/Context;

    .line 148
    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->initResource()V

    .line 149
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiPickContactGroups;->startQuery(I)V

    .line 150
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mQueryHandler:Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mQueryHandler:Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mAdapter:Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiPickContactGroups$LocalGroupListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->preFilterCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->preFilterCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 245
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 246
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    const v0, 0x7f0f0123

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 172
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    .line 173
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 174
    if-eqz v1, :cond_2

    .line 176
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;

    .line 177
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 178
    iget-object v2, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_title:Ljava/lang/String;

    aput-object v2, v1, v3

    iget-object v0, v0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->group_count:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 179
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mOKButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/mms/ui/MultiPickContactGroups;->getOKString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 188
    return-void

    :cond_1
    move v1, v3

    .line 172
    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mChoiceSet:Landroid/os/Bundle;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public startQuery(I)V
    .locals 8

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups;->getUriToQuery(I)Landroid/net/Uri;

    move-result-object v3

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups;->getProjectionForQuery(I)[Ljava/lang/String;

    move-result-object v4

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups;->getSelectionForQuery(I)Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups;->getSelectionArgsForQuery(I)[Ljava/lang/String;

    move-result-object v6

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/MultiPickContactGroups;->mQueryHandler:Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;

    .line 322
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups;->getSortOrder(I)Ljava/lang/String;

    move-result-object v7

    .line 321
    const/4 v2, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/MultiPickContactGroups$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method
