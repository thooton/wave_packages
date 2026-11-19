.class public Lcom/android/mms/ui/MessageTemplate;
.super Landroid/app/Activity;
.source "MessageTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageTemplate$1;,
        Lcom/android/mms/ui/MessageTemplate$2;,
        Lcom/android/mms/ui/MessageTemplate$3;,
        Lcom/android/mms/ui/MessageTemplate$4;,
        Lcom/android/mms/ui/MessageTemplate$5;,
        Lcom/android/mms/ui/MessageTemplate$6;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final TEMPLATE_MAX_LENGTH:I

.field private editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

.field private editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

.field private mAdapterContent:Landroid/widget/SimpleCursorAdapter;

.field private mEditDlg:Landroid/app/AlertDialog;

.field private mLvContent:Landroid/widget/ListView;

.field private mNewDlg:Landroid/app/AlertDialog;

.field private mNewSmsTemp:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mTemplateWatcher:Landroid/text/TextWatcher;

.field private menuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field public newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

.field private position:I


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/MessageTemplate;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/MessageTemplate;ILjava/lang/String;Z)Landroid/content/ContentValues;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageTemplate;->updateTemplates(ILjava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/MessageTemplate;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->deleteTemplateFromList(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/MessageTemplate;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/MessageTemplate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->deleteTemplate(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MessageTemplate;->DBG:Z

    .line 100
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    .line 101
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    .line 102
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 103
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    .line 105
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/mms/ui/MessageTemplate;->TEMPLATE_MAX_LENGTH:I

    .line 115
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$1;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->menuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 144
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$2;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    .line 143
    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

    .line 157
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$3;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    .line 196
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$4;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewSmsTemp:Landroid/widget/AdapterView$OnItemClickListener;

    .line 206
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$5;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    .line 205
    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    .line 410
    new-instance v0, Lcom/android/mms/ui/MessageTemplate$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageTemplate$6;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mTemplateWatcher:Landroid/text/TextWatcher;

    .line 93
    return-void
.end method

.method private createEditMessageDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 452
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 453
    const v1, 0x7f040017

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 454
    const v0, 0x7f0f0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 455
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mTemplateWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 457
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 458
    const v2, 0x7f07029a

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 457
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->editSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f0701ac

    .line 457
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 462
    new-instance v1, Lcom/android/mms/ui/MessageTemplate$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageTemplate$8;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    .line 461
    const v2, 0x7f0701ad

    .line 457
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 467
    return-void
.end method

.method private createNewMessageDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 430
    const v1, 0x7f040017

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 431
    const v0, 0x7f0f0086

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 432
    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mTemplateWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 433
    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 437
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 439
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    const v2, 0x7f07029b

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 439
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 442
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->newSmsTempClickOK:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x104000a

    .line 439
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 444
    new-instance v1, Lcom/android/mms/ui/MessageTemplate$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/MessageTemplate$7;-><init>(Lcom/android/mms/ui/MessageTemplate;)V

    .line 443
    const/high16 v2, 0x1040000

    .line 439
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 448
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 449
    return-void
.end method

.method private deleteTemplate(I)V
    .locals 3

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 508
    :goto_0
    if-eqz v0, :cond_1

    .line 509
    return-void

    .line 507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 510
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 511
    const v1, 0x1010355

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 512
    const v1, 0x7f070381

    .line 510
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 513
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 510
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 515
    new-instance v1, Lcom/android/mms/ui/MessageTemplate$9;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MessageTemplate$9;-><init>(Lcom/android/mms/ui/MessageTemplate;I)V

    .line 514
    const v2, 0x104000a

    .line 510
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 523
    return-void
.end method

.method private deleteTemplateFromList(I)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 526
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 528
    :cond_0
    const-string/jumbo v0, "MessageTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "id error. id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return v3

    .line 531
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.android.mms.MessageTemplateProvider/messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 532
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 533
    if-nez v0, :cond_2

    .line 534
    const-string/jumbo v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 535
    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_2

    .line 538
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 540
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private displayMaximumTemplateLimitReachToast()V
    .locals 2

    .prologue
    .line 486
    const v0, 0x7f07037c

    .line 487
    const/4 v1, 0x1

    .line 486
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 488
    return-void
.end method

.method private getMaximumTemplatesCount()I
    .locals 2

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getTotalTemplatesCount()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    return v0
.end method

.method private hideDialogSoftKeyboard(Landroid/app/Dialog;)V
    .locals 3

    .prologue
    .line 362
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const v0, 0x7f0f0086

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 365
    const-string/jumbo v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTemplate;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 366
    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 368
    :cond_0
    return-void
.end method

.method private resumePreviousDialog(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 397
    if-nez p1, :cond_0

    .line 398
    return-void

    .line 400
    :cond_0
    const-string/jumbo v0, "new_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    const-string/jumbo v0, "new_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;)V

    .line 404
    :cond_1
    const-string/jumbo v0, "edit_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    const-string/jumbo v0, "edit_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    .line 406
    const-string/jumbo v0, "edit_message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;)V

    .line 408
    :cond_2
    return-void
.end method

.method private updateTemplates(ILjava/lang/String;Z)Landroid/content/ContentValues;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 496
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 497
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v1, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 499
    if-eqz p3, :cond_0

    .line 500
    const-string/jumbo v1, "edited"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 502
    :cond_0
    const-string/jumbo v1, "timestamp"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 503
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 242
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->setContentView(I)V

    .line 247
    const v0, 0x7f0f00e5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    .line 248
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    const v1, 0x7f0f00e6

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MessageTemplate;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 249
    const-string/jumbo v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 250
    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 251
    if-eqz v3, :cond_1

    .line 252
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    .line 255
    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v1, "message"

    aput-object v1, v4, v7

    .line 256
    new-array v5, v6, [I

    const v1, 0x1020014

    aput v1, v5, v7

    .line 253
    const v2, 0x1090003

    move-object v1, p0

    .line 252
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    .line 257
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->editSMSTempClick:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 266
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageTemplate;->resumePreviousDialog(Landroid/os/Bundle;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 269
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 270
    return-void

    .line 262
    :cond_1
    const-string/jumbo v0, "MessageTemplate"

    const-string/jumbo v1, "Get message teamplate from content provider failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 373
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 375
    :cond_0
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    .line 376
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 378
    :cond_1
    iput-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    .line 379
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 471
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 473
    const/4 v0, 0x0

    return v0

    .line 474
    :cond_0
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 476
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->deleteTemplate(I)V

    .line 478
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 320
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 358
    return v6

    .line 322
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v1}, Landroid/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 324
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 325
    const-string/jumbo v0, "message"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->createEditMessageDialog(Ljava/lang/String;)V

    .line 327
    return v4

    .line 329
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 330
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->deleteTemplate(I)V

    .line 331
    return v4

    .line 333
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 334
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mAdapterContent:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 335
    const-string/jumbo v2, "message"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 337
    const-string/jumbo v3, "sms_body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/MessageTemplate;->startActivity(Landroid/content/Intent;)V

    .line 339
    const-string/jumbo v2, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 340
    invoke-direct {p0, v1, v0, v6}, Lcom/android/mms/ui/MessageTemplate;->updateTemplates(ILjava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 341
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 342
    return v4

    .line 344
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTemplate;->getMaximumTemplatesCount()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 345
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTemplate;->getMaximumTemplatesCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/mms/ui/MessageTemplate;->getTotalTemplatesCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 346
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;)V

    .line 353
    :goto_0
    return v4

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageTemplate;->displayMaximumTemplateLimitReachToast()V

    goto :goto_0

    .line 351
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageTemplate;->createNewMessageDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->finish()V

    .line 356
    return v4

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0f017b -> :sswitch_1
        0x7f0f01a1 -> :sswitch_0
        0x7f0f01a2 -> :sswitch_2
        0x7f0f01a3 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 280
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->unregisterForContextMenu(Landroid/view/View;)V

    .line 282
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const v5, 0x7f0f01a1

    const v4, 0x7f0f017b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 301
    :goto_0
    if-eqz v0, :cond_1

    .line 302
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 303
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    :goto_1
    const v3, 0x7f0f01a2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 309
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageTemplate;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 310
    xor-int/lit8 v0, v0, 0x1

    .line 309
    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 315
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 300
    goto :goto_0

    .line 305
    :cond_1
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 306
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 313
    :cond_2
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mLvContent:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->registerForContextMenu(Landroid/view/View;)V

    .line 276
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f0f0086

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 385
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    const-string/jumbo v1, "new_message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 390
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    const-string/jumbo v1, "edit_message"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string/jumbo v0, "edit_pos"

    iget v1, p0, Lcom/android/mms/ui/MessageTemplate;->position:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 288
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mNewDlg:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->hideDialogSoftKeyboard(Landroid/app/Dialog;)V

    .line 289
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate;->mEditDlg:Landroid/app/AlertDialog;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageTemplate;->hideDialogSoftKeyboard(Landroid/app/Dialog;)V

    .line 290
    return-void
.end method
