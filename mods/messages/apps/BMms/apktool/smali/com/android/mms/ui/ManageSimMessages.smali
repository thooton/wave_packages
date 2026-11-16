.class public Lcom/android/mms/ui/ManageSimMessages;
.super Landroid/app/Activity;
.source "ManageSimMessages.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ManageSimMessages$1;,
        Lcom/android/mms/ui/ManageSimMessages$2;,
        Lcom/android/mms/ui/ManageSimMessages$QueryHandler;
    }
.end annotation


# static fields
.field private static final ICC1_URI:Landroid/net/Uri;

.field private static final ICC2_URI:Landroid/net/Uri;

.field private static final ICC_URI:Landroid/net/Uri;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mIccUri:Landroid/net/Uri;

.field private mIsDeleteAll:Z

.field private mIsQuery:Z

.field private mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMessage:Landroid/widget/TextView;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimList:Landroid/widget/ListView;

.field private mSlotId:I

.field private mState:I

.field private final simChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get1(Lcom/android/mms/ui/ManageSimMessages;)Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/ManageSimMessages;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/ManageSimMessages;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/ManageSimMessages;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsDeleteAll:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/ManageSimMessages;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsQuery:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/ManageSimMessages;Lcom/android/mms/ui/MessageListAdapter;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object p1
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->deleteAllFromSim()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/mms/ui/ManageSimMessages;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/ManageSimMessages;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC_URI:Landroid/net/Uri;

    .line 89
    const-string/jumbo v0, "content://sms/icc1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC1_URI:Landroid/net/Uri;

    .line 90
    const-string/jumbo v0, "content://sms/icc2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ManageSimMessages;->ICC2_URI:Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    .line 114
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 115
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 116
    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsDeleteAll:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsQuery:Z

    .line 136
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ManageSimMessages$1;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/os/Handler;)V

    .line 135
    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    .line 143
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$2;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3

    .prologue
    .line 610
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    const v1, 0x7f0701f1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 613
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 614
    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 615
    const v1, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 618
    return-void
.end method

.method private copyToPhoneMemory(Landroid/database/Cursor;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 469
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 468
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 470
    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string/jumbo v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 473
    const-string/jumbo v0, "sub_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 477
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->isIncomingMessage(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    .line 479
    const/4 v6, 0x1

    .line 478
    invoke-static/range {v0 .. v6}, Landroid/provider/Telephony$Sms$Inbox;->addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Z)Landroid/net/Uri;

    :goto_0
    move v0, v7

    .line 487
    :goto_1
    return v0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/provider/Telephony$Sms$Sent;->addMessage(ILandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 485
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 669
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 670
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 671
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 672
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 673
    const v1, 0x7f070371

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 674
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ManageSimMessages$6;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 680
    return-object v0
.end method

.method private deleteAllFromSim()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsDeleteAll:Z

    .line 515
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 517
    if-eqz v2, :cond_1

    .line 518
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 520
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v1

    .line 522
    :goto_0
    if-ge v0, v3, :cond_0

    .line 523
    iget-boolean v4, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsDeleteAll:Z

    if-eqz v4, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 529
    :cond_0
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$4;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsDeleteAll:Z

    .line 539
    return-void

    .line 526
    :cond_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 527
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ManageSimMessages;->deleteFromSim(Landroid/database/Cursor;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private deleteFromSim(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 506
    const-string/jumbo v0, "index_on_icc"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIccUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 509
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v2, v2}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->refreshMessageList()V

    .line 511
    return-void
.end method

.method private forwardMessage(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 912
    const-string/jumbo v0, "body"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 913
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 914
    const-string/jumbo v2, "exit_on_sent"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 915
    const-string/jumbo v2, "forwarded_message"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 916
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->startActivity(Landroid/content/Intent;)V

    .line 919
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 202
    const/16 v1, 0xea

    .line 201
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 203
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "slot"

    .line 204
    const/4 v2, -0x1

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    .line 205
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getIccUriBySubscription(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIccUri:Landroid/net/Uri;

    .line 206
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 207
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 208
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 498
    const-string/jumbo v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 497
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 500
    if-eq v1, v0, :cond_0

    .line 501
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 500
    :cond_0
    :goto_0
    return v0

    .line 501
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 283
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->updateState(I)V

    .line 284
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->startQuery()V

    .line 285
    return-void
.end method

.method private registerSimChangeObserver()V
    .locals 4

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 464
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mIccUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 463
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 465
    return-void
.end method

.method private replyMessage(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 922
    const-string/jumbo v0, "address"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 923
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 924
    const-string/jumbo v2, "reply_message"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 925
    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 926
    const-string/jumbo v0, "exit_on_sent"

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 927
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 928
    return-void
.end method

.method private showSimCapacityDialog()V
    .locals 4

    .prologue
    .line 586
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 587
    const v0, 0x7f0702ff

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 588
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 589
    const v0, 0x7f0701ac

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    const v0, 0x7f070300

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const v0, 0x7f070301

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMultiSimEnabledMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 597
    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-static {v0}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmsCapacityOnIcc()I

    move-result v0

    .line 603
    :goto_0
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 606
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 607
    return-void

    .line 600
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getSmsCapacityOnIcc()I

    move-result v0

    goto :goto_0
.end method

.method private startQuery()V
    .locals 8

    .prologue
    .line 268
    :try_start_0
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IsQuery :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsQuery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iccUri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ManageSimMessages;->mIccUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsQuery:Z

    if-eqz v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mIsQuery:Z

    .line 273
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ManageSimMessages;->mIccUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 4

    .prologue
    const v3, 0x7f070219

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 621
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 622
    return-void

    .line 625
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    .line 626
    packed-switch p1, :pswitch_data_0

    .line 647
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Invalid State"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    :goto_0
    return-void

    .line 628
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 630
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 631
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    .line 632
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 635
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 636
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 638
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 641
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 642
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    const v0, 0x7f070128

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setTitle(Ljava/lang/CharSequence;)V

    .line 644
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setProgressBarIndeterminateVisibility(Z)V

    goto :goto_0

    .line 626
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 661
    return-object p0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 302
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 310
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 332
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Bad menuInfo."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    const/4 v0, 0x0

    return v0

    .line 312
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->forwardMessage(Landroid/database/Cursor;)V

    .line 313
    return v2

    .line 315
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->replyMessage(Landroid/database/Cursor;)V

    .line 316
    return v2

    .line 319
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->copyToPhoneMemory(Landroid/database/Cursor;)Z

    .line 320
    return v2

    .line 323
    :pswitch_4
    new-instance v1, Lcom/android/mms/ui/ManageSimMessages$3;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ManageSimMessages$3;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/database/Cursor;)V

    .line 329
    const v0, 0x7f0701f8

    .line 323
    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 330
    return v2

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->requestWindowFeature(I)Z

    .line 174
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 175
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1, p0}, Lcom/android/mms/ui/ManageSimMessages$QueryHandler;-><init>(Lcom/android/mms/ui/ManageSimMessages;Landroid/content/ContentResolver;Lcom/android/mms/ui/ManageSimMessages;)V

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 176
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->setContentView(I)V

    .line 177
    const v0, 0x7f0f0158

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    .line 178
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSimList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 179
    const v0, 0x7f0f0159

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mMessage:Landroid/widget/TextView;

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 182
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 186
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ManageSimMessages;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->registerSimChangeObserver()V

    .line 191
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const/4 v0, 0x4

    const v1, 0x7f07013a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 292
    const/4 v0, 0x3

    const v1, 0x7f070106

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 294
    const v0, 0x7f070217

    .line 293
    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 295
    const/4 v0, 0x1

    const v1, 0x7f070218

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 296
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ManageSimMessages;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/ui/ManageSimMessages;->simChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 459
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 460
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ManageSimMessages;->setIntent(Landroid/content/Intent;)V

    .line 197
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->init()V

    .line 198
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 559
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 582
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 562
    :sswitch_0
    new-instance v0, Lcom/android/mms/ui/ManageSimMessages$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ManageSimMessages$5;-><init>(Lcom/android/mms/ui/ManageSimMessages;)V

    .line 568
    const v1, 0x7f0701f7

    .line 562
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ManageSimMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 572
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ManageSimMessages;->showSimCapacityDialog()V

    goto :goto_0

    .line 578
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ManageSimMessages;->finish()V

    goto :goto_0

    .line 559
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 440
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 441
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 442
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 543
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 546
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 547
    const v0, 0x7f0702ff

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 550
    :cond_0
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mState:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 551
    const v0, 0x7f070214

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 552
    const v1, 0x108003c

    .line 551
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 554
    :cond_1
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 431
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->blockingRemoveIccNotifications(Landroid/content/Context;I)V

    .line 435
    iget v0, p0, Lcom/android/mms/ui/ManageSimMessages;->mSlotId:I

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->getSimThreadByPhoneId(I)J

    move-result-wide v0

    .line 434
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 436
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 446
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 450
    return-void
.end method
