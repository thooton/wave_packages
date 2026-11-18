.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/ListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$1;,
        Lcom/android/mms/ui/ConversationList$2;,
        Lcom/android/mms/ui/ConversationList$3;,
        Lcom/android/mms/ui/ConversationList$4;,
        Lcom/android/mms/ui/ConversationList$5;,
        Lcom/android/mms/ui/ConversationList$6;,
        Lcom/android/mms/ui/ConversationList$7;,
        Lcom/android/mms/ui/ConversationList$8;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;,
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    }
.end annotation


# static fields
.field private static GROUP_CHAT:Ljava/lang/String;

.field private static GROUP_CHAT_ID:Ljava/lang/String;

.field private static NUMBERS:Ljava/lang/String;

.field private static SELECT_THREAD_ID:Ljava/lang/String;

.field private static mIsRcsEnabled:Z

.field private static mLastDeletedThread:J


# instance fields
.field private groupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

.field private mComposeClickHandler:Landroid/view/View$OnClickListener;

.field private mComposeDisabledToast:Landroid/widget/Toast;

.field private mComposeMessageButton:Landroid/widget/ImageButton;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationListExt:Lcom/android/mms/ext/ConversationListExt;

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDeletingRunnable:Ljava/lang/Runnable;

.field private mDoOnceAfterFirstQuery:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilterSubId:Ljava/lang/Integer;

.field private mHandler:Landroid/os/Handler;

.field private mHasNormalThreads:Z

.field private mHasNotificationThreads:Z

.field private mIsMarkAllAsReadEnabled:Z

.field private mIsSmsEnabled:Z

.field private mIsTopConversation:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListViewHeader:Landroid/view/ViewGroup;

.field private mMultiChoiceMode:Z

.field private mNotificationContent:Landroid/view/ViewGroup;

.field private mNotificationDate:Landroid/widget/TextView;

.field private mNotificationIcon:Landroid/widget/ImageView;

.field private mNotificationLabel:Landroid/widget/TextView;

.field private mNotificationSubject:Landroid/widget/TextView;

.field private mNotificationView:Landroid/view/ViewGroup;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field public mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field private mSaveOrBackProgressDialog:Landroid/app/ProgressDialog;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I

.field private mShowProgressDialogRunnable:Ljava/lang/Runnable;

.field private mSmsPromoBannerView:Landroid/view/View;

.field private mStartSaveProgressDialog:Landroid/app/ProgressDialog;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mUnreadConvCount:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/ConversationList;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeDisabledToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic -get10()J
    .locals 2

    sget-wide v0, Lcom/android/mms/ui/ConversationList;->mLastDeletedThread:J

    return-wide v0
.end method

.method static synthetic -get11(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationSubject:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/mms/ui/ConversationList;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/mms/ui/ConversationList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/mms/ui/ConversationList;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeletingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ConversationList;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mComposeDisabledToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mHasNormalThreads:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mHasNotificationThreads:Z

    return p1
.end method

.method static synthetic -set6(J)J
    .locals 0

    sput-wide p0, Lcom/android/mms/ui/ConversationList;->mLastDeletedThread:J

    return-wide p0
.end method

.method static synthetic -set9(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->formatTextToBold(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createNewGroupChat()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->updateEmptyView()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->updateNotificationView(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->selectComposeAction()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/mms/ui/ConversationList;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->toggleNotificationGroup(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/mms/ui/ConversationList;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->unbindListeners(Ljava/util/Collection;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 175
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/mms/ui/ConversationList;->mLastDeletedThread:J

    .line 206
    const-string/jumbo v0, "selectThreadId"

    sput-object v0, Lcom/android/mms/ui/ConversationList;->SELECT_THREAD_ID:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "numbers"

    sput-object v0, Lcom/android/mms/ui/ConversationList;->NUMBERS:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "groupChatId"

    sput-object v0, Lcom/android/mms/ui/ConversationList;->GROUP_CHAT_ID:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "GroupChat"

    sput-object v0, Lcom/android/mms/ui/ConversationList;->GROUP_CHAT:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 176
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mMultiChoiceMode:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mHasNormalThreads:Z

    .line 178
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mHasNotificationThreads:Z

    .line 189
    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSaveOrBackProgressDialog:Landroid/app/ProgressDialog;

    .line 190
    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mStartSaveProgressDialog:Landroid/app/ProgressDialog;

    .line 192
    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mFilterSubId:Ljava/lang/Integer;

    .line 203
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsTopConversation:Z

    .line 217
    new-instance v0, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 218
    new-instance v1, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    .line 217
    invoke-direct {v0, v1}, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;-><init>(Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->groupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 264
    new-instance v0, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeClickHandler:Landroid/view/View$OnClickListener;

    .line 535
    new-instance v0, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;)V

    .line 534
    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 1142
    new-instance v0, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    .line 1141
    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1313
    new-instance v0, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1415
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 1749
    new-instance v0, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeletingRunnable:Ljava/lang/Runnable;

    .line 1756
    new-instance v0, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mShowProgressDialogRunnable:Ljava/lang/Runnable;

    .line 129
    return-void
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 4

    .prologue
    .line 1246
    const/4 v0, 0x0

    .line 1247
    const-wide/16 v2, -0x1

    cmp-long v1, p0, v2

    if-eqz v1, :cond_0

    .line 1248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1249
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 1252
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1279
    const v0, 0x7f040013

    invoke-static {p3, v0, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1280
    const v0, 0x7f0f0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1282
    if-nez p1, :cond_0

    .line 1283
    const v2, 0x7f0701f4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1291
    :goto_0
    const v0, 0x7f0f0081

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1292
    if-nez p2, :cond_1

    .line 1293
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1304
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1305
    const v2, 0x7f0701f1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1307
    const v2, 0x7f0701fa

    .line 1305
    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1308
    const v2, 0x7f0701ad

    .line 1305
    invoke-virtual {v0, v2, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1311
    return-void

    .line 1286
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    .line 1287
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    .line 1288
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/high16 v5, 0x7f0d0000

    .line 1287
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1295
    :cond_1
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1296
    new-instance v2, Lcom/android/mms/ui/ConversationList$16;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/ConversationList$16;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1263
    const/16 v0, 0x70a

    .line 1262
    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 1264
    return-void
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1127
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    const-string/jumbo v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    :goto_0
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1138
    return-object v0

    .line 1132
    :cond_0
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1133
    const-string/jumbo v1, "phone_type"

    .line 1134
    const/4 v2, 0x2

    .line 1133
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewGroupChat()V
    .locals 2

    .prologue
    .line 2037
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.suntek.rcs.action.CREATR_GROUP_CHAT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 2039
    return-void
.end method

.method private createProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1740
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1741
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1742
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1743
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1744
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1745
    const v1, 0x7f070129

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1746
    return-object v0
.end method

.method private formatTextToBold(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1713
    if-eqz p1, :cond_0

    .line 1714
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1715
    sget-object v1, Lcom/android/mms/ui/ConversationListItem;->STYLE_BOLD:Landroid/text/style/StyleSpan;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 1716
    const/16 v4, 0x11

    .line 1715
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1718
    :cond_0
    return-object v0
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 543
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 546
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 547
    return-void
.end method

.method private initSmsPromoBanner()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 551
    invoke-static {p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 560
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 561
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    move-object v2, v0

    .line 564
    :goto_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 567
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const v5, 0x7f0f0015

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const v2, 0x7f0f0016

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 573
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 574
    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v5, v6

    .line 573
    const v1, 0x7f0702c9

    invoke-virtual {v2, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 575
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ConversationList$10;

    invoke-direct {v1, p0, v4}, Lcom/android/mms/ui/ConversationList$10;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    :goto_1
    return-void

    .line 562
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    move-object v2, v0

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    new-instance v1, Lcom/android/mms/ui/ConversationList$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$11;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 562
    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method private invisibleNotificationGroup()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 422
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    :cond_1
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 2009
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2010
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    return-void
.end method

.method private selectComposeAction()V
    .locals 3

    .prologue
    .line 2015
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2016
    const v1, 0x7f07011a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2017
    new-instance v1, Lcom/android/mms/ui/ConversationList$18;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$18;-><init>(Lcom/android/mms/ui/ConversationList;)V

    const v2, 0x7f06001b

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2030
    const v1, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2031
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 2032
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 2033
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2034
    return-void
.end method

.method private setupActionBar()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    .line 520
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 522
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 523
    const v2, 0x7f04000c

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 524
    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 527
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    .line 529
    const v3, 0x800015

    .line 527
    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 526
    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 531
    const v1, 0x7f0f0072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    .line 532
    return-void
.end method

.method private stopAsyncQuery()V
    .locals 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->cancelOperation(I)V

    .line 790
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a6

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->cancelOperation(I)V

    .line 792
    :cond_0
    return-void
.end method

.method private toggleNotificationGroup(Z)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 452
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 453
    if-eqz p1, :cond_3

    const-string/jumbo v2, "pref_key_seperate_notification_msg"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 454
    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 453
    if-eqz v0, :cond_3

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListViewHeader:Landroid/view/ViewGroup;

    .line 457
    const v1, 0x7f0f0073

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 458
    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListViewHeader:Landroid/view/ViewGroup;

    .line 462
    const v1, 0x7f0f007a

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 463
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/mms/ui/ConversationList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$9;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 472
    const v1, 0x7f0f007c

    .line 471
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationContent:Landroid/view/ViewGroup;

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 474
    const v1, 0x7f0f007b

    .line 473
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationIcon:Landroid/widget/ImageView;

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 476
    const v1, 0x7f0f007d

    .line 475
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationLabel:Landroid/widget/TextView;

    .line 477
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 478
    const v1, 0x7f0f006b

    .line 477
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationDate:Landroid/widget/TextView;

    .line 479
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationView:Landroid/view/ViewGroup;

    .line 480
    const v1, 0x7f0f003b

    .line 479
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationSubject:Landroid/widget/TextView;

    .line 482
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->visibleNotificationGroup()V

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->invisibleNotificationGroup()V

    goto :goto_0
.end method

.method private unbindListeners(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 734
    instance-of v2, v0, Lcom/android/mms/ui/ConversationListItem;

    if-eqz v2, :cond_0

    .line 735
    check-cast v0, Lcom/android/mms/ui/ConversationListItem;

    .line 736
    if-nez p1, :cond_1

    .line 737
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    .line 732
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 738
    if-eqz v2, :cond_0

    .line 740
    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListItem;->unbind()V

    goto :goto_1

    .line 744
    :cond_2
    return-void
.end method

.method private updateEmptyView()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1723
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1724
    const-string/jumbo v1, "pref_key_seperate_notification_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1725
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mHasNotificationThreads:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mHasNormalThreads:Z

    if-eqz v0, :cond_1

    .line 1726
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1737
    :goto_0
    return-void

    .line 1728
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1731
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mHasNormalThreads:Z

    if-eqz v0, :cond_3

    .line 1732
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1734
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateNotificationView(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 1624
    new-instance v0, Lcom/android/mms/ui/ConversationList$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$17;-><init>(Lcom/android/mms/ui/ConversationList;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/database/Cursor;

    .line 1708
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 1624
    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1709
    return-void
.end method

.method private visibleNotificationGroup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 434
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationContent:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationContent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNotificationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    :cond_1
    return-void
.end method


# virtual methods
.method public createNewMessage()V
    .locals 2

    .prologue
    .line 1118
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 1119
    return-void
.end method

.method protected initCreateNewMessageButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1089
    const v0, 0x7f0f007f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1090
    const v0, 0x7f0f0096

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeMessageButton:Landroid/widget/ImageButton;

    .line 1091
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeMessageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeMessageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1093
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeMessageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 1094
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mComposeMessageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/mms/ui/ConversationList$15;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$15;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1115
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 1217
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1219
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1175
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1176
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1177
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1178
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1179
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1204
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 1181
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 1185
    :pswitch_1
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 1189
    :pswitch_2
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1190
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1191
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1192
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1196
    :pswitch_3
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1197
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 287
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 288
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    return-void

    :cond_0
    # PERF(inbox startup): checkPermissionsIfNeeded already initializes the
    # process-wide recipient cache via MmsApp and Contact. Keep that warm cache.

    .line 293
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    .line 294
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 295
    const v1, 0x7f09001d

    .line 294
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsMarkAllAsReadEnabled:Z

    .line 297
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsMarkAllAsReadEnabled:Z

    if-eqz v0, :cond_1

    .line 298
    new-instance v0, Lcom/android/mms/ext/ConversationListExt;

    .line 299
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 298
    invoke-direct {v0, v1}, Lcom/android/mms/ext/ConversationListExt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationListExt:Lcom/android/mms/ext/ConversationListExt;

    .line 301
    :cond_1
    const v0, 0x7f040012

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 304
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    check-cast v0, Landroid/view/LayoutInflater;

    .line 306
    const v1, 0x7f04000d

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListViewHeader:Landroid/view/ViewGroup;

    .line 309
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 311
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 314
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    .line 315
    return-void

    .line 318
    :cond_2
    const v0, 0x7f0f0014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    .line 319
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->initCreateNewMessageButton()V

    .line 321
    new-instance v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 323
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 324
    const v0, 0x7f0f007e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v0, :cond_3

    .line 331
    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsUtils;->addPublicAccountItem(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 332
    invoke-static {p0, v1}, Lcom/android/mms/rcs/RcsUtils;->addNotificationItem(Landroid/content/Context;Landroid/widget/ListView;)V

    .line 335
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 341
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->setupActionBar()V

    .line 343
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->createProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 345
    const v0, 0x7f070102

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->setTitle(I)V

    .line 347
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    # FIX(retention): never scan for limits or start the old warning.
    .line 355
    if-eqz p1, :cond_7

    .line 356
    const-string/jumbo v0, "last_list_pos"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 358
    const-string/jumbo v0, "last_list_offset"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 363
    :goto_0
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->pupConnectWifiNotification(Landroid/content/Context;)V

    .line 364
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v0, :cond_6

    .line 365
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->groupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 366
    const-string/jumbo v2, "com.suntek.mway.rcs.app.service.ACTION_GROUP_CHAT_MANAGE_NOTIFY"

    .line 365
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    :cond_6
    return-void

    .line 360
    :cond_7
    iput v3, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 361
    iput v4, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 798
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    return v5

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v2, 0x7f0e0001

    invoke-virtual {v0, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 803
    const v0, 0x7f0f0193

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_1

    .line 805
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 808
    :cond_1
    const v0, 0x7f0f0190

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 809
    if-eqz v2, :cond_3

    .line 811
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f09002a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 813
    if-eqz v0, :cond_2

    .line 814
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 815
    const-string/jumbo v4, "com.android.cellbroadcastreceiver"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 816
    const/4 v4, 0x2

    .line 815
    if-ne v3, v4, :cond_2

    move v0, v1

    .line 823
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 824
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 828
    :cond_3
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v0, :cond_5

    .line 829
    const v0, 0x7f0f0197

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 830
    const v1, 0x7f0f0198

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 831
    if-eqz v0, :cond_4

    .line 832
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 834
    :cond_4
    if-eqz v1, :cond_5

    .line 835
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 839
    :cond_5
    return v5

    .line 820
    :catch_0
    move-exception v0

    move v0, v1

    .line 821
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 714
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 716
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 720
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->removeDialogs()V

    .line 722
    :try_start_0
    sget-boolean v0, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->groupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/data/Contact;->clearListener()V

    .line 729
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDraftChanged(JZ)V
    .locals 3

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$13;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 758
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1223
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mMultiChoiceMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SearchActivityExtend;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1226
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 1228
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1231
    :cond_1
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2

    .line 1232
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->invalidateOptionsMenu()V

    .line 1235
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1036
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1037
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-gez v1, :cond_1

    .line 1038
    :cond_0
    return-void

    .line 1040
    :cond_1
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1046
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "select_conversation"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1047
    sget-boolean v4, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v4, :cond_5

    .line 1048
    if-nez v1, :cond_3

    .line 1049
    sget-boolean v1, Lcom/android/mms/ui/ConversationList;->mIsRcsEnabled:Z

    if-eqz v1, :cond_2

    .line 1050
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 1051
    if-eqz v0, :cond_2

    .line 1053
    :try_start_0
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->isGroupChatValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1054
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/ConversationList$14;

    invoke-direct {v4, p0, v0}, Lcom/android/mms/ui/ConversationList$14;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :cond_2
    :goto_0
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 1086
    :goto_1
    return-void

    .line 1065
    :catch_0
    move-exception v0

    .line 1066
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1072
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1073
    sget-object v4, Lcom/android/mms/ui/ConversationList;->SELECT_THREAD_ID:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1074
    sget-object v2, Lcom/android/mms/ui/ConversationList;->NUMBERS:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1075
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 1076
    if-eqz v0, :cond_4

    .line 1077
    sget-object v2, Lcom/android/mms/ui/ConversationList;->GROUP_CHAT_ID:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1078
    sget-object v2, Lcom/android/mms/ui/ConversationList;->GROUP_CHAT:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1080
    :cond_4
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->setResult(ILandroid/content/Intent;)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    goto :goto_1

    .line 1084
    :cond_5
    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 665
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 937
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1022
    :pswitch_0
    return v2

    .line 939
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/SearchConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 940
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 941
    return v2

    .line 944
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3, v0}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    .line 1024
    :cond_0
    :goto_0
    return v4

    .line 947
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 948
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 951
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MailBoxMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 952
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 953
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->setMailboxMode(Z)V

    .line 954
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->finish()V

    goto :goto_0

    .line 957
    :pswitch_5
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_0

    .line 960
    :pswitch_6
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->showMemoryStatusDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 964
    :pswitch_7
    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getCellBroadcastIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :goto_1
    return v2

    .line 965
    :catch_0
    move-exception v0

    .line 966
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "ActivityNotFoundException for CellBroadcastListActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 970
    :pswitch_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 971
    const-string/jumbo v1, "favorited"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 972
    invoke-virtual {p0, v0, v3}, Lcom/android/mms/ui/ConversationList;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 975
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 976
    const-string/jumbo v1, "com.suntek.mway.rcs.ACTION_LUNCHER_BACKUP_RESOTORE_ALL_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 980
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsMarkAllAsReadEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationListExt:Lcom/android/mms/ext/ConversationListExt;

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationListExt:Lcom/android/mms/ext/ConversationListExt;

    invoke-virtual {v0}, Lcom/android/mms/ext/ConversationListExt;->initQueryForUnreadThreads()V

    goto :goto_0

    .line 985
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    goto :goto_0

    .line 988
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemId()J

    move-result-wide v0

    .line 989
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 990
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 995
    :pswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationMultiSelectList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 996
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1000
    :pswitch_e
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1001
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1002
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1004
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1005
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1006
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1012
    :pswitch_f
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1013
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1014
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1015
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1016
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 937
    :pswitch_data_0
    .packed-switch 0x7f0f0188
        :pswitch_b
        :pswitch_f
        :pswitch_e
        :pswitch_1
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 380
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 383
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 389
    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 390
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 391
    if-nez v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 392
    return-void

    .line 391
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 846
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    return v5

    .line 849
    :cond_0
    const v0, 0x7f0f0195

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 850
    if-eqz v0, :cond_1

    .line 851
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 854
    :cond_1
    const v0, 0x7f0f0188

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 855
    if-eqz v0, :cond_2

    .line 856
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 859
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 860
    const v0, 0x7f0f0192

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_3

    .line 862
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 864
    :cond_3
    const v0, 0x7f0f0194

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 865
    if-eqz v0, :cond_4

    .line 866
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 871
    :cond_4
    const v0, 0x7f0f0196

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 872
    if-eqz v0, :cond_5

    .line 873
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 876
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsMarkAllAsReadEnabled:Z

    if-eqz v0, :cond_6

    .line 877
    const v0, 0x7f0f018f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_6

    .line 880
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 881
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 882
    if-lez v1, :cond_6

    .line 883
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 890
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    if-ltz v1, :cond_7

    .line 892
    invoke-static {p0, v0}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 895
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v5, :cond_7

    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 896
    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 895
    if-eqz v0, :cond_7

    .line 898
    const v0, 0x7f0f0189

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 899
    const v0, 0x7f0f018a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 900
    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 901
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 902
    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 903
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 913
    :cond_7
    :goto_1
    const v0, 0x7f0f018d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 914
    const v1, 0x7f0f018c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 915
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_9

    .line 916
    if-eqz v1, :cond_8

    .line 917
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 919
    :cond_8
    if-eqz v0, :cond_9

    .line 920
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 923
    :cond_9
    return v5

    .line 886
    :cond_a
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 906
    :cond_b
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    .line 907
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 908
    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 492
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 493
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-eq v0, v1, :cond_0

    .line 494
    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    .line 495
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->invalidateOptionsMenu()V

    .line 507
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsSmsEnabled:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsPromoDismissed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 514
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    if-nez v0, :cond_2

    .line 515
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 517
    :cond_2
    return-void

    .line 510
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initSmsPromoBanner()V

    .line 511
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSmsPromoBannerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 374
    const-string/jumbo v0, "last_list_pos"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    const-string/jumbo v0, "last_list_offset"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 376
    return-void
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 930
    const/4 v0, 0x0

    return v0

    .line 932
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 669
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 671
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 672
    const/16 v1, 0xef

    .line 671
    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 674
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDoOnceAfterFirstQuery:Z

    .line 678
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 693
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 696
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 702
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->stopAsyncQuery()V

    .line 704
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 706
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->unbindListeners(Ljava/util/Collection;)V

    .line 710
    return-void
.end method

.method public openThread(J)V
    .locals 1

    .prologue
    .line 1122
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    .line 1123
    return-void
.end method

.method public startAsyncQuery()V
    .locals 3

    .prologue
    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0701fd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    if-nez v0, :cond_1

    .line 766
    new-instance v0, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const-string/jumbo v1, "_id IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    const/16 v2, 0x6a5

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 770
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 771
    const-string/jumbo v1, "pref_key_seperate_notification_msg"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 773
    const-string/jumbo v1, "notification=0 and _id IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    .line 772
    const/16 v2, 0x6a5

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 775
    const-string/jumbo v1, "notification=1 and _id IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    .line 774
    const/16 v2, 0x6a7

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 780
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const-string/jumbo v1, "read=0 and _id IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    const/16 v2, 0x6a6

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 785
    :goto_1
    return-void

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const-string/jumbo v1, "_id IN (SELECT DISTINCT thread_id FROM sms where thread_id NOT NULL UNION SELECT DISTINCT thread_id FROM pdu where thread_id NOT NULL)"

    const/16 v2, 0x6a5

    invoke-static {v0, v2, v1}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 778
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationList;->toggleNotificationGroup(Z)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 782
    :catch_0
    move-exception v0

    .line 783
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1
.end method
