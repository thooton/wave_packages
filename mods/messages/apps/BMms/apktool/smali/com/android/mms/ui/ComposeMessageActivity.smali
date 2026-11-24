.class public Lcom/android/mms/ui/ComposeMessageActivity;
.super Landroid/app/Activity;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ComposeMessageActivity$10;,
        Lcom/android/mms/ui/ComposeMessageActivity$11;,
        Lcom/android/mms/ui/ComposeMessageActivity$12;,
        Lcom/android/mms/ui/ComposeMessageActivity$13;,
        Lcom/android/mms/ui/ComposeMessageActivity$14;,
        Lcom/android/mms/ui/ComposeMessageActivity$15;,
        Lcom/android/mms/ui/ComposeMessageActivity$16;,
        Lcom/android/mms/ui/ComposeMessageActivity$17;,
        Lcom/android/mms/ui/ComposeMessageActivity$18;,
        Lcom/android/mms/ui/ComposeMessageActivity$19;,
        Lcom/android/mms/ui/ComposeMessageActivity$1;,
        Lcom/android/mms/ui/ComposeMessageActivity$20;,
        Lcom/android/mms/ui/ComposeMessageActivity$21;,
        Lcom/android/mms/ui/ComposeMessageActivity$22;,
        Lcom/android/mms/ui/ComposeMessageActivity$23;,
        Lcom/android/mms/ui/ComposeMessageActivity$24;,
        Lcom/android/mms/ui/ComposeMessageActivity$25;,
        Lcom/android/mms/ui/ComposeMessageActivity$26;,
        Lcom/android/mms/ui/ComposeMessageActivity$27;,
        Lcom/android/mms/ui/ComposeMessageActivity$2;,
        Lcom/android/mms/ui/ComposeMessageActivity$3;,
        Lcom/android/mms/ui/ComposeMessageActivity$4;,
        Lcom/android/mms/ui/ComposeMessageActivity$5;,
        Lcom/android/mms/ui/ComposeMessageActivity$6;,
        Lcom/android/mms/ui/ComposeMessageActivity$7;,
        Lcom/android/mms/ui/ComposeMessageActivity$8;,
        Lcom/android/mms/ui/ComposeMessageActivity$9;,
        Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;,
        Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;,
        Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;,
        Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;,
        Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;
    }
.end annotation


# static fields
.field private static BROADCAST_DATA_SCHEME:Ljava/lang/String;

.field private static BYTE_TO_KB:J

.field private static FAVOURITE_MSG:I

.field private static FILE_PATH_COLUMN:Ljava/lang/String;

.field private static MAIL_TOKEN:Ljava/lang/String;

.field private static MMS_LIMIT_SIZE:J

.field private static RECIPIENT_COUNT_LIMIT:Ljava/lang/String;

.field private static final SUBJECT_MAX_LENGTH:I

.field private static TEL_TOKEN:Ljava/lang/String;

.field private static URI_HOST_MEDIA:Ljava/lang/String;

.field private static URI_SCHEME_CONTENT:Ljava/lang/String;

.field private static mActionBarColor:I

.field private static final mAudioUri:Ljava/lang/String;

.field private static final mImageUri:Ljava/lang/String;

.field private static mNoSpace:Z

.field private static mRcsShareVcard:Z

.field private static mRcsShareVcardAddNumber:Z

.field private static mSendContactColor:I

.field private static final mVideoUri:Ljava/lang/String;

.field private static sDefaultContactImage:Landroid/graphics/drawable/Drawable;

.field private static sEmptyContactList:Lcom/android/mms/data/ContactList;

.field private static sPrimaryColorDark:I


# instance fields
.field private final MAX_DURATION:I

.field private final POST_DELAY:I

.field private isAvoidingSavingDraft:Z

.field private isDisposeImage:Z

.field private isLocked:Z

.field lastProgress:J

.field private mAccentColor:I

.field private mAccentColorLoaded:Z

.field private mAddAttachmentButton:Landroid/widget/ImageButton;

.field private mAddAttachmentHandler:Landroid/os/Handler;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAirplaneModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mAirplaneModeFilter:Landroid/content/IntentFilter;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

.field private mAttachmentPager:Landroid/support/v4/view/ViewPager;

.field private mAttachmentPagerAdapter:Lcom/android/mms/ui/AttachmentPagerAdapter;

.field private final mAttachmentPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mAttachmentSelector:Landroid/view/View;

.field private mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

.field private mAvailabilityfetchHandler:Landroid/os/Handler;

.field private mAvatarDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackView:Landroid/widget/ImageButton;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

.field private mBasicApi:Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

.field private mBottomPanel:Landroid/view/View;

.field private mButtonEmoj:Landroid/widget/ImageButton;

.field private mCallback:Lorg/codeaurora/presenceserv/IPresenceServiceCB;

.field private mCapabilityApi:Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;

.field private mClearButton:Landroid/widget/ImageButton;

.field private mCloudFileReceiver:Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mConvsertionSelect:Z

.field private mCopyToSimWithToastHandler:Landroid/os/Handler;

.field private mCreateNewMessageFromConversationList:Z

.field private mCurPlayUrl:Ljava/lang/String;

.field private mCurrentAttachmentPager:I

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mDebugRecipients:Ljava/lang/String;

.field private mEditText:Landroid/widget/EditText;

.field private mEmotionDownloadReceiver:Landroid/content/BroadcastReceiver;

.field private mEnablePresence:Z

.field private mEnableSelect:Z

.field private mExistsRecipientsCount:I

.field private mFileTranferReceiver:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

.field private mForwardMessageMode:Z

.field private mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

.field private mGroupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mHasBurnCapability:Z

.field private final mHttpProgressFilter:Landroid/content/IntentFilter;

.field private final mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

.field private mInAsyncAddAttathProcess:Z

.field private mIndicatorForSimMmsFir:Landroid/widget/ImageView;

.field private mIndicatorForSimMmsSec:Landroid/widget/ImageView;

.field private mIndicatorForSimSmsFir:Landroid/widget/ImageView;

.field private mIndicatorForSimSmsSec:Landroid/widget/ImageView;

.field private mInvalidRecipientDialog:Landroid/app/AlertDialog;

.field private mIsAirplaneModeOn:Z

.field private mIsAttachmentErrorOnSend:Z

.field private mIsBound:Z

.field private mIsBurnMessage:Z

.field private mIsFilterContactsByEmail:Z

.field private mIsKeyboardOpen:Z

.field private mIsLandscape:Z

.field private mIsNoShortcodeGroupMsgSupported:Z

.field private mIsPickingContact:Z

.field private mIsProcessPickedRecipients:Z

.field private mIsRTL:Z

.field private mIsRcsEnabled:Z

.field private mIsReplaceAttachment:Z

.field private mIsRunning:Z

.field private mIsSmsEnabled:Z

.field private mLastMessageId:J

.field private mLastRecipientCount:I

.field private mLastSmoothScrollPosition:I

.field private mLoadingAccentColor:Z

.field private mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerPrepared:Z

.field private final mMediaStateReceiver:Landroid/content/BroadcastReceiver;

.field private mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

.field private mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

.field private mMessageListItem:Lcom/android/mms/ui/MessageListItem;

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMessagesAndDraftLoaded:Z

.field private mMsgDetailDialog:Landroid/app/AlertDialog;

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMsgListView:Lcom/android/mms/ui/MessageListView;

.field private mMsimDialog:Landroid/app/AlertDialog;

.field private mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

.field private final mMultiAttachmentEditorHandler:Landroid/os/Handler;

.field private mMultiAttachmentEditorScrollView:Landroid/view/View;

.field private mObjectLock:Ljava/lang/Object;

.field private mProfileApi:Lcom/suntek/mway/rcs/client/api/profile/ProfileApi;

.field private mRcsAttachmentUri:Landroid/net/Uri;

.field private mRcsBurnAfterReadMessageCount:I

.field private mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

.field private mRcsForwardId:J

.field private mRcsForwardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsLargeImagePath:Ljava/lang/String;

.field private mRcsStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mRcsThumbnailLayout:Landroid/view/View;

.field private mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

.field private mRecipientsPickList:Lcom/android/mms/data/ContactList;

.field private mRecipientsPicker:Landroid/widget/ImageButton;

.field private mRecipientsPickerGroups:Landroid/widget/ImageButton;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mReplyMessageMode:Z

.field private mResendSmsRecipient:Ljava/lang/String;

.field mResetMessageRunnable:Ljava/lang/Runnable;

.field mResetRcsMessageRunnable:Ljava/lang/Runnable;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mResizeImageCount:I

.field private final mSIMStatusChangeFilter:Landroid/content/IntentFilter;

.field private mSavedScrollPosition:I

.field private mScrollOnSend:Z

# PERF(history)
.field mWaveHistory:Ljava/lang/Object;

.field private mSendAfterResize:Z

.field private mSendButtonMms:Landroid/widget/ImageButton;

.field private mSendButtonMmsText:Landroid/widget/TextView;

.field private mSendButtonMmsViewSec:Landroid/widget/TextView;

.field private mSendButtonSms:Landroid/widget/ImageButton;

.field private mSendButtonSmsViewSec:Landroid/widget/ImageButton;

.field private mSendDiscreetMode:Z

.field private mSendLayoutMmsFir:Landroid/view/View;

.field private mSendLayoutMmsSec:Landroid/view/View;

.field private mSendLayoutSmsFir:Landroid/view/View;

.field private mSendLayoutSmsSec:Landroid/view/View;

.field private mSendMmsSupportViaWiFi:Z

.field private mSendReplyMode:Z

.field private mSendingMessage:Z

.field private mSentMessage:Z

.field private mService:Lorg/codeaurora/presenceserv/IPresenceService;

.field private mShouldLoadDraft:Z

.field private mShowAddContactMenu:Z

.field private mShowAttachIcon:Z

.field private mShowTwoButtons:Z

.field mSignature:Ljava/lang/String;

.field private final mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mSimpleMsgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusBarColor:I

.field private final mSubjectEditorWatcher:Landroid/text/TextWatcher;

.field private final mSubjectKeyListener:Landroid/view/View$OnKeyListener;

.field private mSubjectLayout:Landroid/widget/LinearLayout;

.field private mSubjectTextEditor:Landroid/widget/EditText;

.field private mSupportApi:Lcom/suntek/mway/rcs/client/api/support/SupportApi;

.field private mTempMmsUri:Landroid/net/Uri;

.field private mTempThreadId:J

.field private mTextCounter:Landroid/widget/TextView;

.field private mTextCounterSec:Landroid/widget/TextView;

.field private mTextEditor:Landroid/widget/EditText;

.field private final mTextEditorWatcher:Landroid/text/TextWatcher;

.field private mToastForDraftSave:Z

.field private final mToastMessageHandler:Landroid/os/Handler;

.field private mToolBar:Landroid/widget/Toolbar;

.field private mTopMsgThreadIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPanel:Landroid/view/View;

.field private mTopThread:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateCallBack:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

.field private mUpdateMmsSizeIndRunnable:Ljava/lang/Runnable;

.field private mUpdateThread:Ljava/lang/Runnable;

.field private mVideoCapable:Z

.field private mViewOnClickListener:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$ViewOnClickListener;

.field private mWaitingForSubActivity:Z

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

.field private mstart:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->SUBJECT_MAX_LENGTH:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isDisposeImage:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/Conversation;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCurPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReplaceAttachment:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J

    return-wide v0
.end method

.method static synthetic -get26(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayerPrepared:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    return v0
.end method

.method static synthetic -get29(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get30(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MultiAttachmentEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mObjectLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    return-object v0
.end method

.method static synthetic -get35()Z
    .locals 1

    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcard:Z

    return v0
.end method

.method static synthetic -get36(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientsEditor;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    return v0
.end method

.method static synthetic -get41(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    return v0
.end method

.method static synthetic -get42(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return v0
.end method

.method static synthetic -get43(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendAfterResize:Z

    return v0
.end method

.method static synthetic -get44(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    return v0
.end method

.method static synthetic -get45(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    return v0
.end method

.method static synthetic -get46(Lcom/android/mms/ui/ComposeMessageActivity;)Lorg/codeaurora/presenceserv/IPresenceService;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    return-object v0
.end method

.method static synthetic -get47(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    return v0
.end method

.method static synthetic -get48(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get49(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvailabilityfetchHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get50(Lcom/android/mms/ui/ComposeMessageActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    return-wide v0
.end method

.method static synthetic -get51(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get52(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get53(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get54(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mUpdateCallBack:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    return-object v0
.end method

.method static synthetic -get55(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mUpdateThread:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get56(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoCapable:Z

    return v0
.end method

.method static synthetic -get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/mms/ui/ComposeMessageActivity;)Lorg/codeaurora/presenceserv/IPresenceServiceCB;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallback:Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isDisposeImage:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/mms/ui/ComposeMessageActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastMessageId:J

    return-wide p1
.end method

.method static synthetic -set11(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayerPrepared:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set14(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    return-object p1
.end method

.method static synthetic -set15(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    return p1
.end method

.method static synthetic -set18(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendAfterResize:Z

    return p1
.end method

.method static synthetic -set19(Lcom/android/mms/ui/ComposeMessageActivity;Lorg/codeaurora/presenceserv/IPresenceService;)Lorg/codeaurora/presenceserv/IPresenceService;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCurPlayUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set20(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempMmsUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic -set21(Lcom/android/mms/ui/ComposeMessageActivity;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    return-wide p1
.end method

.method static synthetic -set22(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;)Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mUpdateCallBack:Lcom/android/mms/ui/ComposeMessageActivity$IMMSUpdateProgressBar;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/ComposeMessageActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCurrentAttachmentPager:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasBurnCapability:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/Context;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/Set;I)[Landroid/net/Uri;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->buildUris(Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startAvailabilityFetch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap15(Lcom/android/mms/ui/ComposeMessageActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getAttachmentMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap17(Lcom/android/mms/ui/ComposeMessageActivity;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap18(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/mms/ui/ComposeMessageActivity;Z)[Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showTwoSmsOrMmsSendButton(Z)[Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/Menu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/Menu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method static synthetic -wrap24(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic -wrap25(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cacheWorkingMessage()V

    return-void
.end method

.method static synthetic -wrap26(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelRcsMessageCache()V

    return-void
.end method

.method static synthetic -wrap27(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->checkAttachFileState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap28(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCapability(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap29(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForTooManyRecipients()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/mms/ui/ComposeMessageActivity;Z)Landroid/view/View;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap30(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method static synthetic -wrap31(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    return-void
.end method

.method static synthetic -wrap33(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dismissMsimDialog()V

    return-void
.end method

.method static synthetic -wrap34(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->doCropPhoto(Ljava/io/File;)V

    return-void
.end method

.method static synthetic -wrap35(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    return-void
.end method

.method static synthetic -wrap36(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    return-void
.end method

.method static synthetic -wrap37(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic -wrap38(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    return-void
.end method

.method static synthetic -wrap39(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->ensureCorrectButtonHeight()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/mms/ui/ComposeMessageActivity;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendMmsMobileDataOff(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap40(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap41(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic -wrap42(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    return-void
.end method

.method static synthetic -wrap43(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    return-void
.end method

.method static synthetic -wrap44(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleMessageSizeExceededWarning(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap45(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatBooted(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap46(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap47(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatDeleted(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap48(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatDeparted(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap49(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatUpdateRemark(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap50(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleRcsGroupChatUpdateSubject(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap51(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleUnsupportedTypeWarning(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap52(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    return-void
.end method

.method static synthetic -wrap53(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Bundle;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->inputNumbers(Landroid/os/Bundle;Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic -wrap54(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchMultiplePhonePicker()V

    return-void
.end method

.method static synthetic -wrap55(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->launchRcsContactGroupPicker(I)V

    return-void
.end method

.method static synthetic -wrap56(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V

    return-void
.end method

.method static synthetic -wrap57(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic -wrap58(Lcom/android/mms/ui/ComposeMessageActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    return-void
.end method

.method static synthetic -wrap59(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/util/Set;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->processAddRecipients(Ljava/util/Set;I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;I)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap60(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->processMsimSendMessage(IZ)V

    return-void
.end method

.method static synthetic -wrap61(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->replyMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic -wrap62(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic -wrap63(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetMessage()V

    return-void
.end method

.method static synthetic -wrap64(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetRcsMessage()V

    return-void
.end method

.method static synthetic -wrap65(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    return-void
.end method

.method static synthetic -wrap66(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    return-void
.end method

.method static synthetic -wrap67(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(Z)V

    return-void
.end method

.method static synthetic -wrap68(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(ZI)V

    return-void
.end method

.method static synthetic -wrap69(Lcom/android/mms/ui/ComposeMessageActivity;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isCursorValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap70(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showConvertToMmsToast()V

    return-void
.end method

.method static synthetic -wrap71(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showConvertToSmsToast()V

    return-void
.end method

.method static synthetic -wrap72(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap74(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog(I)V

    return-void
.end method

.method static synthetic -wrap75(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showQualityDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap76(Lcom/android/mms/ui/ComposeMessageActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    return-void
.end method

.method static synthetic -wrap77(Lcom/android/mms/ui/ComposeMessageActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->smoothScrollToEnd(ZI)V

    return-void
.end method

.method static synthetic -wrap78(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic -wrap79(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/mms/ui/ComposeMessageActivity;J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap80(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->switchToGroupChat()V

    return-void
.end method

.method static synthetic -wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    return-void
.end method

.method static synthetic -wrap82(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateAttachmentInfo()V

    return-void
.end method

.method static synthetic -wrap83(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateAttachmentSelectorIndicator(I)V

    return-void
.end method

.method static synthetic -wrap84(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ComposeMessageActivity;->updateCounter(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic -wrap85(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    return-void
.end method

.method static synthetic -wrap86(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    return-void
.end method

.method static synthetic -wrap87(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadAttachType()V

    return-void
.end method

.method static synthetic -wrap88(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    return-void
.end method

.method static synthetic -wrap89(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/text/Editable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitleForRecipientsChange(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/mms/ui/ComposeMessageActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap90(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    return-void
.end method

.method static synthetic -wrap91(Lcom/android/mms/ui/ComposeMessageActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V

    return-void
.end method

.method static synthetic -wrap92(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->waitForResizeImages()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 478
    const-string/jumbo v0, "_data"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->FILE_PATH_COLUMN:Ljava/lang/String;

    .line 479
    const-string/jumbo v0, "file"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->BROADCAST_DATA_SCHEME:Ljava/lang/String;

    .line 480
    const-string/jumbo v0, "content"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->URI_SCHEME_CONTENT:Ljava/lang/String;

    .line 481
    const-string/jumbo v0, "media"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->URI_HOST_MEDIA:Ljava/lang/String;

    .line 482
    const-string/jumbo v0, "mailto"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->MAIL_TOKEN:Ljava/lang/String;

    .line 483
    const-string/jumbo v0, "tel"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->TEL_TOKEN:Ljava/lang/String;

    .line 485
    const-string/jumbo v0, "recipient_count_limit"

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->RECIPIENT_COUNT_LIMIT:Ljava/lang/String;

    .line 519
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->SUBJECT_MAX_LENGTH:I

    .line 535
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mNoSpace:Z

    .line 816
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcard:Z

    .line 818
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcardAddNumber:Z

    .line 840
    const-wide/16 v0, 0x400

    sput-wide v0, Lcom/android/mms/ui/ComposeMessageActivity;->BYTE_TO_KB:J

    .line 842
    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/mms/ui/ComposeMessageActivity;->MMS_LIMIT_SIZE:J

    .line 861
    const/4 v0, 0x1

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->FAVOURITE_MSG:I

    .line 6192
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    .line 6194
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    .line 6196
    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAudioUri:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/16 v4, 0x64

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 456
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAddContactMenu:Z

    .line 459
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnableSelect:Z

    .line 609
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    .line 629
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    .line 661
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    .line 673
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAirplaneModeOn:Z

    .line 674
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandler:Landroid/os/Handler;

    .line 676
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRTL:Z

    .line 696
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isLocked:Z

    .line 697
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPickingContact:Z

    .line 699
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickList:Lcom/android/mms/data/ContactList;

    .line 703
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    .line 704
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    .line 707
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    .line 708
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mObjectLock:Ljava/lang/Object;

    .line 710
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAttachIcon:Z

    .line 713
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    .line 715
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    .line 717
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAvoidingSavingDraft:Z

    .line 722
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoCapable:Z

    .line 735
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    .line 786
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendAfterResize:Z

    .line 788
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccentColor:I

    .line 789
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStatusBarColor:I

    .line 790
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccentColorLoaded:Z

    .line 791
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLoadingAccentColor:Z

    .line 795
    iput-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->lastProgress:J

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopMsgThreadIdList:Ljava/util/List;

    .line 800
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasBurnCapability:Z

    .line 802
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConvsertionSelect:Z

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsForwardItems:Ljava/util/List;

    .line 810
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCreateNewMessageFromConversationList:Z

    .line 844
    iput-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    .line 849
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    .line 850
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isDisposeImage:Z

    .line 852
    iput-wide v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsForwardId:J

    .line 854
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopThread:Ljava/util/List;

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSimpleMsgs:Ljava/util/ArrayList;

    .line 862
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsBurnAfterReadMessageCount:I

    .line 863
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeFilter:Landroid/content/IntentFilter;

    .line 864
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSIMStatusChangeFilter:Landroid/content/IntentFilter;

    .line 919
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorHandler:Landroid/os/Handler;

    .line 1020
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1095
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$3;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    .line 1646
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$4;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 2005
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$5;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2004
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 2748
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.mms.PROGRESS_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    .line 2750
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$6;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    .line 2776
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$7;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    .line 3081
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$8;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4089
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$9;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    .line 5282
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$10;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 5634
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$11;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mUpdateMmsSizeIndRunnable:Ljava/lang/Runnable;

    .line 5792
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$12;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 6240
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$13;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    .line 6526
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$14;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    .line 6597
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$15;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    .line 7045
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$16;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 7476
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$17;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 7922
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$18;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$18;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCopyToSimWithToastHandler:Landroid/os/Handler;

    .line 9774
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$19;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$19;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastMessageHandler:Landroid/os/Handler;

    .line 9973
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$20;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$20;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetRcsMessageRunnable:Ljava/lang/Runnable;

    .line 10215
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$21;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$21;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEmotionDownloadReceiver:Landroid/content/BroadcastReceiver;

    .line 10486
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$22;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$22;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mViewOnClickListener:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$ViewOnClickListener;

    .line 10543
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$23;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$23;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    .line 10581
    new-instance v0, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 10582
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$24;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$24;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10581
    invoke-direct {v0, v1}, Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;-><init>(Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver$GroupChatNotifyCallback;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    .line 10827
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;

    invoke-direct {v0, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$MMSAudioPlayer;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    .line 10829
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayerPrepared:Z

    .line 10832
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->POST_DELAY:I

    .line 10833
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->MAX_DURATION:I

    .line 10928
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$25;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$25;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mUpdateThread:Ljava/lang/Runnable;

    .line 10957
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$26;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$26;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 10974
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$27;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$27;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallback:Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    .line 316
    return-void
.end method

.method private LaunchMsimDialog(Z)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1360
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1361
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1363
    const v1, 0x7f0f010c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1362
    const v5, 0x7f04003d

    invoke-virtual {v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1364
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1365
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$32;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$32;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 1381
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$33;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$33;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v1, 0x7f0701ad

    invoke-virtual {v4, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1387
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1388
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1389
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070205

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1390
    const-string/jumbo v6, ","

    invoke-virtual {v0, v6}, Lcom/android/mms/data/ContactList;->formatNamesAndNumbers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1392
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    .line 1393
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1395
    const v0, 0x7f0f010d

    const v1, 0x7f0f010e

    const v4, 0x7f0f010f

    filled-new-array {v0, v1, v4}, [I

    move-result-object v4

    .line 1396
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v6

    .line 1397
    new-array v7, v6, [Landroid/widget/Button;

    .line 1399
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1398
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v8

    move-object v1, v2

    move v2, v3

    .line 1401
    :goto_1
    if-ge v2, v6, :cond_4

    .line 1403
    aget v0, v4, v2

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v7, v2

    .line 1404
    aget-object v0, v7, v2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1405
    if-eqz v8, :cond_5

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SIM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1407
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 1408
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    if-ne v10, v2, :cond_0

    .line 1409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v9, ": "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    :goto_2
    aget-object v1, v7, v2

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1415
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1416
    :cond_1
    invoke-static {}, Lcom/android/mms/rcs/RcsDualSimMananger;->getCurrentRcsOnlineSlot()I

    move-result v1

    .line 1417
    if-eq v1, v2, :cond_2

    .line 1418
    aget-object v1, v7, v2

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1421
    :cond_2
    aget-object v1, v7, v2

    .line 1422
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$34;

    invoke-direct {v9, p0, v2, p1}, Lcom/android/mms/ui/ComposeMessageActivity$34;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;IZ)V

    .line 1421
    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1401
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_1

    .line 1388
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    goto/16 :goto_0

    .line 1440
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1441
    return-void

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method private addAttachment(IZ)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5079
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 5080
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    .line 5081
    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 5082
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 5083
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 5085
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 5190
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 5080
    goto :goto_0

    .line 5088
    :pswitch_0
    const/16 v0, 0x64

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 5087
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectImage(Landroid/content/Context;I)V

    goto :goto_1

    .line 5093
    :pswitch_1
    const/16 v0, 0x65

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 5092
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->capturePicture(Landroid/app/Activity;I)V

    goto :goto_1

    .line 5099
    :pswitch_2
    const/16 v0, 0x66

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 5098
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectVideo(Landroid/content/Context;I)V

    goto :goto_1

    .line 5104
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiringRcsAttachment()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5106
    const/4 v0, 0x3

    .line 5105
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getRcsTransferFileMaxSize(I)J

    move-result-wide v0

    .line 5110
    :goto_2
    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 5112
    const/16 v2, 0x67

    invoke-direct {p0, p2, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v2

    .line 5113
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    .line 5111
    invoke-static {p0, v2, v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->recordVideo(Landroid/app/Activity;IJZ)V

    goto :goto_1

    .line 5108
    :cond_1
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v0

    goto :goto_2

    .line 5116
    :cond_2
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5115
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 5123
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5124
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5125
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 5126
    const/16 v1, 0x68

    invoke-direct {p0, p2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 5130
    :pswitch_5
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J

    move-result-wide v0

    .line 5132
    const/16 v2, 0x69

    invoke-direct {p0, p2, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v2

    .line 5133
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiringRcsAttachment()Z

    move-result v3

    .line 5131
    invoke-static {p0, v2, v0, v1, v3}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/app/Activity;IJZ)V

    goto/16 :goto_1

    .line 5137
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_3

    .line 5138
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 5140
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto/16 :goto_1

    .line 5144
    :pswitch_7
    const/16 v0, 0x6e

    .line 5143
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    goto/16 :goto_1

    .line 5147
    :pswitch_8
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiringRcsAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5148
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->vcardContactOrGroup()V

    goto/16 :goto_1

    .line 5150
    :cond_4
    const/4 v0, 0x2

    .line 5151
    const/16 v1, 0x6f

    .line 5150
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->pickContacts(II)V

    goto/16 :goto_1

    .line 5155
    :pswitch_9
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    goto/16 :goto_1

    .line 5158
    :pswitch_a
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5159
    const v0, 0x7f0700d1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto/16 :goto_1

    .line 5163
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5164
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5165
    const/4 v1, 0x1

    .line 5164
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5166
    return-void

    .line 5168
    :cond_6
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5169
    const-string/jumbo v1, "com.suntek.mway.rcs.MAP_POSITION_SELECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5170
    const/16 v1, 0x73

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 5171
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 5173
    :catch_0
    move-exception v0

    .line 5174
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 5181
    :pswitch_b
    const/16 v0, 0x7e

    invoke-direct {p0, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v0

    .line 5180
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectPhotosAndVideos(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 5185
    :pswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->selectVCalendar()V

    goto/16 :goto_1

    .line 5085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private addAttachment(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 3

    .prologue
    .line 6199
    if-eqz p2, :cond_3

    .line 6206
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6207
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->reset()V

    .line 6210
    :cond_0
    const-string/jumbo v0, "*/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 6211
    const-string/jumbo v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mImageUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 6212
    :cond_1
    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isImageFile(Landroid/net/Uri;)Z

    move-result v1

    .line 6211
    if-eqz v1, :cond_4

    .line 6213
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    .line 6237
    :cond_3
    :goto_0
    return-void

    .line 6214
    :cond_4
    const-string/jumbo v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 6215
    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 6214
    if-nez v1, :cond_6

    .line 6216
    :cond_5
    if-eqz v0, :cond_7

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isVideoFile(Landroid/net/Uri;)Z

    move-result v1

    .line 6214
    if-eqz v1, :cond_7

    .line 6217
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 6218
    :cond_7
    const-string/jumbo v1, "audio/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 6219
    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/mms/ui/ComposeMessageActivity;->mAudioUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 6218
    if-nez v1, :cond_9

    .line 6220
    :cond_8
    if-eqz v0, :cond_a

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isAudioFile(Landroid/net/Uri;)Z

    move-result v1

    .line 6218
    if-eqz v1, :cond_a

    .line 6221
    :cond_9
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 6222
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6223
    const-string/jumbo v1, "text/x-vcard"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 6224
    if-eqz v0, :cond_c

    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->isVcardFile(Landroid/net/Uri;)Z

    move-result v0

    .line 6222
    if-eqz v0, :cond_c

    .line 6225
    :cond_b
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;)V

    goto :goto_0

    .line 6226
    :cond_c
    const-string/jumbo v0, "text/x-vCalendar"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6227
    const-string/jumbo v0, "text/x-vCalendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6228
    const v0, 0x7f070376

    invoke-direct {p0, p2, p3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcal(Landroid/net/Uri;ZI)V

    goto/16 :goto_0

    .line 6232
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    .line 6233
    const/4 v1, 0x1

    .line 6232
    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6234
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private addAudio(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 5989
    if-eqz p1, :cond_2

    .line 5990
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5991
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5992
    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    .line 5993
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$70;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$70;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5999
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$71;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$71;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6005
    return-void

    .line 6008
    :cond_0
    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    .line 6009
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$72;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$72;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 6015
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$73;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$73;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 6021
    return-void

    .line 6025
    :cond_1
    const v1, 0x7f070247

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 6027
    :cond_2
    return-void
.end method

.method private addBurnMessageMenu(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9909
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHasBurnCapability:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9911
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9910
    const/16 v1, 0x65

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 9912
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 9913
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 9914
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$86;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$86;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9924
    :cond_0
    return-void
.end method

.method private final addCallAndContactMenuItems(Landroid/view/Menu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1935
    iget-object v0, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1936
    return-void

    .line 1938
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1939
    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1941
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v5, Landroid/text/style/URLSpan;

    invoke-virtual {v0, v4, v1, v5}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1944
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1945
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1946
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1948
    :cond_1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1950
    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1951
    if-ltz v5, :cond_6

    .line 1952
    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1953
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1957
    :goto_2
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity;->MAIL_TOKEN:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1958
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContactUriForEmail(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    move v0, v3

    .line 1964
    :goto_3
    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    .line 1965
    invoke-static {v1}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1967
    new-array v5, v3, [Ljava/lang/Object;

    .line 1968
    aput-object v1, v5, v4

    .line 1967
    const v1, 0x7f07011c

    invoke-virtual {p0, v1, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1969
    const/16 v5, 0x1b

    invoke-interface {p1, v4, v5, v4, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto :goto_1

    .line 1959
    :cond_3
    sget-object v5, Lcom/android/mms/ui/ComposeMessageActivity;->TEL_TOKEN:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1960
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContactUriForPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v5, v0

    move v0, v3

    goto :goto_3

    :cond_4
    move v0, v4

    move-object v5, v2

    .line 1962
    goto :goto_3

    .line 1974
    :cond_5
    return-void

    :cond_6
    move-object v1, v0

    move-object v0, v2

    goto :goto_2
.end method

.method private addImage(Landroid/net/Uri;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x2

    .line 5897
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addImage: append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5901
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5903
    const/4 v1, -0x4

    if-eq v0, v1, :cond_1

    .line 5904
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    .line 5905
    :cond_1
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resize image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5908
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    .line 5910
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    .line 5911
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorHandler:Landroid/os/Handler;

    .line 5912
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 5909
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;ILandroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;Z)V

    .line 5913
    return-void

    .line 5911
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 5916
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5917
    const/4 v1, -0x6

    if-ne v0, v1, :cond_5

    .line 5918
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$63;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$63;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5924
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$64;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$64;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5930
    return-void

    .line 5932
    :cond_5
    const v1, 0x7f070248

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5933
    return-void
.end method

.method private addImageAsync(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 5886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    .line 5887
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$62;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$62;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5893
    const/4 v2, 0x0

    const v3, 0x7f070197

    .line 5887
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5894
    return-void
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    .line 1866
    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1871
    if-eqz p3, :cond_0

    .line 1872
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1873
    invoke-direct {p0, p1, p2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1875
    :cond_0
    return-void

    .line 1867
    :catch_0
    move-exception v0

    .line 1868
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "bad menuInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return-void
.end method

.method private addRecipientsListeners()V
    .locals 0

    .prologue
    .line 7857
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7858
    return-void
.end method

.method private addSwitchToGroupChatMenuItem(Landroid/view/Menu;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9928
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 9927
    const/16 v1, 0x66

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 9929
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$87;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$87;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 9936
    return-void
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1922
    check-cast p2, Landroid/widget/ListView;

    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v0

    .line 1924
    if-eqz v0, :cond_0

    .line 1925
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1926
    const-string/jumbo v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1928
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    .line 1927
    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1931
    :cond_0
    return-void
.end method

.method private addVcal(Landroid/net/Uri;ZI)V
    .locals 2

    .prologue
    .line 5622
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addVcal append="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 5625
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5627
    invoke-direct {p0, v0, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5628
    return-void
.end method

.method private addVcard(Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 6030
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 6031
    const v1, 0x7f0702bc

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 6032
    return-void
.end method

.method private addVideo(Landroid/net/Uri;Z)V
    .locals 2

    .prologue
    .line 5947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    .line 5948
    if-eqz p1, :cond_2

    .line 5949
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    .line 5950
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5951
    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    .line 5952
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$66;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$66;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5959
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$67;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$67;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5965
    return-void

    .line 5968
    :cond_0
    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    .line 5969
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$68;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$68;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5975
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$69;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$69;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5981
    return-void

    .line 5984
    :cond_1
    const v1, 0x7f070249

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 5986
    :cond_2
    return-void
.end method

.method private addVideoAsync(Landroid/net/Uri;Z)V
    .locals 4

    .prologue
    .line 5936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    .line 5937
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$65;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity$65;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 5943
    const/4 v2, 0x0

    const v3, 0x7f070197

    .line 5937
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 5944
    return-void
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 10983
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/codeaurora/presenceserv/IPresenceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10984
    const-string/jumbo v1, "com.qualcomm.qti.presenceserv"

    const-string/jumbo v2, "com.qualcomm.qti.presenceserv.PresenceService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 10985
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBound:Z

    .line 10986
    return-void
.end method

.method private buildAddAddressToContactMenuItem(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4625
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4626
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4627
    return-void

    .line 4632
    :cond_0
    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 4633
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4634
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4635
    const/16 v1, 0x1b

    const v2, 0x7f0701aa

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 4636
    const v2, 0x1080033

    .line 4635
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 4639
    :cond_1
    return-void
.end method

.method private buildUris(Ljava/util/Set;I)[Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)[",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 5706
    new-array v3, p2, [Landroid/net/Uri;

    .line 5707
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5708
    const/4 v0, 0x0

    move v1, v0

    .line 5709
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5710
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5711
    add-int/lit8 v2, v1, 0x1

    sget-object v5, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v3, v1

    .line 5712
    if-ne v2, p2, :cond_1

    .line 5716
    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private cacheWorkingMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10025
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setCacheRcsMessage(Z)V

    .line 10026
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 10027
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsThumbnailLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 10028
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 10029
    const v0, 0x7f0f0028

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 10030
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-static {p0, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->setThumbnailForMessageItem(Landroid/content/Context;Landroid/widget/ImageView;Lcom/android/mms/data/WorkingMessage;)V

    .line 10031
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 10032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 10033
    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 10034
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$90;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$90;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10033
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10043
    return-void
.end method

.method private canAddToContacts(Lcom/android/mms/data/Contact;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1837
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1838
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1839
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1840
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1841
    return v3

    .line 1844
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1845
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1846
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->isSpecialChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1847
    return v3

    .line 1850
    :cond_1
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1851
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1850
    if-nez v0, :cond_2

    .line 1852
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->isMe()Z

    move-result v0

    .line 1850
    :goto_0
    if-nez v0, :cond_3

    .line 1853
    return v3

    :cond_2
    move v0, v1

    .line 1850
    goto :goto_0

    .line 1855
    :cond_3
    return v1
.end method

.method private canSendMmsMobileDataOff(I)Z
    .locals 2

    .prologue
    .line 1493
    const/4 v1, 0x0

    .line 1495
    const-string/jumbo v0, "carrier_config"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1494
    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 1496
    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 1497
    if-eqz v0, :cond_0

    .line 1498
    const-string/jumbo v1, "config_enable_mms_with_mobile_data_off"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 1500
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private cancelRcsMessageCache()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10046
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setCacheRcsMessage(Z)V

    .line 10047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsThumbnailLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10048
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 10049
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 10050
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 10051
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 10052
    return-void
.end method

.method private checkAttachFileState(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 8070
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 8071
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFileUri()Ljava/util/ArrayList;

    move-result-object v0

    .line 8072
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 8073
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Attach file uri is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8074
    if-eqz v0, :cond_0

    .line 8077
    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAttachFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 8078
    const-string/jumbo v0, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "File path is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8080
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8081
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8083
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8084
    :cond_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v2, "set attachment null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8086
    const v0, 0x7f07018d

    .line 8085
    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8088
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v6, v1, v6}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    .line 8093
    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private checkCapability(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 9952
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCapabilityApi:Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$88;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$88;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;->getCapability(Ljava/lang/String;ZLcom/suntek/mway/rcs/client/api/capability/CapabiltyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9971
    :goto_0
    return-void

    .line 9968
    :catch_0
    move-exception v0

    .line 9969
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 9966
    :catch_1
    move-exception v0

    .line 9967
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkForMmsRecipients(Ljava/lang/String;Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1750
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1751
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1752
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v1

    .line 1753
    if-ge v0, v1, :cond_2

    .line 1754
    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_1

    .line 1755
    :cond_0
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1756
    new-array v1, v3, [Ljava/lang/Object;

    .line 1757
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1756
    const v0, 0x7f070377

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1761
    :cond_1
    return v3

    .line 1763
    :cond_2
    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1766
    :cond_3
    return v4
.end method

.method private checkForTooManyRecipients()V
    .locals 8

    .prologue
    const v3, 0x7f070302

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1770
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1771
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForMmsRecipients(Ljava/lang/String;Z)Z

    move-result v0

    .line 1770
    if-eqz v0, :cond_0

    .line 1772
    return-void

    .line 1774
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    .line 1775
    const v0, 0x7fffffff

    if-eq v3, v0, :cond_1

    if-lez v3, :cond_1

    .line 1776
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v4

    .line 1777
    if-le v4, v3, :cond_2

    move v0, v1

    .line 1778
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientsEditor;->getSelectionStart()I

    move-result v5

    .line 1779
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v6}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v6

    .line 1781
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    if-eq v4, v7, :cond_1

    .line 1784
    iput v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 1785
    if-eqz v0, :cond_1

    .line 1786
    new-array v0, v1, [Ljava/lang/Object;

    .line 1787
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1786
    const v2, 0x7f070377

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1788
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1790
    add-int/lit8 v0, v5, -0x1

    invoke-interface {v6, v0, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1794
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1777
    goto :goto_0
.end method

.method private checkMessageSizeExceeded()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7089
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v4

    .line 7092
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 7093
    if-eqz v3, :cond_3

    .line 7094
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v0

    .line 7097
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v5}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 7098
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getTotalTextMessageSize()I

    move-result v5

    .line 7099
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v6}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    .line 7100
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v3

    .line 7101
    sub-int/2addr v0, v5

    add-int/2addr v0, v6

    .line 7102
    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSizeWithOverHead(I)I

    move-result v3

    .line 7103
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v5

    div-int/lit16 v5, v5, 0x400

    .line 7102
    if-le v3, v5, :cond_2

    move v3, v0

    move v0, v1

    .line 7108
    :goto_0
    const-string/jumbo v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compose mmsCurrentSize = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7109
    const-string/jumbo v7, ", indicatorSizeOvered = "

    .line 7108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7114
    if-gt v3, v4, :cond_0

    if-eqz v0, :cond_4

    .line 7115
    :cond_0
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAttachmentErrorOnSend:Z

    .line 7116
    const/4 v0, -0x2

    .line 7117
    const v2, 0x7f070248

    .line 7116
    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 7118
    return v1

    :cond_1
    move v3, v0

    move v0, v2

    .line 7097
    goto :goto_0

    :cond_2
    move v3, v0

    move v0, v2

    .line 7102
    goto :goto_0

    .line 7105
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7106
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    move v3, v0

    move v0, v2

    goto :goto_0

    .line 7120
    :cond_4
    return v2

    :cond_5
    move v0, v2

    move v3, v2

    goto :goto_0
.end method

.method public static computeAttachmentSizeLimit(Lcom/android/mms/model/SlideshowModel;I)J
    .locals 4

    .prologue
    .line 5206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    add-int/lit16 v0, v0, -0x400

    int-to-long v0, v0

    .line 5207
    if-eqz p0, :cond_0

    .line 5208
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 5209
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getTotalTextMessageSize()I

    move-result v2

    int-to-long v2, v2

    .line 5208
    sub-long/2addr v0, v2

    .line 5216
    int-to-long v2, p1

    add-long/2addr v0, v2

    .line 5218
    :cond_0
    return-wide v0
.end method

.method private confirmAddBlacklist()V
    .locals 3

    .prologue
    .line 10241
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSenderNumber()Ljava/lang/String;

    move-result-object v0

    .line 10242
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10243
    return-void

    .line 10246
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const v0, 0x7f0700f4

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10247
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10248
    const v2, 0x7f07007b

    .line 10247
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10251
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$95;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$95;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 10250
    const v2, 0x7f0700f5

    .line 10247
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 10258
    const v1, 0x7f0700f6

    const/4 v2, 0x0

    .line 10247
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10260
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3

    .prologue
    .line 6811
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6812
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6813
    if-eqz p2, :cond_0

    const v0, 0x7f0701f6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 6815
    const v0, 0x7f0701fa

    invoke-virtual {v1, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6816
    const v0, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6817
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6818
    return-void

    .line 6814
    :cond_0
    const v0, 0x7f0701f5

    goto :goto_0
.end method

.method private confirmDeleteThread(J)V
    .locals 3

    .prologue
    .line 5032
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 5033
    const/16 v1, 0x70a

    .line 5032
    invoke-static {v0, p1, p2, v1}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 5034
    return-void
.end method

.method private confirmSendMessageIfNeeded()V
    .locals 5

    .prologue
    const v4, 0x7f070302

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1539
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcard:Z

    if-eqz v0, :cond_0

    .line 1540
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 1541
    sput-boolean v3, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcard:Z

    .line 1544
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 1545
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1546
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isLTEOnlyMode(I)Z

    move-result v1

    .line 1545
    if-nez v1, :cond_2

    .line 1547
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1548
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isLTEOnlyMode()Z

    move-result v1

    .line 1545
    if-eqz v1, :cond_3

    .line 1549
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showDisableLTEOnlyDialog(I)V

    .line 1550
    const-string/jumbo v0, "return for disable LTEOnly"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1551
    return-void

    .line 1554
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1555
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1556
    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 1557
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendMmsMobileDataOff(I)Z

    move-result v0

    .line 1556
    if-eqz v0, :cond_4

    .line 1558
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 1556
    if-eqz v0, :cond_4

    .line 1559
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog()V

    .line 1567
    :goto_0
    return-void

    .line 1560
    :cond_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_5

    .line 1561
    const-string/jumbo v0, "sendMsimMessage true"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1562
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(Z)V

    goto :goto_0

    .line 1564
    :cond_5
    const-string/jumbo v0, "sendMessage true"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1565
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0

    .line 1570
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1571
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog()V

    .line 1592
    :goto_1
    return-void

    .line 1572
    :cond_7
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    .line 1573
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendMmsMobileDataOff(I)Z

    move-result v1

    .line 1572
    if-eqz v1, :cond_8

    .line 1574
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 1572
    if-eqz v1, :cond_8

    .line 1575
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog()V

    goto :goto_1

    .line 1577
    :cond_8
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz v0, :cond_9

    .line 1579
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForMmsRecipients(Ljava/lang/String;Z)Z

    move-result v0

    .line 1577
    if-eqz v0, :cond_9

    .line 1580
    return-void

    .line 1584
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1585
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 1586
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_a

    .line 1587
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(Z)V

    goto :goto_1

    .line 1589
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_1
.end method

.method private confirmSendMessageIfNeeded(I)V
    .locals 4

    .prologue
    const v3, 0x7f070302

    const/4 v2, 0x1

    .line 1504
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->isLTEOnlyMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1505
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showDisableLTEOnlyDialog(I)V

    .line 1506
    return-void

    .line 1508
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1509
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1510
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendMmsMobileDataOff(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v0

    .line 1510
    if-eqz v0, :cond_1

    .line 1512
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog(I)V

    .line 1516
    :goto_0
    return-void

    .line 1514
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(ZI)V

    goto :goto_0

    .line 1519
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->hasInvalidRecipient(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1520
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog(I)V

    .line 1536
    :goto_1
    return-void

    .line 1521
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->canSendMmsMobileDataOff(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1522
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isMobileDataDisabled(Landroid/content/Context;)Z

    move-result v1

    .line 1521
    if-eqz v1, :cond_4

    .line 1523
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog(I)V

    goto :goto_1

    .line 1525
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 1527
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->checkForMmsRecipients(Ljava/lang/String;Z)Z

    move-result v0

    .line 1525
    if-eqz v0, :cond_5

    .line 1528
    return-void

    .line 1532
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1533
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 1534
    invoke-direct {p0, v2, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMsimMessage(ZI)V

    goto :goto_1
.end method

.method private constructContactAndUpdateTitle()V
    .locals 2

    .prologue
    .line 1745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1746
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 1747
    return-void
.end method

.method private copyMedia(J)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 2567
    const/4 v1, 0x1

    .line 2571
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2570
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2575
    :goto_0
    if-nez v2, :cond_0

    .line 2576
    return v0

    .line 2572
    :catch_0
    move-exception v3

    .line 2573
    const-string/jumbo v3, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "copyMedia can\'t load pdu body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2579
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 2580
    :goto_1
    if-ge v0, v3, :cond_1

    .line 2581
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2584
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v1, v4

    .line 2580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2586
    :cond_1
    return v1
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 12

    .prologue
    .line 2590
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mNoSpace:Z

    .line 2591
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    .line 2592
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .line 2593
    invoke-static {v1}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v7

    .line 2594
    if-eqz v7, :cond_14

    .line 2595
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v1

    .line 2596
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 2595
    invoke-virtual {v1, v2}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 2598
    :goto_0
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2599
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2598
    if-eqz v1, :cond_0

    .line 2600
    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2598
    if-eqz v1, :cond_0

    .line 2601
    const-string/jumbo v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2598
    if-eqz v1, :cond_0

    .line 2602
    const-string/jumbo v1, "text/x-vCalendar"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2598
    if-eqz v1, :cond_0

    .line 2603
    const-string/jumbo v1, "application/ogg"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 2598
    if-eqz v1, :cond_0

    .line 2604
    const/4 v1, 0x1

    return v1

    .line 2609
    :cond_0
    const/4 v2, 0x0

    .line 2610
    const/4 v4, 0x0

    .line 2612
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2613
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_13

    .line 2614
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 2616
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v5

    .line 2617
    if-nez v5, :cond_1

    .line 2618
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v5

    .line 2620
    :cond_1
    if-nez v5, :cond_2

    .line 2621
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 2625
    :cond_2
    if-nez v5, :cond_6

    .line 2633
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2637
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 2639
    invoke-static {p0}, Landroid/os/Environment;->getExternalSDcardDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2640
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2641
    const-string/jumbo v8, "pref_key_save_attachment"

    const-string/jumbo v9, "1"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2643
    const-string/jumbo v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2644
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    .line 2649
    :cond_3
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2650
    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 2649
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2650
    const-string/jumbo v8, "/"

    .line 2649
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2653
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/4 v6, -0x1

    if-ne v9, v6, :cond_b

    .line 2654
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2659
    :goto_3
    if-eqz v7, :cond_4

    .line 2660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/android/mms/drm/DrmUtils;->getConvertExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 2663
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 2664
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 2665
    const-string/jumbo v5, "^\\."

    const-string/jumbo v7, ""

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2668
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 2671
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 2672
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_c

    .line 2673
    const-string/jumbo v1, "Mms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " failed!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2674
    const/4 v1, 0x0

    .line 2698
    if-eqz v2, :cond_5

    .line 2700
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2674
    :cond_5
    return v1

    .line 2631
    :cond_6
    :try_start_3
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2690
    :catch_0
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    .line 2692
    :goto_5
    :try_start_4
    const-string/jumbo v4, "Mms"

    const-string/jumbo v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2693
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "ENOSPC"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2694
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mNoSpace:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2696
    :cond_7
    const/4 v1, 0x0

    .line 2698
    if-eqz v3, :cond_8

    .line 2700
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2707
    :cond_8
    if-eqz v2, :cond_9

    .line 2709
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 2696
    :cond_9
    return v1

    .line 2646
    :cond_a
    :try_start_7
    invoke-static {p0}, Landroid/os/Environment;->getExternalSDcardDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    goto/16 :goto_2

    .line 2656
    :cond_b
    add-int/lit8 v6, v9, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2657
    const/4 v10, 0x0

    invoke-virtual {v5, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v5

    goto/16 :goto_3

    .line 2701
    :catch_1
    move-exception v1

    .line 2703
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    const/4 v1, 0x0

    return v1

    .line 2677
    :cond_c
    :try_start_8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2679
    const/16 v4, 0x1f40

    :try_start_9
    new-array v4, v4, [B

    .line 2681
    :goto_6
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_d

    .line 2682
    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_6

    .line 2690
    :catch_2
    move-exception v1

    move-object v11, v3

    move-object v3, v2

    move-object v2, v11

    goto :goto_5

    .line 2687
    :cond_d
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 2688
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 2687
    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2698
    :goto_7
    if-eqz v2, :cond_e

    .line 2700
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 2707
    :cond_e
    if-eqz v3, :cond_f

    .line 2709
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 2717
    :cond_f
    const/4 v1, 0x1

    return v1

    .line 2701
    :catch_3
    move-exception v1

    .line 2703
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    const/4 v1, 0x0

    return v1

    .line 2710
    :catch_4
    move-exception v1

    .line 2712
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2713
    const/4 v1, 0x0

    return v1

    .line 2701
    :catch_5
    move-exception v1

    .line 2703
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    const/4 v1, 0x0

    return v1

    .line 2710
    :catch_6
    move-exception v1

    .line 2712
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2713
    const/4 v1, 0x0

    return v1

    .line 2697
    :catchall_0
    move-exception v1

    .line 2698
    :goto_8
    if-eqz v2, :cond_10

    .line 2700
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 2707
    :cond_10
    if-eqz v4, :cond_11

    .line 2709
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 2697
    :cond_11
    throw v1

    .line 2701
    :catch_7
    move-exception v1

    .line 2703
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2704
    const/4 v1, 0x0

    return v1

    .line 2710
    :catch_8
    move-exception v1

    .line 2712
    const-string/jumbo v2, "Mms"

    const-string/jumbo v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2713
    const/4 v1, 0x0

    return v1

    .line 2697
    :catchall_1
    move-exception v1

    move-object v4, v3

    goto :goto_8

    :catchall_2
    move-exception v1

    move-object v4, v2

    move-object v2, v3

    goto :goto_8

    .line 2690
    :catch_9
    move-exception v1

    move-object v3, v2

    move-object v2, v4

    goto/16 :goto_5

    :cond_12
    move-object v3, v5

    goto/16 :goto_4

    :cond_13
    move-object v3, v4

    goto :goto_7

    :cond_14
    move-object v3, v1

    goto/16 :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2154
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2155
    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 2156
    return-void
.end method

.method public static createIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 7865
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7867
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 7868
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7871
    :cond_0
    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 7875
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7877
    const-string/jumbo v1, "start_compose_from"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7878
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 7879
    invoke-static {p1, p2}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 7882
    :cond_0
    return-object v0
.end method

.method private determinePalette(I)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;
    .locals 2

    .prologue
    .line 10795
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 10796
    if-eqz p1, :cond_0

    .line 10797
    new-instance v1, Lcom/android/mms/util/MaterialColorMapUtils;

    invoke-direct {v1, v0}, Lcom/android/mms/util/MaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    .line 10798
    invoke-virtual {v1, p1}, Lcom/android/mms/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0

    .line 10801
    :cond_0
    invoke-static {v0}, Lcom/android/mms/util/MaterialColorMapUtils;->getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0
.end method

.method private dialRecipient()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4160
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4161
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_4

    .line 4162
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4163
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->dialGroupChat(Landroid/content/Context;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 4192
    :cond_0
    :goto_0
    return-void

    .line 4165
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4166
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 4167
    if-le v0, v2, :cond_2

    .line 4168
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->dialConferenceCall(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    goto :goto_0

    .line 4169
    :cond_2
    if-ne v0, v2, :cond_0

    .line 4170
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 4171
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->isDeletePrefixSpecailNumberAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4173
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->getInstance()Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/api/specialnumber/SpecialServiceNumApi;->deleteSsnPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4181
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4183
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 4171
    goto :goto_1

    .line 4177
    :catch_0
    move-exception v0

    .line 4178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception delSpecialPreNum()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 4175
    :catch_1
    move-exception v0

    .line 4176
    const-string/jumbo v0, "delSpecialPreNum error"

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    .line 4187
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4188
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4189
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private dismissMsimDialog()V
    .locals 1

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1347
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1349
    :cond_0
    return-void
.end method

.method private doCropPhoto(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 10094
    :try_start_0
    new-instance v0, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;

    const-string/jumbo v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;-><init>(Ljava/lang/String;)V

    .line 10095
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 10096
    const-string/jumbo v1, "crop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/rcs/RcsMessageOpenUtils$OpenRcsMessageIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10097
    const/16 v1, 0x2710

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10102
    :goto_0
    return-void

    .line 10098
    :catch_0
    move-exception v0

    .line 10099
    const v0, 0x7f070045

    .line 10100
    const/4 v1, 0x0

    .line 10099
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private drawBottomPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 6294
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetCounter()V

    .line 6296
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6297
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_0

    .line 6298
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6299
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->requestFocus()Z

    .line 6300
    return-void

    .line 6302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->requestFocus()Z

    .line 6305
    return-void

    .line 6312
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6313
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6316
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 6319
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v1, :cond_4

    .line 6320
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 6323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 6327
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 6328
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 6329
    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    .line 6328
    if-eqz v0, :cond_3

    .line 6330
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 6332
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 6333
    return-void

    .line 6325
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private drawTopPanel(Z)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 6343
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/MultiAttachmentEditor;->update(Lcom/android/mms/data/WorkingMessage;)Z

    move-result v3

    .line 6344
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorScrollView:Landroid/view/View;

    if-eqz v3, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    if-eqz v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6346
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 6347
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6348
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    .line 6349
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6350
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->setSubjectSize(I)V

    .line 6353
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 6354
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 6355
    return-void

    :cond_3
    move v0, v2

    .line 6344
    goto :goto_0

    .line 6346
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2

    .prologue
    .line 2077
    const-string/jumbo v0, "sms"

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2078
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 2082
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 2084
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 2086
    :cond_0
    return-void

    .line 2080
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2130
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 2131
    if-nez v0, :cond_0

    .line 2132
    return-void

    .line 2136
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 2138
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2139
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2141
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 2146
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p2, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 2148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2149
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 2151
    :cond_1
    return-void
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2

    .prologue
    .line 2125
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2126
    return-void
.end method

.method private editSlideshow()V
    .locals 4

    .prologue
    .line 883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 890
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$28;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ComposeMessageActivity$28;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 896
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$29;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$29;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 910
    const v0, 0x7f070199

    .line 890
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 911
    return-void

    .line 884
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private editSmsMessageItem(JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2100
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v1

    .line 2101
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-gt v0, v5, :cond_0

    .line 2102
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 2104
    const-wide/16 v2, -0x2

    .line 2103
    invoke-static {v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2108
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2110
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 2109
    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2112
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, p3}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 2117
    if-lez v0, :cond_1

    .line 2118
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 2119
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2122
    :cond_1
    return-void

    .line 2100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3

    .prologue
    .line 2089
    iget-wide v0, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(JLjava/lang/String;)V

    .line 2090
    return-void
.end method

.method private ensureCorrectButtonHeight()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/16 v1, 0x8

    .line 6581
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    .line 6582
    if-gt v0, v2, :cond_1

    .line 6583
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6584
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_0

    .line 6585
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6595
    :cond_0
    :goto_0
    return-void

    .line 6589
    :cond_1
    if-le v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 6593
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private exitComposeMessageActivity(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 3913
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3914
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 3916
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$47;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$47;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$47;->start()V

    .line 3924
    return-void

    .line 3929
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3931
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$DiscardDraftListener;)V

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getValidNumCount()I

    move-result v1

    .line 3930
    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showDiscardDraftConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;I)V

    .line 3932
    return-void

    .line 3935
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    .line 3936
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3937
    return-void
.end method

.method private forwardMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    .line 2203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTempThreadId:J

    .line 2209
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$36;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$36;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2242
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$37;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$37;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 2291
    const v3, 0x7f070199

    .line 2209
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 2292
    return-void
.end method

.method private forwardRcsMessage(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const v3, 0x7f070054

    .line 10377
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    .line 10381
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsForwardItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 10383
    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    const/4 v2, 0x0

    .line 10382
    invoke-static {p0, p1, v2, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;J)Z

    move-result v0

    .line 10384
    if-eqz v0, :cond_0

    .line 10385
    const v0, 0x7f070053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 10392
    :goto_0
    return-void

    .line 10387
    :cond_0
    const v0, 0x7f070054

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10389
    :catch_0
    move-exception v0

    .line 10390
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto :goto_0
.end method

.method private getAttachFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 8050
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->URI_SCHEME_CONTENT:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8051
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->URI_HOST_MEDIA:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 8050
    if-eqz v0, :cond_2

    .line 8052
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8054
    if-eqz v1, :cond_1

    .line 8056
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8057
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->FILE_PATH_COLUMN:Ljava/lang/String;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 8060
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8057
    return-object v0

    .line 8060
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8063
    :cond_1
    return-object v2

    .line 8059
    :catchall_0
    move-exception v0

    .line 8060
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8059
    throw v0

    .line 8065
    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAttachmentMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 6130
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6131
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 6132
    const-string/jumbo v6, "*/*"

    .line 6134
    const-string/jumbo v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6137
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 6138
    const-string/jumbo v1, "mime_type"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 6137
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 6149
    :goto_0
    if-eqz v1, :cond_0

    .line 6151
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6152
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6153
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attachmentType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6156
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v6, v0

    .line 6167
    :cond_0
    :goto_2
    return-object v6

    .line 6145
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 6146
    goto :goto_0

    .line 6139
    :catch_1
    move-exception v0

    move-object v1, v7

    .line 6144
    goto :goto_0

    .line 6155
    :catchall_0
    move-exception v0

    .line 6156
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6155
    throw v0

    .line 6159
    :cond_1
    const-string/jumbo v0, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6160
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6161
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->is3GPP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->is3GPP2(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6162
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/mms/ui/MessageUtils;->getMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6163
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remap file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getBody(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7886
    if-nez p1, :cond_0

    .line 7887
    return-object v5

    .line 7889
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 7890
    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7891
    return-object v5

    .line 7893
    :cond_1
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7894
    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 7895
    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_3

    aget-object v3, v1, v0

    .line 7896
    const-string/jumbo v4, "body="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7898
    const/4 v4, 0x5

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 7899
    :catch_0
    move-exception v3

    .line 7895
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7902
    :cond_3
    return-object v5
.end method

.method private getContactUriForEmail(Ljava/lang/String;)Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1977
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1978
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1979
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string/jumbo v0, "contact_id"

    aput-object v0, v3, v5

    const-string/jumbo v0, "display_name"

    aput-object v0, v3, v6

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    .line 1977
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1981
    if-eqz v1, :cond_2

    .line 1983
    :cond_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1984
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1985
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1986
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1986
    return-object v0

    .line 1990
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1993
    :cond_2
    return-object v4

    .line 1989
    :catchall_0
    move-exception v0

    .line 1990
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1989
    throw v0
.end method

.method private getContactUriForPhoneNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 1997
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 1998
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1999
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2001
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 8113
    return-object p0
.end method

.method private getFromClipboard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2179
    const-string/jumbo v1, ""

    .line 2181
    const-string/jumbo v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 2182
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .line 2183
    if-eqz v0, :cond_0

    .line 2184
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    .line 2185
    if-eqz v0, :cond_0

    .line 2186
    invoke-virtual {v0, p0}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2187
    if-eqz v0, :cond_1

    .line 2188
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 2191
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 8103
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    return-object v0
.end method

.method private getMakRequestCode(ZI)I
    .locals 1

    .prologue
    .line 5069
    if-eqz p1, :cond_0

    .line 5070
    const/high16 v0, 0x10000

    or-int/2addr v0, p2

    return v0

    .line 5072
    :cond_0
    return p2
.end method

.method private getMediaStateFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 8041
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 8042
    const-string/jumbo v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8043
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8044
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 8045
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->BROADCAST_DATA_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 8046
    return-object v0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 7361
    if-eqz p1, :cond_1

    .line 7362
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 7363
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 7362
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7364
    if-eqz v1, :cond_1

    .line 7366
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v7, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7367
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 7370
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7367
    return-wide v2

    .line 7370
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7374
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    .line 7369
    :catchall_0
    move-exception v0

    .line 7370
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7369
    throw v0
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 10150
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .line 10151
    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 10153
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 10155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10156
    const-string/jumbo v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 10157
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 10159
    :cond_0
    if-eqz v0, :cond_1

    .line 10160
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 10162
    :cond_1
    return-object v3
.end method

.method private getRecipientNum([J)Ljava/lang/String;
    .locals 11

    .prologue
    .line 11088
    const-string/jumbo v7, ""

    .line 11089
    const-string/jumbo v6, ""

    .line 11090
    const-string/jumbo v0, ""

    .line 11091
    const-string/jumbo v0, ""

    .line 11092
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 11093
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11094
    const/4 v0, 0x0

    array-length v10, p1

    move v8, v0

    :goto_0
    if-ge v8, v10, :cond_5

    aget-wide v4, p1, v8

    .line 11095
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    .line 11096
    const-string/jumbo v0, "data1"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string/jumbo v0, "mimetype"

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const-string/jumbo v0, "is_primary"

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 11097
    const-string/jumbo v0, "is_super_primary"

    const/4 v3, 0x3

    aput-object v0, v2, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "( mimetype = \"vnd.android.cursor.item/phone_v2\" ) AND ( raw_contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11099
    const-string/jumbo v3, " )"

    .line 11097
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11099
    const/4 v4, 0x0

    .line 11100
    const/4 v5, 0x0

    move-object v0, p0

    .line 11095
    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 11101
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, v6

    .line 11102
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 11103
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11104
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11105
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 11116
    :goto_2
    if-eqz v2, :cond_1

    .line 11117
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 11094
    :cond_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-object v6, v0

    move-object v7, v1

    goto :goto_0

    :cond_2
    move-object v0, v6

    move-object v1, v7

    .line 11101
    goto :goto_2

    .line 11108
    :cond_3
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object v0, v1

    .line 11109
    goto :goto_1

    .line 11111
    :cond_4
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11120
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 11121
    return-object v7

    .line 11122
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 11123
    return-object v6

    .line 11124
    :cond_7
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_8

    .line 11125
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11127
    :cond_8
    const-string/jumbo v0, ""

    return-object v0

    :cond_9
    move-object v1, v7

    goto :goto_2
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 2792
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2793
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    if-nez v0, :cond_0

    .line 2794
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    .line 2796
    :cond_0
    sget-object v0, Lcom/android/mms/ui/ComposeMessageActivity;->sEmptyContactList:Lcom/android/mms/data/ContactList;

    return-object v0

    .line 2798
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method private getRequestCode(I)I
    .locals 1

    .prologue
    .line 5065
    const v0, -0x10001

    and-int/2addr v0, p1

    return v0
.end method

.method private getRequiredRecipient()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 6498
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    .line 6500
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v2, :cond_0

    .line 6501
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    .line 6503
    :cond_0
    sub-int v0, v1, v0

    return v0
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 6285
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6286
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 1879
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 1880
    if-nez v0, :cond_0

    .line 1886
    return-object v3

    .line 1895
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getBodyTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 1896
    if-eqz v0, :cond_2

    .line 1897
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1898
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1899
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    move v5, v0

    move-object v0, v2

    move v2, v1

    move v1, v5

    .line 1904
    :goto_0
    if-eq v2, v1, :cond_1

    .line 1905
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1906
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1908
    check-cast v0, Landroid/text/Spanned;

    .line 1909
    const-class v2, Landroid/text/style/URLSpan;

    .line 1908
    invoke-interface {v0, v4, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 1911
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1912
    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1917
    :cond_1
    return-object v3

    :cond_2
    move v2, v1

    move-object v0, v3

    goto :goto_0
.end method

.method public static getSendContactColor()I
    .locals 1

    .prologue
    .line 10809
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendContactColor:I

    return v0
.end method

.method private getSenderNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 10263
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10264
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10267
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSizeWithOverHead(I)I
    .locals 1

    .prologue
    .line 7124
    add-int/lit16 v0, p1, 0x400

    add-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private getSlideNumber()I
    .locals 2

    .prologue
    .line 5043
    const/4 v0, 0x0

    .line 5044
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 5045
    if-eqz v1, :cond_0

    .line 5046
    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 5048
    :cond_0
    return v0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4

    .prologue
    .line 2733
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2735
    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2736
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2738
    :cond_0
    return-object v1
.end method

.method private getVTCapability(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    if-eqz v0, :cond_0

    .line 11023
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    invoke-interface {v0, p1}, Lorg/codeaurora/presenceserv/IPresenceService;->hasVTCapability(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 11026
    return v0

    .line 11027
    :catch_0
    move-exception v0

    .line 11028
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVTCapability ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11031
    :cond_0
    return v4
.end method

.method private getValidNumCount()I
    .locals 2

    .prologue
    .line 3941
    const/4 v0, -0x2

    .line 3942
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3943
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->getValidRecipientsCount(Z)I

    move-result v0

    .line 3945
    :cond_0
    return v0
.end method

.method private goToConversationList()V
    .locals 2

    .prologue
    .line 3956
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 3957
    const-string/jumbo v0, ""

    .line 3958
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3959
    if-eqz v1, :cond_0

    .line 3960
    const-string/jumbo v0, "start_compose_from"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3962
    :cond_0
    const-class v1, Lcom/android/mms/ui/SearchConversationActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3963
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 3969
    :goto_0
    return-void

    .line 3964
    :cond_1
    const-class v1, Lcom/android/mms/ui/NotificationConversationList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3965
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/NotificationConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3967
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleAddAttachmentError(II)V
    .locals 3

    .prologue
    .line 5835
    if-nez p1, :cond_0

    .line 5836
    return-void

    .line 5838
    :cond_0
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAddAttachmentError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5840
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$61;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/mms/ui/ComposeMessageActivity$61;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 5883
    return-void
.end method

.method private handleForwardedMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 6042
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 6046
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-nez v0, :cond_1

    .line 6047
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 6048
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/Conversation;->setHasMmsForward(Z)V

    .line 6050
    :cond_0
    return v5

    .line 6053
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    .line 6054
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v6}, Lcom/android/mms/data/Conversation;->setHasMmsForward(Z)V

    .line 6055
    const-string/jumbo v0, "msg_recipient"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 6056
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/Conversation;->setForwardRecipientNumber([Ljava/lang/String;)V

    .line 6058
    :cond_2
    const-string/jumbo v0, "msg_uri"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6060
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6064
    :cond_3
    if-eqz v0, :cond_4

    .line 6065
    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6066
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v2, "subject"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 6072
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 6074
    return v6

    .line 6068
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private handleMessageSizeExceededWarning(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9335
    if-eqz p1, :cond_0

    .line 9336
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9337
    const v1, 0x7f070177

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9338
    const v1, 0x7f07032d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 9339
    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 9341
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$83;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$83;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    .line 9340
    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9350
    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9351
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9353
    :cond_0
    return-void
.end method

.method private handleMultipleMimeTypes(Landroid/content/Intent;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 11204
    if-nez p1, :cond_0

    .line 11205
    return-void

    .line 11207
    :cond_0
    const-string/jumbo v2, "*/*"

    .line 11208
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 11209
    if-nez v0, :cond_1

    .line 11210
    return-void

    .line 11212
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    .line 11213
    const-string/jumbo v4, "android.intent.extra.STREAM"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 11215
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 11216
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 11217
    add-int v5, v3, v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v6

    if-le v5, v6, :cond_2

    .line 11218
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v5

    sub-int v0, v5, v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11221
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11222
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    .line 11221
    const v1, 0x7f070196

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 11220
    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 11230
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v6

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$99;

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageActivity$99;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;ILjava/util/ArrayList;Z)V

    .line 11257
    const v1, 0x7f070197

    .line 11230
    invoke-virtual {v6, v0, v7, v1}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 11258
    return-void

    :cond_3
    move v0, v1

    .line 11215
    goto :goto_0
.end method

.method private handleRcsGroupChatBooted(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/16 v8, 0xc

    const/4 v1, 0x0

    .line 10722
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v2

    .line 10723
    if-eqz v2, :cond_0

    .line 10724
    const-string/jumbo v0, "groupChatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 10725
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 10726
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "phoneNumber: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10731
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBasicApi:Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getAccount()Ljava/lang/String;

    move-result-object v1

    .line 10732
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "myPhoneNumber: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " -> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10739
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update group state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10742
    invoke-virtual {v2, v8}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->setStatus(I)V

    .line 10743
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 10747
    :cond_0
    return-void

    .line 10736
    :catch_0
    move-exception v0

    .line 10737
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 10734
    :catch_1
    move-exception v0

    .line 10735
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRcsGroupChatCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 10672
    const-string/jumbo v0, "groupChatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10673
    const-string/jumbo v2, "subject"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10674
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v3

    .line 10675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleRcsGroupChatCreate(): groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", groupChat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10677
    if-eqz v3, :cond_0

    .line 10678
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    invoke-virtual {v3}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 10679
    invoke-virtual {v3}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10680
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->setStatus(I)V

    .line 10681
    invoke-virtual {v3, v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->setSubject(Ljava/lang/String;)V

    .line 10682
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 10683
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 10685
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10686
    new-instance v2, Lcom/android/mms/data/ContactList;

    invoke-direct {v2}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 10687
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->notifyChangeGroupChat(J)V

    .line 10688
    const v0, 0x7f070013

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 10691
    :cond_0
    return-void
.end method

.method private handleRcsGroupChatDeleted(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 10655
    const-string/jumbo v0, "groupChatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10656
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10657
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 10659
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatById(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 10660
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 10661
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10662
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10669
    :cond_0
    :goto_0
    return-void

    .line 10665
    :catch_0
    move-exception v0

    .line 10666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 10663
    :catch_1
    move-exception v0

    .line 10664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception onDisband()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRcsGroupChatDeparted(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 10643
    :try_start_0
    const-string/jumbo v0, "groupChatId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 10644
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatById(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 10645
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 10646
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10652
    :goto_0
    return-void

    .line 10649
    :catch_0
    move-exception v0

    .line 10650
    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 10647
    :catch_1
    move-exception v0

    .line 10648
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleRcsGroupChatUpdateRemark(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 10708
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 10709
    if-eqz v0, :cond_0

    .line 10710
    const-string/jumbo v1, "groupChatId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 10711
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 10712
    const-string/jumbo v1, "remark"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update group subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getRemark()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10715
    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->setRemark(Ljava/lang/String;)V

    .line 10716
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 10719
    :cond_0
    return-void
.end method

.method private handleRcsGroupChatUpdateSubject(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 10694
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 10695
    if-eqz v0, :cond_0

    .line 10696
    const-string/jumbo v1, "groupChatId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 10697
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 10698
    const-string/jumbo v1, "subject"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update group subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/suntek/rcs/ui/common/RcsLog;->d(Ljava/lang/String;)V

    .line 10701
    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->setSubject(Ljava/lang/String;)V

    .line 10702
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 10705
    :cond_0
    return-void
.end method

.method private handleResendMessage()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 3251
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 3252
    const-string/jumbo v0, "needResend"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 3253
    if-nez v0, :cond_0

    .line 3254
    return-void

    .line 3256
    :cond_0
    const-string/jumbo v0, "message_id"

    invoke-virtual {v1, v0, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3257
    const-string/jumbo v0, "message_type"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3258
    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 3259
    const-string/jumbo v4, "sms"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3260
    const-string/jumbo v0, "message_body"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3261
    invoke-direct {p0, v2, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(JLjava/lang/String;)V

    .line 3262
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3263
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3279
    :cond_1
    :goto_0
    return-void

    .line 3265
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3266
    const-string/jumbo v0, ""

    .line 3267
    const-string/jumbo v3, "message_subject"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3268
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3269
    const-string/jumbo v0, "message_subject_charset"

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3270
    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 3271
    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 3270
    invoke-direct {v1, v0, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 3272
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3274
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->editMmsMessageItem(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3275
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3276
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private handleSendIntent()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 6079
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6080
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 6081
    if-nez v1, :cond_0

    .line 6082
    return v2

    .line 6085
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 6086
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 6087
    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 6088
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6089
    const-string/jumbo v0, "android.intent.extra.STREAM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 6090
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v1

    .line 6091
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "as_vcard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6092
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->createVcardFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 6093
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setVcardPath(Ljava/lang/String;)V

    .line 6094
    sput-boolean v6, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcard:Z

    .line 6095
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 6096
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cacheWorkingMessage()V

    .line 6097
    return v2

    :cond_1
    move v1, v2

    .line 6090
    goto :goto_0

    .line 6099
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v1

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$74;

    invoke-direct {v2, p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$74;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Ljava/lang/String;)V

    .line 6106
    const v0, 0x7f070197

    .line 6099
    invoke-virtual {v1, v2, v7, v0}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 6107
    return v6

    .line 6108
    :cond_3
    const-string/jumbo v0, "android.intent.extra.TEXT"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6109
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 6110
    return v6

    .line 6112
    :cond_4
    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 6113
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 6112
    if-eqz v1, :cond_5

    .line 6114
    invoke-direct {p0, v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->handleMultipleMimeTypes(Landroid/content/Intent;Z)V

    .line 6115
    return v6

    .line 6117
    :cond_5
    return v2
.end method

.method private handleUnsupportedTypeWarning(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9314
    if-eqz p1, :cond_0

    .line 9315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9316
    const v1, 0x7f07032c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 9317
    const v1, 0x7f07032d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 9318
    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 9320
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$82;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$82;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    .line 9319
    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9329
    const v1, 0x7f0701ad

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9330
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9332
    :cond_0
    return-void
.end method

.method private hasConvertRcsAttachmentToMmsAndSent()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 9643
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->shouldSendMessageWithRcsPolicy()Z

    move-result v0

    .line 9644
    if-eqz v0, :cond_0

    .line 9645
    return v5

    .line 9646
    :cond_0
    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiringRcsAttachment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9647
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 9649
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v0

    .line 9650
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRcsMediaMsg(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9652
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9651
    invoke-static {v0, v1}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFileSizes(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    .line 9653
    sget-wide v2, Lcom/android/mms/ui/ComposeMessageActivity;->BYTE_TO_KB:J

    div-long/2addr v0, v2

    sget-wide v2, Lcom/android/mms/ui/ComposeMessageActivity;->MMS_LIMIT_SIZE:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 9654
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 9655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendAfterResize:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9666
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9686
    :pswitch_0
    const v0, 0x7f0700e4

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 9687
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getRcsType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 9688
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetRcsMessage()V

    .line 9694
    :cond_2
    :goto_1
    return v4

    .line 9657
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 9658
    const v0, 0x7f070177

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9659
    return v4

    .line 9663
    :catch_0
    move-exception v0

    .line 9664
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9668
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    .line 9669
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendAfterResize:Z

    if-nez v0, :cond_2

    .line 9670
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_1

    .line 9674
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    .line 9675
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_1

    .line 9678
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    .line 9679
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_1

    .line 9682
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;)V

    .line 9683
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_1

    .line 9690
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    goto :goto_1

    .line 9696
    :cond_5
    return v5

    .line 9666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private hideKeyboard()V
    .locals 3

    .prologue
    .line 7279
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7280
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 7281
    return-void
.end method

.method private hideOrShowTopPanel()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 3141
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v3

    .line 3142
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3143
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 3144
    return-void

    :cond_0
    move v0, v2

    .line 3142
    goto :goto_0

    :cond_1
    move v2, v1

    .line 3143
    goto :goto_1
.end method

.method private hideRecipientEditor()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 3972
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 3973
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 3975
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3976
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3978
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    .line 3980
    :cond_1
    return-void
.end method

.method private imageDispose(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 10055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isDisposeImage:Z

    .line 10056
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 10057
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10058
    const v2, 0x7f0700c0

    .line 10057
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 10059
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$91;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$91;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 10057
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10090
    return-void
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7378
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 7379
    if-eqz p1, :cond_2

    .line 7380
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 7381
    const-string/jumbo v0, "recipients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7384
    invoke-static {v0, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7383
    invoke-static {p0, v0, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 7386
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 7387
    const-string/jumbo v0, "exit_on_sent"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 7388
    const-string/jumbo v0, "forwarded_message"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    .line 7390
    const-string/jumbo v0, "reply_mode"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    .line 7392
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    if-eqz v0, :cond_1

    .line 7394
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 7396
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->readStateFromBundle(Landroid/os/Bundle;)V

    .line 7398
    return-void

    .line 7402
    :cond_2
    const-string/jumbo v1, "thread_id"

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7403
    cmp-long v1, v2, v8

    if-lez v1, :cond_6

    .line 7405
    invoke-static {p0, v2, v3, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 7434
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 7435
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 7437
    const-string/jumbo v1, "exit_on_sent"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    .line 7438
    const-string/jumbo v1, "forwarded_message"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    .line 7439
    const-string/jumbo v1, "reply_message"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mReplyMessageMode:Z

    .line 7441
    const-string/jumbo v1, "reply_mode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    .line 7443
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    if-eqz v1, :cond_4

    .line 7445
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1, v6}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 7447
    :cond_4
    const-string/jumbo v1, "sms_body"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7448
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v2, "sms_body"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 7450
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 7451
    return-void

    .line 7407
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 7408
    if-eqz v1, :cond_7

    .line 7411
    invoke-static {p0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 7412
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getBody(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7415
    :cond_7
    const-string/jumbo v1, "address"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7416
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 7417
    const-string/jumbo v2, "isGroupChat"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 7419
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 7420
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-static {v1, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 7422
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v5}, Lcom/android/mms/data/Conversation;->setIsGroupChat(Z)V

    goto/16 :goto_0

    .line 7425
    :cond_8
    invoke-static {v1, v4, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-static {p0, v1, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto/16 :goto_0

    .line 7430
    :cond_9
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    goto/16 :goto_0
.end method

.method private initFocus()V
    .locals 2

    .prologue
    .line 7454
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-nez v0, :cond_0

    .line 7455
    return-void

    .line 7461
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7462
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7461
    if-eqz v0, :cond_2

    .line 7463
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 7465
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/NonTouchUtils;->isDeviceNonTouchAnd12Key(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7466
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07037f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 7468
    :cond_1
    return-void

    .line 7472
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7473
    return-void
.end method

.method private initGroupChat(Landroid/content/Intent;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 9827
    const-string/jumbo v0, "groupId"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 9828
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 9830
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatById(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 9831
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 9832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9853
    :cond_0
    :goto_0
    return-void

    .line 9835
    :catch_0
    move-exception v0

    .line 9836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception initRcsComponents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 9833
    :catch_1
    move-exception v0

    .line 9834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception initRcsComponents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 9839
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 9840
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 9842
    :try_start_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    invoke-virtual {v2, v0, v1}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatByThreadId(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 9844
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/Conversation;->setGroupChat(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    .line 9845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z
    :try_end_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 9846
    :catch_2
    move-exception v0

    .line 9847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception initRcsComponents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 9848
    :catch_3
    move-exception v0

    .line 9849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception initRcsComponents()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 6871
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 6872
    return-void

    .line 6875
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6876
    if-nez v0, :cond_2

    move-object v5, v2

    .line 6881
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 6882
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setIsMsimIccCardActived(Z)V

    .line 6883
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 6884
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 6885
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMMSAudioPlayer(Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;)V

    .line 6886
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    # PERF(history): anchor full-cursor refreshes
    invoke-static {p0, v0}, Lcom/android/mms/ui/WaveHistory;->attach(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/ListView;)V

    .line 6887
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 6888
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6889
    :cond_1
    const/4 v0, 0x4

    .line 6888
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 6891
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$79;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$79;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 6924
    new-instance v0, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {v0, v1}, Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileTranferReceiver:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

    .line 6925
    new-instance v0, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;-><init>(Lcom/android/mms/ui/MessageListAdapter;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCloudFileReceiver:Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;

    .line 6926
    return-void

    .line 6878
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto/16 :goto_0

    :cond_3
    move v0, v6

    .line 6889
    goto :goto_1
.end method

.method private initRcsComponents()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 9799
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 9801
    const-string/jumbo v2, "isGroupChat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_0

    .line 9802
    const-string/jumbo v2, "isGroupChat"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 9803
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/Conversation;->setIsGroupChat(Z)V

    .line 9805
    :cond_0
    const-string/jumbo v2, "fromNormol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9806
    const-string/jumbo v2, "fromNormol"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCreateNewMessageFromConversationList:Z

    .line 9808
    :cond_1
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageApi:Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    .line 9809
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/basic/BasicApi;->getInstance()Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBasicApi:Lcom/suntek/mway/rcs/client/api/basic/BasicApi;

    .line 9810
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;->getInstance()Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCapabilityApi:Lcom/suntek/mway/rcs/client/api/capability/CapabilityApi;

    .line 9811
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->getInstance()Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSupportApi:Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    .line 9812
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/profile/ProfileApi;->getInstance()Lcom/suntek/mway/rcs/client/api/profile/ProfileApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mProfileApi:Lcom/suntek/mway/rcs/client/api/profile/ProfileApi;

    .line 9813
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getInstance()Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    .line 9814
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    .line 9815
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v3, :cond_4

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 9817
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_3

    .line 9818
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9819
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->initGroupChat(Landroid/content/Intent;)V

    .line 9824
    :cond_3
    :goto_1
    return-void

    .line 9815
    :cond_4
    const/16 v0, 0x8

    goto :goto_0

    .line 9820
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_3

    .line 9821
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sendRcsOption()V

    goto :goto_1
.end method

.method private initRecipientsEditor()V
    .locals 8

    .prologue
    const v7, 0x7f0f014d

    const v6, 0x7f0f013c

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 2921
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2922
    return-void

    .line 2926
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 2928
    const v0, 0x7f0f0021

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 2929
    if-eqz v0, :cond_2

    .line 2930
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    .line 2931
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2932
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    .line 2933
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2934
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAddContactMenu:Z

    .line 2935
    const v0, 0x7f0f014e

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    .line 2944
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2945
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2946
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2947
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2948
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v2, Lcom/android/mms/ui/ChipsRecipientAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/ChipsRecipientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2951
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$39;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$39;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/ContactList;)V

    .line 2964
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2973
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$40;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$40;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnSelectChipRunnable(Ljava/lang/Runnable;)V

    .line 2992
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$41;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$41;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3010
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {p0, v0}, Lcom/android/mms/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V

    .line 3012
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_1

    .line 3013
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    .line 3015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOrientation(Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;)V

    .line 3020
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3021
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 3022
    return-void

    .line 2937
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RecipientsEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    .line 2938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/RecipientsEditor;->setVisibility(I)V

    .line 2939
    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    .line 2940
    const v0, 0x7f0f014e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    .line 2941
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2942
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAddContactMenu:Z

    goto/16 :goto_0

    .line 3017
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->LANDSCAPE:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOrientation(Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;)V

    goto :goto_1
.end method

.method private initResourceRefs()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const v8, 0x7f0a0001

    const v7, 0x7f0a0002

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6638
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040009

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 6639
    new-instance v1, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    .line 6640
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v1, p0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->addZoomListener(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;)V

    .line 6641
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->addView(Landroid/view/View;)V

    .line 6642
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->setEventsInterceptionEnabled(Z)V

    .line 6643
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->setGestureVisible(Z)V

    .line 6644
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setContentView(Landroid/view/View;)V

    .line 6646
    const v0, 0x7f0f001e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    .line 6648
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    if-nez v0, :cond_0

    .line 6649
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    .line 6651
    :cond_0
    const v0, 0x7f0f0020

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackView:Landroid/widget/ImageButton;

    .line 6652
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6653
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6657
    const v0, 0x7f0f0022

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 6658
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 6659
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_1

    .line 6660
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$76;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$76;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6678
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListView;->setClipToPadding(Z)V

    .line 6680
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$77;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$77;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnSizeChangedListener(Lcom/android/mms/ui/MessageListView$OnSizeChangedListener;)V

    .line 6701
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    .line 6702
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 6704
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_7

    .line 6705
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initTwoSendButton()V

    .line 6721
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 6722
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6723
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 6724
    const-string/jumbo v0, "pref_key_zoom_message"

    .line 6725
    const/high16 v2, 0x41600000    # 14.0f

    .line 6724
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 6726
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTextSize(F)V

    .line 6727
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_8

    .line 6728
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 6729
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    .line 6728
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6734
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_9

    .line 6735
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v0

    .line 6736
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6737
    const-string/jumbo v2, "pref_key_enable_signature"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6738
    const-string/jumbo v2, "pref_key_edit_signature"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    .line 6740
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 6741
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 6744
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 6745
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    .line 6744
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 6750
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$78;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$78;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 6763
    const v0, 0x7f0f001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    .line 6764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 6765
    const v0, 0x7f0f0032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MultiAttachmentEditor;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    .line 6766
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/MultiAttachmentEditor;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6767
    const v0, 0x7f0f0031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorScrollView:Landroid/view/View;

    .line 6768
    const v0, 0x7f0f0058

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    .line 6769
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsThumbnailLayout:Landroid/view/View;

    .line 6770
    const v0, 0x7f0f0023

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    .line 6771
    return-void

    .line 6707
    :cond_7
    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 6708
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 6709
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 6710
    const v0, 0x7f0f003d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    .line 6711
    const v0, 0x7f0f003f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 6712
    const v0, 0x7f0f0038

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    .line 6713
    const v0, 0x7f0f0040

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    .line 6714
    const v0, 0x7f0f0041

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsText:Landroid/widget/TextView;

    .line 6715
    const v0, 0x7f0f0042

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    .line 6716
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6717
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6718
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6719
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 6730
    :cond_8
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 6731
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v2, v6, [Landroid/text/InputFilter;

    .line 6732
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v5

    .line 6731
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_1

    .line 6746
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_6

    .line 6747
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    new-array v1, v6, [Landroid/text/InputFilter;

    .line 6748
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v5

    .line 6747
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_2
.end method

.method private initTwoSendButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6774
    const v0, 0x7f0f0043

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    .line 6775
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 6776
    const v0, 0x7f0f0044

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    .line 6777
    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    .line 6778
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    .line 6779
    const v0, 0x7f0f0047

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    .line 6780
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    .line 6781
    const v0, 0x7f0f004e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    .line 6782
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsFir:Landroid/view/View;

    .line 6783
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsFir:Landroid/view/View;

    .line 6784
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimMmsFir:Landroid/widget/ImageView;

    .line 6785
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimSmsFir:Landroid/widget/ImageView;

    .line 6786
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimMmsFir:Landroid/widget/ImageView;

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6788
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimSmsFir:Landroid/widget/ImageView;

    invoke-static {p0, v2}, Lcom/android/mms/ui/MessageUtils;->getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6790
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6791
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6792
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6793
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6795
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    .line 6796
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsViewSec:Landroid/widget/TextView;

    .line 6797
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSmsViewSec:Landroid/widget/ImageButton;

    .line 6798
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsSec:Landroid/view/View;

    .line 6799
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsSec:Landroid/view/View;

    .line 6800
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimMmsSec:Landroid/widget/ImageView;

    .line 6801
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimSmsSec:Landroid/widget/ImageView;

    .line 6802
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimMmsSec:Landroid/widget/ImageView;

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6804
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIndicatorForSimSmsSec:Landroid/widget/ImageView;

    invoke-static {p0, v3}, Lcom/android/mms/ui/MessageUtils;->getMultiSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6806
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsViewSec:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6807
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSmsViewSec:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6808
    return-void
.end method

.method private inputNumbers(Landroid/os/Bundle;Ljava/util/Set;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 5693
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    .line 5695
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5696
    add-int/lit8 v2, v0, 0x1

    .line 5697
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 5698
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/mms/ui/RecipientsEditor;->append(Ljava/lang/CharSequence;)V

    .line 5699
    if-ne v2, p3, :cond_1

    .line 5703
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private insertContact(Landroid/net/Uri;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 11045
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 11046
    const-string/jumbo v0, ""

    .line 11047
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11049
    const-string/jumbo v1, "display_name"

    .line 11048
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11049
    const-string/jumbo v1, " : "

    .line 11048
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 11051
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 11052
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "lookup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11053
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 11054
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11055
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    .line 11056
    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "_id"

    aput-object v6, v5, v9

    .line 11057
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "contact_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v2

    .line 11055
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 11058
    if-nez v3, :cond_1

    .line 11059
    return-void

    :cond_0
    move-object v1, v0

    .line 11047
    goto :goto_0

    .line 11061
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v4, v0, [J

    move v0, v9

    .line 11063
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11064
    add-int/lit8 v2, v0, 0x1

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    aput-wide v6, v4, v0

    move v0, v2

    goto :goto_1

    .line 11066
    :cond_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 11067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipientNum([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11079
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 11080
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 11081
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11086
    :goto_3
    return-void

    .line 11070
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 11072
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v5, v9

    const-string/jumbo v0, "data1"

    aput-object v0, v5, v6

    const-string/jumbo v0, "data2"

    const/4 v4, 0x2

    aput-object v0, v5, v4

    .line 11073
    const-string/jumbo v0, "data3"

    const/4 v4, 0x3

    aput-object v0, v5, v4

    move-object v4, p1

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 11070
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 11074
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11075
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11076
    const-string/jumbo v2, "data1"

    .line 11075
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 11083
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 11084
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 11083
    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private isAppendRequest(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5061
    const/high16 v1, 0x10000

    and-int/2addr v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAttachmentFileLegality(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9700
    invoke-static {p1, p2}, Lcom/suntek/rcs/ui/common/RcsFileController;->checkFileLegality(Ljava/lang/String;I)I

    move-result v0

    .line 9701
    if-nez v0, :cond_0

    .line 9702
    return v2

    .line 9703
    :cond_0
    if-ne v0, v2, :cond_1

    .line 9704
    const v0, 0x7f0700ef

    .line 9705
    packed-switch p2, :pswitch_data_0

    .line 9718
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 9719
    return v1

    .line 9707
    :pswitch_0
    const v0, 0x7f0700f1

    .line 9708
    goto :goto_0

    .line 9710
    :pswitch_1
    const v0, 0x7f0700f0

    .line 9711
    goto :goto_0

    .line 9713
    :pswitch_2
    const v0, 0x7f0700f2

    .line 9714
    goto :goto_0

    .line 9721
    :cond_1
    const v0, 0x7f0700ee

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 9722
    return v1

    .line 9705
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private isAudioFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 6171
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6172
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6173
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 6174
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    return v0
.end method

.method private isCdmaNVMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 7057
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7058
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "isCdmaNVMode: CDMA NV mode just for single SIM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7059
    return v6

    .line 7061
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 7062
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 7063
    const-string/jumbo v2, "subscription_mode"

    .line 7062
    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 7064
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCdmaNVMode: activePhoneType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cdmaSubscriptionMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7066
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 7067
    if-ne v1, v5, :cond_1

    .line 7068
    return v5

    .line 7070
    :cond_1
    return v6
.end method

.method private isCursorValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1130
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1131
    return v3

    .line 1134
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1140
    :cond_1
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Bad cursor."

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    return v3

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    return v3

    .line 1143
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isForwardable(J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2526
    :try_start_0
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2525
    invoke-static {p0, v2}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 2530
    :goto_0
    if-nez v2, :cond_0

    .line 2531
    return v1

    .line 2527
    :catch_0
    move-exception v2

    .line 2528
    const-string/jumbo v2, "Mms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getDrmMimeType can\'t load pdu body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    goto :goto_0

    .line 2534
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    move v0, v1

    .line 2535
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2536
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 2537
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 2539
    invoke-static {v5}, Lcom/android/mms/drm/DrmUtils;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    .line 2540
    const/4 v5, 0x3

    .line 2539
    invoke-static {v4, v5}, Lcom/android/mms/drm/DrmUtils;->haveRightsForAction(Landroid/net/Uri;I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 2541
    return v1

    .line 2535
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2544
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private isImageFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 6178
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6179
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6180
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 6181
    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    return v0
.end method

.method private isLTEOnlyMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1462
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "network_band"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1463
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1464
    const-string/jumbo v3, "preferred_network_mode"

    .line 1463
    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1465
    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1466
    :catch_0
    move-exception v1

    .line 1467
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "isLTEOnlyMode: Could not find PREFERRED_NETWORK_MODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    return v0
.end method

.method private isLTEOnlyMode(I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1474
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1475
    const-string/jumbo v2, "network_band"

    .line 1474
    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1476
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1477
    const-string/jumbo v3, "preferred_network_mode"

    .line 1476
    invoke-static {v2, v3, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1478
    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 1479
    :catch_0
    move-exception v1

    .line 1480
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "isLTEOnlyMode: Could not find PREFERRED_NETWORK_MODE!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    return v0
.end method

.method private isPreparedForSending()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7015
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v2

    .line 7016
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v3, :cond_6

    .line 7017
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7018
    if-lez v2, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasRcsAttach()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7019
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChatActive()Z

    move-result v0

    .line 7018
    :cond_1
    return v0

    .line 7021
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 7022
    if-lez v2, :cond_4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasRcsAttach()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7023
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isMyPcConversation()Z

    move-result v0

    .line 7022
    :cond_4
    return v0

    .line 7025
    :cond_5
    if-lez v2, :cond_6

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getCacheRcsMessage()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7026
    return v1

    .line 7030
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 7031
    const-string/jumbo v1, "Mms"

    const-string/jumbo v3, "Blank SMS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7032
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getActivatedIccCardCount()I

    move-result v1

    if-gtz v1, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isCdmaNVMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7033
    :cond_7
    if-lez v2, :cond_8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v2, v1, :cond_8

    .line 7034
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 7032
    :cond_8
    return v0

    .line 7036
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getActivatedIccCardCount()I

    move-result v3

    if-gtz v3, :cond_a

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isCdmaNVMode()Z

    move-result v3

    if-nez v3, :cond_a

    .line 7037
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v3

    .line 7036
    if-eqz v3, :cond_b

    .line 7038
    :cond_a
    if-lez v2, :cond_b

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v3

    if-gt v2, v3, :cond_b

    .line 7039
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 7036
    if-eqz v2, :cond_b

    .line 7040
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_c

    .line 7041
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    .line 7036
    :cond_b
    :goto_0
    return v0

    :cond_c
    move v0, v1

    .line 7040
    goto :goto_0
.end method

.method private isRecipientCallable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 4154
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4155
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4156
    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4155
    :cond_0
    return v0
.end method

.method private isRecipientEmpty()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3949
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3950
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/RecipientsEditor;->getValidRecipientsCount(Z)I

    move-result v2

    if-nez v2, :cond_0

    .line 3952
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 3949
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 3952
    goto :goto_0

    :cond_2
    move v0, v1

    .line 3949
    goto :goto_0
.end method

.method private isRecipientsEditorVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3983
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v1, :cond_0

    .line 3984
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3983
    :cond_0
    return v0
.end method

.method private isSpecialChar(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1859
    const/16 v1, 0x2a

    if-eq p1, v1, :cond_0

    const/16 v1, 0x25

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x24

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectEditorVisible()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3988
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 3989
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 3988
    :cond_0
    return v0
.end method

.method private isVcardFile(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 8098
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 8099
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVideoFile(Landroid/net/Uri;)Z
    .locals 1

    .prologue
    .line 6185
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 6186
    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6187
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 6188
    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    return v0
.end method

.method private launchMultiplePhonePicker()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6465
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsFilterContactsByEmail:Z

    if-eqz v0, :cond_2

    .line 6466
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.borqs.contacts.action.MULTI_PICK_EXT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6470
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1}, Lcom/android/mms/ui/RecipientsEditor;->getExsitNumbers()Ljava/lang/String;

    move-result-object v1

    .line 6471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6472
    const-string/jumbo v2, "com.android.contacts.extra.PHONE_URIS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6474
    :cond_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsFilterContactsByEmail:Z

    if-eqz v1, :cond_1

    .line 6475
    const-string/jumbo v1, "mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6478
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequiredRecipient()I

    move-result v1

    if-lez v1, :cond_3

    .line 6479
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->RECIPIENT_COUNT_LIMIT:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequiredRecipient()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6480
    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6490
    :goto_1
    return-void

    .line 6468
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 6484
    :cond_3
    const v0, 0x7f070378

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6485
    const/4 v1, 0x1

    .line 6482
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 6487
    :catch_0
    move-exception v0

    .line 6488
    const v0, 0x7f0702b9

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method private launchRcsContactGroupPicker(I)V
    .locals 2

    .prologue
    .line 9756
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9758
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9762
    :goto_0
    return-void

    .line 9759
    :catch_0
    move-exception v0

    .line 9760
    const v0, 0x7f0702b9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto :goto_0
.end method

.method private loadDraft()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6935
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6936
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "CMA.loadDraft: called with non-empty working message, bail"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6937
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6938
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 6939
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 6940
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 6941
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6943
    :cond_0
    return v2

    .line 6946
    :cond_1
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6947
    const-string/jumbo v0, "CMA.loadDraft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6950
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6951
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$80;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$80;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 6950
    invoke-static {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 6971
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 6973
    const/4 v0, 0x1

    return v0
.end method

.method private loadMessagesAndDraft(I)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 3506
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3507
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3508
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "### CMA.loadMessagesAndDraft: flag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessageContent()V

    .line 3512
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 3514
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/mms/ui/MessageUtils;->sSameRecipientList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 3515
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadDraft()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3516
    const/4 v0, 0x0

    .line 3519
    :goto_0
    if-eqz v0, :cond_1

    .line 3520
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3522
    :cond_1
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    .line 3524
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 3514
    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 2398
    const-string/jumbo v0, "sms"

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2399
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 2403
    :goto_0
    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2405
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 2406
    const-string/jumbo v4, "locked"

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2408
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$38;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity$38;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 2414
    const-string/jumbo v2, "ComposeMessageActivity.lockMessage"

    .line 2408
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2415
    return-void

    .line 2401
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 2406
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static log(Ljava/lang/String;)V
    .locals 5

    .prologue
    # PERF(launch logging): a disabled diagnostic must not capture a Java stack.
    const-string v0, "Mms"
    const/4 v1, 0x3
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v0
    if-nez v0, :wave_log_enabled
    return-void

    :wave_log_enabled
    .line 869
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 871
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 872
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    .line 874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    return-void
.end method

.method private notifyChangeGroupChat(J)V
    .locals 3

    .prologue
    .line 10180
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 10181
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/mms/ui/MessageListAdapter;->setRcsGroupId(J)V

    .line 10182
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->notifyDataSetChanged()V

    .line 10184
    :cond_0
    return-void
.end method

.method private onKeyboardStateChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3807
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getCacheRcsMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3808
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3812
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-nez v0, :cond_3

    .line 3813
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3814
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3816
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3817
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3819
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3820
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f070171

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 3840
    :goto_1
    return-void

    .line 3810
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_0

    .line 3821
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_6

    .line 3822
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_4

    .line 3823
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/RecipientsEditor;->setFocusableInTouchMode(Z)V

    .line 3825
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 3826
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3828
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 3829
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    # FEAT(imessage): dynamic compose hint ("Type SMS message" / "Type MMS message" / "Type iMessage")
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->waveUpdateComposeHint()V

    goto :goto_1

    .line 3831
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_7

    .line 3832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->setFocusable(Z)V

    .line 3834
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    .line 3835
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3837
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3838
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const v1, 0x7f070170

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    # FEAT(imessage): dynamic compose hint in closed-keyboard branch too
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->waveUpdateComposeHint()V

    goto :goto_1
.end method

.method private pasteFromClipBoard()V
    .locals 2

    .prologue
    .line 2198
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getFromClipboard()Ljava/lang/String;

    .line 2199
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPaste(I)V

    .line 2200
    return-void
.end method

.method private pickContacts(II)V
    .locals 3

    .prologue
    .line 914
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.contacts.action.MULTI_PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 915
    const-string/jumbo v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 916
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 917
    return-void
.end method

.method private processAddRecipients(Ljava/util/Set;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 5721
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsProcessPickedRecipients:Z

    .line 5722
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 5723
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-direct {v6, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 5724
    const v0, 0x7f070281

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 5725
    const v0, 0x7f070282

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 5726
    invoke-virtual {v6, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 5727
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 5729
    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$59;

    invoke-direct {v3, p0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$59;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/ProgressDialog;)V

    .line 5737
    const-wide/16 v0, 0x3e8

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5739
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$60;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$60;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/util/Set;ILandroid/app/ProgressDialog;)V

    .line 5789
    const-string/jumbo v1, "ComoseMessageActivity.processPickResult"

    .line 5739
    invoke-direct {v7, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 5790
    return-void
.end method

.method private processMsimSendMessage(IZ)V
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1353
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1355
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->setWorkingMessageSub(I)V

    .line 1356
    invoke-direct {p0, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    .line 1357
    return-void
.end method

.method private processPickResult(Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 5647
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5648
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 5649
    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v0

    .line 5650
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "result_only_number"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    .line 5651
    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 5652
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v3

    .line 5656
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v2

    .line 5657
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    add-int/2addr v7, v0

    add-int/2addr v7, v3

    .line 5658
    const v8, 0x7fffffff

    if-eq v2, v8, :cond_2

    if-le v7, v2, :cond_2

    .line 5659
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5660
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 5661
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v1

    .line 5660
    const v1, 0x7f070377

    invoke-virtual {p0, v1, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 5659
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 5662
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$58;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/ComposeMessageActivity$58;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;IILandroid/os/Bundle;Ljava/util/Set;Ljava/util/Set;)V

    const v1, 0x104000a

    .line 5659
    invoke-virtual {v7, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 5681
    const/high16 v1, 0x1040000

    .line 5659
    invoke-virtual {v0, v1, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5683
    return-void

    :cond_0
    move v0, v1

    .line 5649
    goto :goto_0

    :cond_1
    move v3, v1

    .line 5652
    goto :goto_1

    .line 5686
    :cond_2
    invoke-direct {p0, v4, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->inputNumbers(Landroid/os/Bundle;Ljava/util/Set;I)V

    .line 5687
    invoke-direct {p0, v6, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->processAddRecipients(Ljava/util/Set;I)V

    .line 5688
    return-void
.end method

.method private processedRcsActivityResult(ILandroid/content/Intent;)Z
    .locals 9

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 9394
    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    .line 9395
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 9407
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    .line 9408
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->requiringRcsAttachment()Z

    move-result v4

    .line 9409
    if-nez v3, :cond_1a

    if-eqz v4, :cond_1a

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v3, :cond_1a

    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v0, :cond_1a

    .line 9410
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1a

    .line 9411
    if-nez p2, :cond_3

    .line 9413
    const/16 v0, 0x65

    if-eq p1, v0, :cond_3

    .line 9414
    const/16 v0, 0x67

    if-eq p1, v0, :cond_3

    .line 9415
    return v1

    .line 9396
    :cond_1
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 9397
    const/16 v0, 0x2710

    if-eq p1, v0, :cond_0

    .line 9398
    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    .line 9399
    const/16 v0, 0x68

    if-eq p1, v0, :cond_0

    .line 9400
    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    .line 9401
    const/16 v0, 0x6f

    if-eq p1, v0, :cond_0

    .line 9402
    const/16 v0, 0x71

    if-eq p1, v0, :cond_0

    .line 9403
    const/16 v0, 0x73

    if-eq p1, v0, :cond_0

    .line 9404
    const/16 v0, 0x77

    if-eq p1, v0, :cond_0

    .line 9405
    const/16 v0, 0x78

    if-eq p1, v0, :cond_0

    .line 9406
    const/16 v0, 0x7a

    if-ne p1, v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    .line 9418
    :cond_3
    sparse-switch p1, :sswitch_data_0

    .line 9616
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isDisposeImage:Z

    if-nez v0, :cond_5

    .line 9617
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cacheWorkingMessage()V

    .line 9619
    :cond_5
    return v1

    .line 9420
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9421
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9422
    if-eqz v0, :cond_4

    .line 9425
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9426
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_6

    .line 9427
    return v1

    .line 9429
    :cond_6
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 9430
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    goto :goto_1

    .line 9433
    :sswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9434
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9435
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9436
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9437
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 9438
    return v1

    .line 9440
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9441
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 9442
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    goto :goto_1

    .line 9444
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->imageDispose(Ljava/lang/String;)V

    .line 9445
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsLargeImagePath:Ljava/lang/String;

    goto :goto_1

    .line 9449
    :sswitch_2
    const-string/jumbo v0, ".jpg"

    .line 9450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 9449
    invoke-static {v0, v2, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 9451
    if-nez v0, :cond_9

    .line 9452
    return v1

    .line 9454
    :cond_9
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 9455
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 9456
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9457
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->imageDispose(Ljava/lang/String;)V

    .line 9458
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsLargeImagePath:Ljava/lang/String;

    goto/16 :goto_1

    .line 9462
    :sswitch_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9463
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9464
    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_a

    .line 9465
    return v1

    .line 9467
    :cond_a
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v5}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9468
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 9469
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/mms/rcs/RcsUtils;->getDuration(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 9470
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    goto/16 :goto_1

    .line 9473
    :sswitch_4
    const-string/jumbo v0, ".3gp"

    .line 9474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 9473
    invoke-static {v0, v2, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 9476
    if-nez v0, :cond_b

    .line 9477
    return v1

    .line 9479
    :cond_b
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9480
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getDuration(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v2

    .line 9482
    const/16 v3, 0x3e8

    if-ge v2, v3, :cond_c

    .line 9483
    const v0, 0x7f0700f9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 9484
    return v1

    .line 9486
    :cond_c
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9487
    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_d

    .line 9488
    return v1

    .line 9490
    :cond_d
    if-lt v2, v1, :cond_e

    .line 9491
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v5}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9492
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 9493
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 9494
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    goto/16 :goto_1

    .line 9496
    :cond_e
    const v0, 0x7f07004a

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto/16 :goto_1

    .line 9502
    :sswitch_5
    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    .line 9501
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 9503
    if-nez v0, :cond_10

    .line 9504
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9508
    :cond_f
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9509
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 9510
    invoke-direct {p0, v3, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_11

    .line 9511
    return v1

    .line 9505
    :cond_10
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto/16 :goto_1

    .line 9513
    :cond_11
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 9514
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v8}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9515
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getDuration(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 9516
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    goto/16 :goto_1

    .line 9519
    :sswitch_6
    if-eqz p2, :cond_4

    .line 9520
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9521
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9522
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 9523
    invoke-direct {p0, v3, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_12

    .line 9524
    return v1

    .line 9526
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 9527
    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 9528
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    .line 9527
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 9529
    const-string/jumbo v5, ".3gp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, ".mp3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 9530
    const-string/jumbo v5, ".amr"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 9529
    if-nez v5, :cond_13

    .line 9530
    const-string/jumbo v5, ".aac"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 9529
    if-nez v5, :cond_13

    .line 9531
    const-string/jumbo v5, ".m4a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 9529
    if-eqz v4, :cond_14

    .line 9532
    :cond_13
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 9533
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v8}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9534
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 9535
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getDuration(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 9534
    invoke-virtual {v3, v0}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 9536
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    goto/16 :goto_1

    .line 9538
    :cond_14
    const v0, 0x7f07009a

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto/16 :goto_1

    .line 9544
    :sswitch_7
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 9545
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9546
    invoke-static {p0, v0}, Lcom/suntek/rcs/ui/common/RcsFileController;->getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 9547
    invoke-direct {p0, v2, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->isAttachmentFileLegality(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 9548
    return v1

    .line 9550
    :cond_15
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->getDuration(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 9551
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v8}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9552
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsPath(Ljava/lang/String;)V

    .line 9553
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setDuration(I)V

    .line 9554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsRecord(Z)V

    goto/16 :goto_1

    .line 9557
    :sswitch_8
    if-nez p2, :cond_16

    .line 9558
    return v1

    .line 9560
    :cond_16
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "result"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 9561
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 9562
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v0

    .line 9563
    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->buildUris(Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 9565
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 9566
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 9567
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 9568
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getPersonId()J

    move-result-wide v6

    .line 9567
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 9570
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 9569
    invoke-static {v5, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9572
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_17
    move v0, v2

    .line 9562
    goto :goto_2

    .line 9574
    :cond_18
    const-string/jumbo v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v2, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 9575
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 9576
    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9575
    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9577
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->createVcardFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9579
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setVcardPath(Ljava/lang/String;)V

    .line 9580
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    goto/16 :goto_1

    .line 9586
    :sswitch_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_19

    .line 9587
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 9589
    :cond_19
    const-string/jumbo v0, "vcard"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9590
    if-eqz v0, :cond_4

    .line 9591
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 9592
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 9593
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->createVcardFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 9595
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setVcardPath(Ljava/lang/String;)V

    .line 9596
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    goto/16 :goto_1

    .line 9600
    :sswitch_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9601
    const-string/jumbo v0, "latitude"

    const-wide v2, 0x4043f44ea4a8c155L    # 39.90865

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 9602
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setLatitude(D)V

    .line 9603
    const-string/jumbo v0, "longitude"

    const-wide v2, 0x405d1970cdc8754fL    # 116.39751

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    .line 9604
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/WorkingMessage;->setLongitude(D)V

    .line 9605
    const-string/jumbo v0, "address"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9606
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9609
    :sswitch_b
    const-string/jumbo v0, "id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9610
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 9611
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setCloudFileId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 9621
    :cond_1a
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 9622
    const v0, 0x7f0700c7

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 9623
    return v1

    .line 9625
    :cond_1b
    return v2

    .line 9418
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_7
        0x6f -> :sswitch_9
        0x73 -> :sswitch_a
        0x77 -> :sswitch_8
        0x78 -> :sswitch_b
        0x7a -> :sswitch_6
        0x2710 -> :sswitch_0
    .end sparse-switch
.end method

.method private recipientCount()I
    .locals 1

    .prologue
    .line 7080
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7081
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getRecipientCount()I

    move-result v0

    .line 7085
    :goto_0
    return v0

    .line 7083
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private registerRcsReceiver()V
    .locals 3

    .prologue
    .line 9875
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9876
    const-string/jumbo v1, "com.suntek.rcs.action.ACTION_MESSAGE_FILE_TRANSFER_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9877
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9878
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9879
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileTranferReceiver:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9880
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 9881
    const-string/jumbo v2, "com.suntek.mway.rcs.app.service.ACTION_GROUP_CHAT_MANAGE_NOTIFY"

    .line 9880
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9882
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9883
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_MCLOUD_DOWNLOAD_FILE_FROM_URL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9884
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_MCLOUD_SHARE_AND_SEND_FILE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9885
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9886
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCloudFileReceiver:Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9887
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 9888
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_MESSAGE_DOWNLOAD_EMOTICON_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9889
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEmotionDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9890
    new-instance v0, Landroid/content/IntentFilter;

    .line 9891
    const-string/jumbo v1, "com.suntek.mway.rcs.NOTIFY_CONTACT_PHOTO_CHANGE"

    .line 9890
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9892
    const-string/jumbo v1, "com.suntek.mway.rcs.app.service.ACTION_REGISTER_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 9893
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 9894
    return-void
.end method

.method private removeRecipientsListeners()V
    .locals 0

    .prologue
    .line 7861
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 7862
    return-void
.end method

.method private replyMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    .line 9857
    if-eqz p1, :cond_0

    .line 9858
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 9859
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9860
    const-wide/16 v2, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 9862
    const-string/jumbo v2, "reply_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9863
    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9866
    const-string/jumbo v0, "com.android.mms.ui.ReplyMessageActivity"

    .line 9865
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 9868
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 9871
    :cond_0
    return-void
.end method

.method private resendMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2351
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 2355
    if-nez v0, :cond_0

    .line 2356
    return-void

    .line 2359
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 2361
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 2362
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 2363
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 2376
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    .line 2377
    return-void

    .line 2365
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 2369
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->setResendMultiRecipients(Z)V

    .line 2370
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResendSmsRecipient:Ljava/lang/String;

    .line 2373
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private resetConfiguration(Landroid/content/res/Configuration;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3795
    iget v0, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    .line 3796
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 3797
    :goto_1
    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eq v3, v0, :cond_2

    .line 3798
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    .line 3799
    return v1

    :cond_0
    move v0, v2

    .line 3795
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3796
    goto :goto_1

    .line 3801
    :cond_2
    return v2
.end method

.method private resetCounter()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1147
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1148
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1149
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1153
    :cond_0
    return-void
.end method

.method private resetEditorText()V
    .locals 2

    .prologue
    .line 3286
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3288
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 3289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3290
    return-void
.end method

.method private resetGridColumnsCount()V
    .locals 5

    .prologue
    .line 5331
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5332
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentPagerAdapter:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->getPagerGridViews()Ljava/util/ArrayList;

    move-result-object v0

    .line 5333
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 5334
    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 5335
    const/4 v1, 0x3

    .line 5334
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    goto :goto_0

    .line 5336
    :cond_0
    const/4 v1, 0x6

    goto :goto_1

    .line 5338
    :cond_1
    return-void
.end method

.method private resetMessage()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 7224
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7225
    const-string/jumbo v0, "resetMessage"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 7229
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorScrollView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7230
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 7233
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 7236
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7242
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7245
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/method/TextKeyListener;->clear(Landroid/text/Editable;)V

    .line 7247
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 7248
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 7249
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 7251
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 7252
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 7255
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 7258
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7262
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 7263
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 7266
    :cond_1
    iput v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 7267
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 7268
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 7269
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 7270
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7272
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_3

    .line 7273
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelRcsMessageCache()V

    .line 7275
    :cond_3
    return-void
.end method

.method private resetRcsMessage()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 9981
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditorScrollView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9982
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 9983
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 9984
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 9985
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 9986
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 9987
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9988
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 9990
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 9991
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 9992
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 9993
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 9994
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 9996
    :cond_1
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastRecipientCount:I

    .line 9997
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 9998
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 9999
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    .line 10000
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->cancelRcsMessageCache()V

    .line 10002
    :cond_2
    return-void
.end method

.method private sanityCheckConversation()V
    .locals 2

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eq v0, v1, :cond_0

    .line 3374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ComposeMessageActivity: mWorkingMessage.mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3375
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 3374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3375
    const-string/jumbo v1, ", mConversation="

    .line 3374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3376
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3376
    const-string/jumbo v1, ", MISMATCH!"

    .line 3374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3373
    invoke-static {v0, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 3378
    :cond_0
    return-void
.end method

.method private saveAttachment()V
    .locals 2

    .prologue
    # FEAT(imessage): iMessage attachments are saved full-size from the server, not the preview.
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/WaveIMessageSave;->saveFullSize(Landroid/app/Activity;J)Z

    move-result v0

    if-eqz v0, :wave_save_stock

    return-void

    :wave_save_stock
    .line 2722
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(J)Z

    move-result v0

    .line 2723
    if-eqz v0, :cond_0

    .line 2724
    const v0, 0x7f07010e

    .line 2729
    :goto_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2730
    return-void

    .line 2726
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mNoSpace:Z

    if-eqz v0, :cond_1

    const v0, 0x7f070110

    goto :goto_0

    .line 2727
    :cond_1
    const v0, 0x7f07010f

    goto :goto_0
.end method

.method private saveDraft(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 6977
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6978
    const-string/jumbo v0, "saveDraft"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6983
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6984
    return-void

    .line 6987
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isBurn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6988
    return-void

    .line 6990
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    if-nez v0, :cond_5

    .line 6991
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 6990
    if-eqz v0, :cond_5

    .line 6992
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-nez v0, :cond_5

    .line 6994
    :cond_3
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6995
    const-string/jumbo v0, "not worth saving, discard WorkingMessage and bail"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6997
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 6998
    return-void

    .line 6993
    :cond_5
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkIsPhoneMemoryFull(Landroid/content/Context;)Z

    move-result v0

    .line 6990
    if-nez v0, :cond_3

    .line 7001
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->saveDraft(Z)V

    .line 7003
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToastForDraftSave:Z

    if-eqz v0, :cond_6

    .line 7004
    const v0, 0x7f070194

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7007
    :cond_6
    return-void
.end method

.method private selectVCalendar()V
    .locals 3

    .prologue
    .line 5194
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5195
    const-string/jumbo v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5196
    const/16 v1, 0x72

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5202
    :goto_0
    return-void

    .line 5197
    :catch_0
    move-exception v0

    .line 5198
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "Calender application may disabled."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5199
    const v0, 0x7f070108

    .line 5200
    const/4 v1, 0x0

    .line 5199
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private sendMessage(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 7128
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hasConvertRcsAttachmentToMmsAndSent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7129
    return-void

    .line 7132
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkMessageSizeExceeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7133
    const-string/jumbo v0, "MessageSizeExceeded"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 7134
    return-void

    .line 7137
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7139
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNoShortcodeGroupMsgSupported:Z

    .line 7137
    if-eqz v0, :cond_2

    .line 7140
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7142
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 7143
    invoke-static {v0}, Lcom/android/mms/ext/ui/MessageUtilsExt;->getShortcodes(Lcom/android/mms/data/ContactList;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 7144
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 7151
    invoke-static {p0, v0}, Lcom/android/mms/ext/ui/MessageUtilsExt;->showShortcodeErrorDialog(Landroid/content/Context;Lcom/android/mms/data/ContactList;)V

    .line 7152
    return-void

    .line 7157
    :cond_2
    if-eqz p1, :cond_3

    .line 7159
    const-string/jumbo v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7160
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7163
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 7164
    const/16 v1, 0x6b

    .line 7162
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7165
    return-void

    .line 7166
    :catch_0
    move-exception v0

    .line 7168
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7175
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7176
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->isFocused()Z

    move-result v0

    .line 7175
    if-eqz v0, :cond_4

    .line 7177
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 7175
    if-eqz v0, :cond_4

    .line 7178
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7181
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    if-nez v0, :cond_6

    .line 7183
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 7184
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 7185
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Ljava/lang/String;

    move-result-object v1

    .line 7186
    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 7187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ComposeMessageActivity.sendMessage recipients in window: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7189
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 7187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 7189
    const-string/jumbo v3, "\" differ from recipients from conv: \""

    .line 7187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 7190
    const-string/jumbo v2, "\" and working recipients: "

    .line 7187
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 7194
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 7199
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 7202
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getResendMultiRecipients()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWorkingMessage send mResendSmsRecipient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResendSmsRecipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 7205
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResendSmsRecipient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    .line 7211
    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 7212
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendingMessage:Z

    .line 7213
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 7215
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z

    .line 7218
    :cond_6
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    if-eqz v0, :cond_8

    .line 7219
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 7221
    :cond_8
    return-void

    .line 7207
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mWorkingMessage send mDebugRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 7208
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendMsimMessage(Z)V
    .locals 3

    .prologue
    .line 1449
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->isSMSPromptEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1450
    const-string/jumbo v0, "sendMsimMessage isSMSPromptEnabled: True"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1451
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->LaunchMsimDialog(Z)V

    .line 1458
    :goto_0
    return-void

    .line 1453
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 1454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsimMessage with default SmsSubId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 1455
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setWorkingMessageSub(I)V

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto :goto_0
.end method

.method private sendMsimMessage(ZI)V
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p2}, Lcom/android/mms/data/WorkingMessage;->setWorkingMessageSub(I)V

    .line 1445
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    .line 1446
    return-void
.end method

.method private sendRcsOption()V
    .locals 2

    .prologue
    .line 9791
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 9792
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 9793
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9794
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCapability(Ljava/lang/String;)V

    .line 9796
    :cond_0
    return-void
.end method

.method private setActionBarColor(I)V
    .locals 0

    .prologue
    .line 10805
    sput p1, Lcom/android/mms/ui/ComposeMessageActivity;->mActionBarColor:I

    .line 10806
    return-void
.end method

.method private setAttachmentSelectorHeight()V
    .locals 4

    .prologue
    .line 5321
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 5322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 5324
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 5323
    const/high16 v3, 0x42b60000    # 91.0f

    mul-float/2addr v1, v3

    .line 5324
    const/high16 v3, 0x3f000000    # 0.5f

    .line 5323
    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 5325
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 5326
    mul-int/lit8 v1, v1, 0x2

    .line 5325
    :cond_0
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 5327
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5328
    return-void
.end method

.method private setBackgroundWallpaper()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 9356
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9359
    const-string/jumbo v1, "chat_wallpaper"

    .line 9358
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9360
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9363
    const-string/jumbo v1, "chat_wallpaper"

    .line 9361
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 9364
    if-eqz v0, :cond_0

    .line 9365
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageListView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 9368
    :cond_0
    return-void
.end method

.method private setNewMessageSubject(Lcom/android/mms/data/WorkingMessage;)V
    .locals 2

    .prologue
    .line 5616
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 5619
    :cond_0
    return-void
.end method

.method private setSendButtonImage()V
    .locals 7

    .prologue
    const v6, 0x7f0200ff

    const v5, 0x7f0200a3

    const/4 v4, 0x0

    const v3, 0x7f0200fe

    .line 7314
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/data/Contact;->getMe(Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 7315
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 7316
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 7318
    :cond_0
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    .line 7319
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity;->sDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7320
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7321
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7325
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7358
    :goto_0
    return-void

    .line 7327
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7331
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 7334
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7335
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7336
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7337
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7341
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7342
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7343
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7346
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7347
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7348
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7349
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 7352
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7353
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvatarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7354
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method private setTextFontsize()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 9370
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getFontSize()I

    move-result v2

    .line 9371
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 9372
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setTextSize(F)V

    .line 9374
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v1, :cond_1

    .line 9375
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    int-to-float v3, v2

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/MessageListAdapter;->setTextSize(F)V

    .line 9378
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v1, :cond_3

    .line 9379
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 9380
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v3

    move v1, v0

    .line 9381
    :goto_0
    if-ge v1, v3, :cond_3

    .line 9382
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 9384
    if-eqz v0, :cond_2

    .line 9385
    int-to-float v4, v2

    invoke-virtual {v0, v4}, Lcom/android/mms/ui/MessageListItem;->setBodyTextSize(F)V

    .line 9381
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 9389
    :cond_3
    return-void
.end method

.method private showAddAttachementButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5052
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAttachIcon:Z

    if-nez v1, :cond_0

    .line 5053
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 5055
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasVcard()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5056
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSlideNumber()I

    move-result v1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x1

    .line 5055
    :cond_1
    return v0
.end method

.method private showAddAttachmentDialog(ZZZ)V
    .locals 3

    .prologue
    .line 5340
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5341
    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 5342
    const v1, 0x7f07015f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 5344
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    if-nez v1, :cond_0

    .line 5345
    new-instance v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 5346
    const/4 v2, 0x1

    .line 5345
    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    .line 5348
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, p2}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->setShowMedia(Z)V

    .line 5349
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->setShowNonMedia(Z)V

    .line 5350
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentTypeSelectorAdapter:Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$57;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$57;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5358
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 5359
    return-void
.end method

.method private showAddBlacklistDialog()V
    .locals 3

    .prologue
    .line 10005
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10006
    const v1, 0x7f070081

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 10007
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$89;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$89;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10014
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10015
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 10016
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10017
    return-void
.end method

.method private showConvertToMmsToast()V
    .locals 2

    .prologue
    .line 1256
    const v0, 0x7f07018e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1257
    return-void
.end method

.method private showConvertToSmsToast()V
    .locals 2

    .prologue
    .line 1260
    const v0, 0x7f07018f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1261
    return-void
.end method

.method private showDeliveryReport(JLjava/lang/String;)V
    .locals 3

    .prologue
    .line 2742
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2743
    const-string/jumbo v1, "message_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2744
    const-string/jumbo v1, "message_type"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2745
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 2746
    return-void
.end method

.method private showDisableLTEOnlyDialog(I)V
    .locals 2

    .prologue
    .line 1486
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1487
    const-string/jumbo v1, "com.qualcomm.qti.phonefeature.DISABLE_TDD_LTE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string/jumbo v1, "slot"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1489
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 1490
    return-void
.end method

.method private showEditMenu()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2169
    const v0, 0x7f0f0039

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    .line 2170
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showEmojiView(Landroid/view/ViewStub;)V
    .locals 11

    .prologue
    .line 10467
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    if-nez v0, :cond_0

    .line 10469
    const v0, 0x7f0f0077

    .line 10470
    const v1, 0x7f0f0082

    .line 10471
    const v2, 0x7f0f0132

    .line 10472
    const v3, 0x7f0f0131

    .line 10473
    const v4, 0x7f0200ec

    .line 10474
    const v5, 0x7f040048

    .line 10475
    const v6, 0x7f0f0136

    .line 10476
    const v7, 0x7f0f0135

    .line 10477
    const v8, 0x7f0f0133

    .line 10478
    const v9, 0x7f0f0138

    .line 10479
    const v10, 0x7f0200ed

    .line 10468
    invoke-static/range {v0 .. v10}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$EmojiResources;->create(IIIIIIIIIII)Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$EmojiResources;

    move-result-object v0

    .line 10480
    new-instance v1, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    .line 10481
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mViewOnClickListener:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$ViewOnClickListener;

    .line 10480
    invoke-direct {v1, p0, p1, v2, v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$ViewOnClickListener;Lcom/suntek/rcs/ui/common/RcsEmojiInitialize$EmojiResources;)V

    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    .line 10483
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;->closeOrOpenView()V

    .line 10484
    return-void
.end method

.method private showImportTemplateDialog()Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 4950
    const-string/jumbo v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4953
    :try_start_0
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4954
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "rank"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4960
    :goto_0
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4962
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v7

    .line 4965
    :goto_1
    const-string/jumbo v3, "message"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4966
    add-int/lit8 v3, v2, 0x1

    aput-object v4, v0, v2

    .line 4967
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    .line 4955
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4956
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "timestamp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 4958
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v0, v6

    .line 4969
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 4970
    const v0, 0x7f070383

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4974
    if-eqz v1, :cond_4

    .line 4975
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4971
    :cond_4
    return-object v6

    .line 4974
    :cond_5
    if-eqz v1, :cond_6

    .line 4975
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4979
    :cond_6
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$TemplateSelectListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)V

    .line 4980
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4981
    const v3, 0x7f07029c

    .line 4980
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 4973
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 4974
    :goto_3
    if-eqz v1, :cond_7

    .line 4975
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4973
    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_8
    move-object v0, v6

    goto :goto_2
.end method

.method private showInvalidRecipientDialog()V
    .locals 1

    .prologue
    .line 1595
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog(I)V

    .line 1596
    return-void
.end method

.method private showInvalidRecipientDialog(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1599
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    .line 1600
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->getValidRecipientsCount(Z)I

    move-result v1

    .line 1601
    const/4 v2, -0x1

    .line 1600
    if-le v1, v2, :cond_0

    .line 1603
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->formatInvalidNumbers(Z)Ljava/lang/String;

    move-result-object v0

    .line 1602
    const v1, 0x7f070184

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1606
    const v1, 0x7f070189

    .line 1604
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1608
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 1607
    const v2, 0x7f0701b1

    .line 1604
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1609
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v1, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;)V

    const v2, 0x7f0701ad

    .line 1604
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    .line 1618
    :goto_0
    return-void

    .line 1612
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1613
    const v1, 0x7f07018a

    .line 1612
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1614
    const v1, 0x7f07018b

    .line 1612
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1615
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;

    invoke-direct {v1, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$CancelSendingListener;)V

    const v2, 0x7f0701ac

    .line 1612
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 1075
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/android/mms/ui/MessageListAdapter;->getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;

    move-result-object v1

    .line 1076
    if-nez v1, :cond_0

    .line 1077
    return v0

    .line 1079
    :cond_0
    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1080
    :goto_0
    iget v2, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    add-int/2addr v0, v2

    .line 1085
    invoke-static {p0, v1, v0}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v0

    .line 1087
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1088
    const v2, 0x7f0701ff

    .line 1087
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgDetailDialog:Landroid/app/AlertDialog;

    .line 1092
    return v3

    .line 1079
    :cond_1
    iget-object v0, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    goto :goto_0
.end method

.method private showMobileDataDisabledDialog()V
    .locals 1

    .prologue
    .line 1621
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showMobileDataDisabledDialog(I)V

    .line 1622
    return-void
.end method

.method private showMobileDataDisabledDialog(I)V
    .locals 3

    .prologue
    .line 1625
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1626
    const v1, 0x7f070169

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1627
    const v1, 0x7f070242

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1628
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$35;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$35;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    const v2, 0x7f0701ac

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1642
    const v1, 0x7f0701ad

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1643
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1644
    return-void
.end method

.method private showPasteMenu()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2165
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getFromClipboard()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private showQualityDialog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 10105
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 10106
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 10107
    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 10108
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$92;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$92;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10126
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10127
    const v2, 0x7f07002f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10128
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 10129
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$93;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$93;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;Ljava/lang/String;)V

    const v0, 0x7f0700c1

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10145
    const v0, 0x7f070031

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10146
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 10147
    return-void
.end method

.method private showSetRcsPolicyDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 9727
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9728
    const v1, 0x7f070073

    .line 9727
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9730
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$84;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$84;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 9729
    const v2, 0x7f0700c1

    .line 9727
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9736
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$85;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$85;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    const v2, 0x7f0700eb

    .line 9727
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9745
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 9746
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 9747
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 9748
    return-void
.end method

.method private showSmsOrMmsSendButton(Z)Landroid/view/View;
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 4051
    if-eqz p1, :cond_0

    .line 4052
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    .line 4053
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    .line 4054
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4060
    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4061
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4062
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 4064
    return-object v1

    .line 4056
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    .line 4057
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    .line 4058
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSubjectEditor(Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3106
    const-string/jumbo v0, "Mms"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3110
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 3113
    if-nez p1, :cond_1

    .line 3114
    return-void

    .line 3116
    :cond_1
    const v0, 0x7f0f003a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    .line 3117
    const v0, 0x7f0f003b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    .line 3118
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    .line 3119
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    sget v5, Lcom/android/mms/ui/ComposeMessageActivity;->SUBJECT_MAX_LENGTH:I

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v2

    .line 3118
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 3122
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectKeyListener:Landroid/view/View$OnKeyListener;

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3124
    if-eqz p1, :cond_5

    .line 3125
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3130
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3132
    sget-boolean v0, Lcom/android/mms/MmsApp;->mIsSubjectEnabled:Z

    if-eqz v0, :cond_3

    .line 3133
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_6

    move v0, v2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3137
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideOrShowTopPanel()V

    .line 3138
    return-void

    :cond_4
    move-object v0, v1

    .line 3122
    goto :goto_0

    .line 3127
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditorWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_1

    .line 3133
    :cond_6
    const/16 v0, 0x8

    goto :goto_2
.end method

.method private showTwoSmsOrMmsSendButton(Z)[Landroid/view/View;
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4068
    new-array v0, v1, [Landroid/view/View;

    .line 4069
    new-array v1, v1, [Landroid/view/View;

    .line 4070
    if-eqz p1, :cond_0

    .line 4071
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsFir:Landroid/view/View;

    aput-object v2, v0, v3

    .line 4072
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsSec:Landroid/view/View;

    aput-object v2, v0, v4

    .line 4073
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsFir:Landroid/view/View;

    aput-object v2, v1, v3

    .line 4074
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsSec:Landroid/view/View;

    aput-object v2, v1, v4

    .line 4081
    :goto_0
    aget-object v2, v0, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4082
    aget-object v2, v0, v4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4083
    aget-object v2, v1, v3

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4084
    aget-object v1, v1, v4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4086
    return-object v0

    .line 4076
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsFir:Landroid/view/View;

    aput-object v2, v0, v3

    .line 4077
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsSec:Landroid/view/View;

    aput-object v2, v0, v4

    .line 4078
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsFir:Landroid/view/View;

    aput-object v2, v1, v3

    .line 4079
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsSec:Landroid/view/View;

    aput-object v2, v1, v4

    goto :goto_0
.end method

.method private smoothScrollToEnd(ZI)V
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    .line 7498
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v5

    .line 7499
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    .line 7500
    if-ltz v5, :cond_0

    if-gez v6, :cond_2

    .line 7501
    :cond_0
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7502
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smoothScrollToEnd: lastItemVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7503
    const-string/jumbo v2, ", lastItemInList="

    .line 7502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7504
    const-string/jumbo v2, ", mMsgListView not ready"

    .line 7502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7506
    :cond_1
    return-void

    .line 7510
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 7513
    if-eqz v0, :cond_11

    .line 7514
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7515
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 7518
    :goto_0
    const-string/jumbo v4, "Mms"

    invoke-static {v4, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7519
    const-string/jumbo v4, "Mms"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smoothScrollToEnd newPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7520
    const-string/jumbo v8, " mLastSmoothScrollPosition: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7520
    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7521
    const-string/jumbo v8, " first: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7521
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v8

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7522
    const-string/jumbo v8, " lastItemVisible: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7523
    const-string/jumbo v8, " lastVisibleItemBottom: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7524
    const-string/jumbo v8, " lastVisibleItemBottom + listSizeChange: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7525
    add-int v8, v2, p2

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7526
    const-string/jumbo v8, " mMsgListView.getHeight() - mMsgListView.getPaddingBottom(): "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7527
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v8, v9

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 7528
    const-string/jumbo v8, " listSizeChange: "

    .line 7519
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7543
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v7

    .line 7544
    if-le v0, v7, :cond_9

    move v4, v3

    .line 7545
    :goto_1
    if-nez p1, :cond_a

    .line 7546
    if-nez p2, :cond_4

    iget v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    if-eq v6, v8, :cond_5

    .line 7547
    :cond_4
    add-int/2addr v2, p2

    .line 7548
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageListView;->getPaddingBottom()I

    move-result v8

    sub-int v8, v7, v8

    .line 7547
    if-gt v2, v8, :cond_5

    move v1, v3

    .line 7549
    :cond_5
    :goto_2
    if-nez v1, :cond_6

    if-eqz v4, :cond_8

    if-ne v6, v5, :cond_8

    .line 7550
    :cond_6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_c

    .line 7554
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7555
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "keyboard state changed. setSelection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7557
    :cond_7
    if-eqz v4, :cond_b

    .line 7562
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 7563
    sub-int v0, v7, v0

    .line 7562
    invoke-virtual {v1, v6, v0}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 7590
    :cond_8
    :goto_3
    return-void

    :cond_9
    move v4, v1

    .line 7544
    goto :goto_1

    :cond_a
    move v1, v3

    .line 7545
    goto :goto_2

    .line 7565
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto :goto_3

    .line 7567
    :cond_c
    sub-int v1, v6, v5

    const/4 v2, -0x1

    if-le v1, v2, :cond_e

    .line 7568
    const-string/jumbo v0, "Mms"

    invoke-static {v0, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7569
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "too many to scroll, setSelection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7571
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto :goto_3

    .line 7573
    :cond_e
    const-string/jumbo v1, "Mms"

    invoke-static {v1, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 7574
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "smooth scroll to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7576
    :cond_f
    if-eqz v4, :cond_10

    .line 7582
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 7583
    sub-int v0, v7, v0

    .line 7582
    invoke-virtual {v1, v6, v0}, Lcom/android/mms/ui/MessageListView;->setSelectionFromTop(II)V

    .line 7587
    :goto_4
    iput v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mLastSmoothScrollPosition:I

    goto :goto_3

    .line 7585
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/MessageListView;->smoothScrollToPosition(I)V

    goto :goto_4

    :cond_11
    move v0, v1

    move v2, v1

    goto/16 :goto_0
.end method

.method private startAvailabilityFetch(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 11006
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    if-eqz v0, :cond_0

    .line 11009
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    invoke-interface {v0, p1}, Lorg/codeaurora/presenceserv/IPresenceService;->invokeAvailabilityFetch(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 11010
    return v0

    .line 11011
    :catch_0
    move-exception v0

    .line 11012
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getVTCapOfContact ERROR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11015
    :cond_0
    return v4
.end method

# PERF(history): package bridges for WaveHistory
.method waveScrollOnSend()Z
    .locals 1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mScrollOnSend:Z
    return v0
.end method

# FEAT(imessage): package bridge for WaveIMessageUi compose hint
.method waveUpdateComposeHint()V
    .locals 6
    move-object v0, p0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/WaveIMessageUi;->updateComposeHint(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/widget/EditText;ZLcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/android/mms/ui/RecipientsEditor;)V
    return-void
.end method

.method private startMsgListQuery()V
    .locals 1

    .prologue
    .line 6835
    const/16 v0, 0x2537

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery(I)V

    .line 6836
    return-void
.end method

.method private startMsgListQuery(I)V
    .locals 8

    .prologue
    .line 6839
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    if-eqz v0, :cond_1

    .line 6840
    :cond_0
    return-void

    .line 6842
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getUri()Landroid/net/Uri;

    move-result-object v3

    .line 6844
    if-nez v3, :cond_2

    .line 6845
    const-string/jumbo v0, "##### startMsgListQuery: conversationUri is null, bail!"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6846
    return-void

    .line 6849
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    .line 6850
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startMsgListQuery for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6852
    const-string/jumbo v1, " token: "

    .line 6851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6852
    const-string/jumbo v1, " mConversation: "

    .line 6851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 6852
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 6851
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6856
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 6859
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 6861
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 6863
    sget-object v4, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 6864
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v1, p1

    # PERF(history): opt in without changing the stock projection
    invoke-static {p0, p1, v3}, Lcom/android/mms/ui/WaveHistory;->queryUri(Lcom/android/mms/ui/ComposeMessageActivity;ILandroid/net/Uri;)Landroid/net/Uri;
    move-result-object v3

    .line 6859
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6868
    :goto_0
    return-void

    .line 6865
    :catch_0
    move-exception v0

    .line 6866
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private switchToGroupChat()V
    .locals 3

    .prologue
    .line 9940
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getNumbersExceptMe(Lcom/android/mms/data/ContactList;)Ljava/lang/String;

    move-result-object v0

    .line 9941
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.suntek.rcs.action.CREATR_GROUP_CHAT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9942
    const-string/jumbo v2, "recipients"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9943
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 9944
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9948
    :goto_0
    return-void

    .line 9945
    :catch_0
    move-exception v0

    .line 9946
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private toast(I)V
    .locals 1

    .prologue
    .line 10578
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 10579
    return-void
.end method

.method private unbindService(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 10990
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    if-eqz v0, :cond_0

    .line 10992
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mService:Lorg/codeaurora/presenceserv/IPresenceService;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCallback:Lorg/codeaurora/presenceserv/IPresenceServiceCB;

    invoke-interface {v0, v1}, Lorg/codeaurora/presenceserv/IPresenceService;->unregisterCallback(Lorg/codeaurora/presenceserv/IPresenceServiceCB;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10997
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 10999
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 11000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBound:Z

    .line 11002
    :cond_1
    return-void

    .line 10993
    :catch_0
    move-exception v0

    .line 10994
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PresenceService unregister error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterRcsReceiver()V
    .locals 1

    .prologue
    .line 9898
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mFileTranferReceiver:Lcom/android/mms/rcs/ComposeMessageFileTransferReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9899
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupReceiver:Lcom/suntek/rcs/ui/common/mms/GroupChatManagerReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9900
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mCloudFileReceiver:Lcom/android/mms/rcs/ComposeMessageCloudFileReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9901
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEmotionDownloadReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 9902
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsStatusUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9906
    :goto_0
    return-void

    .line 9903
    :catch_0
    move-exception v0

    .line 9904
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateAttachmentInfo()V
    .locals 10

    .prologue
    const v9, 0x7f070327

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 11261
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 11262
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentInfoHeader:Landroid/widget/RelativeLayout;

    const v2, 0x7f0f0025

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11264
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11266
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 11267
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->updateTotalMessageSize()V

    .line 11268
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11269
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getTotalMessageSize()I

    move-result v3

    .line 11270
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v4

    .line 11269
    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getSizeWithOverHead(I)I

    move-result v3

    .line 11271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 11272
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070388

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 11271
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11273
    new-array v1, v8, [Ljava/lang/Object;

    .line 11274
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v2

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 11273
    invoke-virtual {p0, v9, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11284
    :cond_0
    :goto_0
    return-void

    .line 11275
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11277
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 11278
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11279
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    .line 11280
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getSubjectSize()I

    move-result v2

    .line 11279
    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getSizeWithOverHead(I)I

    move-result v1

    .line 11281
    new-array v2, v8, [Ljava/lang/Object;

    .line 11282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    div-int/lit16 v1, v1, 0x400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v7

    .line 11281
    invoke-virtual {p0, v9, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAttachmentSelectorIndicator(I)V
    .locals 5

    .prologue
    const v4, 0x7f02001f

    const v3, 0x7f02001e

    .line 5300
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    .line 5301
    const v1, 0x7f0f005c

    .line 5300
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5302
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    .line 5303
    const v2, 0x7f0f005d

    .line 5302
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 5305
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRTL:Z

    if-eqz v2, :cond_2

    .line 5306
    if-nez p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5308
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5310
    return-void

    :cond_0
    move v2, v4

    .line 5307
    goto :goto_0

    :cond_1
    move v4, v3

    .line 5309
    goto :goto_1

    .line 5313
    :cond_2
    if-nez p1, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5315
    if-nez p1, :cond_4

    :goto_3
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5317
    return-void

    :cond_3
    move v2, v4

    .line 5314
    goto :goto_2

    :cond_4
    move v4, v3

    .line 5316
    goto :goto_3
.end method

.method private updateColorPalette(I)V
    .locals 3

    .prologue
    .line 10768
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->determinePalette(I)Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    .line 10769
    iget v1, v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget v2, v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThemeColors(II)V

    .line 10771
    iget v1, v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iput v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccentColor:I

    .line 10772
    iget v0, v0, Lcom/android/mms/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStatusBarColor:I

    .line 10773
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccentColor:I

    sput v0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendContactColor:I

    .line 10774
    return-void
.end method

.method private updateCounter(Ljava/lang/CharSequence;III)V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1156
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1157
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    if-le p3, p4, :cond_0

    move v0, v1

    .line 1162
    :goto_0
    if-nez v0, :cond_2

    .line 1163
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showTwoSmsOrMmsSendButton(Z)[Landroid/view/View;

    .line 1169
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1161
    goto :goto_0

    .line 1166
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    goto :goto_1

    .line 1173
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090023

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1174
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1178
    :cond_3
    invoke-static {p1, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v0

    .line 1185
    aget v4, v0, v2

    .line 1186
    const/4 v5, 0x2

    aget v5, v0, v5

    .line 1187
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-nez v0, :cond_4

    .line 1188
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1191
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-le v4, v1, :cond_7

    move v0, v1

    :goto_2
    invoke-virtual {v6, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 1202
    :cond_4
    :goto_3
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1203
    if-gt v4, v1, :cond_5

    .line 1204
    const/16 v0, 0xa

    if-gt v5, v0, :cond_a

    :cond_5
    move v0, v1

    .line 1208
    :goto_4
    iget-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v6, :cond_b

    .line 1209
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showTwoSmsOrMmsSendButton(Z)[Landroid/view/View;

    .line 1214
    :goto_5
    if-eqz v0, :cond_d

    .line 1216
    if-le v4, v1, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1218
    :goto_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1220
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v1, :cond_6

    .line 1221
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1222
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1230
    :cond_6
    :goto_7
    return-void

    :cond_7
    move v0, v2

    .line 1191
    goto :goto_2

    .line 1193
    :cond_8
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold(Landroid/content/Context;)I

    move-result v0

    .line 1194
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-lez v0, :cond_9

    if-le v4, v0, :cond_9

    move v0, v1

    :goto_8
    invoke-virtual {v6, v0, v1}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_8

    :cond_a
    move v0, v2

    .line 1204
    goto :goto_4

    .line 1211
    :cond_b
    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    goto :goto_5

    .line 1217
    :cond_c
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 1225
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1226
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_6

    .line 1227
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounterSec:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7
.end method

.method private updateSendButtonState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7285
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 7289
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    .line 7290
    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v4, :cond_2

    .line 7291
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showTwoSmsOrMmsSendButton(Z)[Landroid/view/View;

    move-result-object v3

    .line 7292
    aget-object v4, v3, v2

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsFir:Landroid/view/View;

    if-ne v4, v5, :cond_1

    .line 7293
    aget-object v4, v3, v1

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutMmsSec:Landroid/view/View;

    if-ne v4, v5, :cond_1

    .line 7294
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7295
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsViewSec:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 7296
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 7297
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsViewSec:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 7310
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonImage()V

    # FEAT(imessage): keep compose hint synced with SMS / MMS / iMessage state
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->waveUpdateComposeHint()V

    .line 7311
    return-void

    .line 7298
    :cond_1
    aget-object v2, v3, v2

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsFir:Landroid/view/View;

    if-ne v2, v4, :cond_0

    .line 7299
    aget-object v1, v3, v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendLayoutSmsSec:Landroid/view/View;

    if-ne v1, v2, :cond_0

    .line 7300
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7301
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSmsViewSec:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7302
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 7303
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSmsViewSec:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setFocusable(Z)V

    goto :goto_1

    .line 7306
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->showSmsOrMmsSendButton(Z)Landroid/view/View;

    move-result-object v1

    .line 7307
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 7308
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private updateSendFailedNotification()V
    .locals 4

    .prologue
    .line 3527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 3528
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 3529
    return-void

    .line 3533
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ComposeMessageActivity$44;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$44;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;J)V

    .line 3539
    const-string/jumbo v0, "ComposeMessageActivity.updateSendFailedNotification"

    .line 3533
    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 3540
    return-void
.end method

.method private updateThemeColors(II)V
    .locals 10

    .prologue
    const/16 v0, 0xc8

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 10778
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 10780
    const-string/jumbo v3, "color"

    .line 10779
    new-array v4, v9, [I

    .line 10780
    iget v5, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAccentColor:I

    aput v5, v4, v1

    aput p1, v4, v8

    .line 10779
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10781
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 10782
    const-string/jumbo v5, "statusBarColor"

    .line 10781
    new-array v6, v9, [I

    .line 10782
    iget v7, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mStatusBarColor:I

    aput v7, v6, v1

    aput p2, v6, v8

    .line 10781
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 10784
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10785
    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 10786
    const v5, 0x7f0f001d

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 10788
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10789
    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v3, v5, v1

    aput-object v4, v5, v8

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 10790
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isResumed()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 10791
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 10792
    return-void

    :cond_0
    move v0, v1

    .line 10790
    goto :goto_0
.end method

.method private updateThreadAttachType()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 7820
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 7821
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 7822
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lcom/android/mms/data/Conversation;->getLatestMessageAttachmentUri(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v3

    .line 7821
    invoke-static {v2, v3}, Lcom/android/mms/data/Conversation;->getAttachmentInfo(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 7823
    invoke-static {v0, v1}, Lcom/android/mms/data/Conversation;->getUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 7824
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7825
    const-string/jumbo v3, "attachment_info"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7826
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7827
    return-void
.end method

.method private updateThreadIdIfRunning()V
    .locals 2

    .prologue
    .line 7906
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 7911
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 7919
    :cond_0
    return-void
.end method

.method private updateTitle(Lcom/android/mms/data/ContactList;)V
    .locals 9

    .prologue
    const v5, 0x7f0a0005

    const/4 v8, 0x1

    const/16 v7, 0x202d

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 2804
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2805
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isPcChat()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    .line 2806
    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2807
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->isMyAccount(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700ff

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2809
    const v2, 0x7f070100

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2808
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2810
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v8}, Lcom/android/mms/data/Conversation;->setMyPcConversation(Z)V

    .line 2913
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    if-eqz v2, :cond_1

    .line 2914
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {v2, v0}, Landroid/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 2915
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 2917
    :cond_1
    return-void

    .line 2812
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700ff

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2813
    const v2, 0x7f070101

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2812
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2814
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v6}, Lcom/android/mms/data/Conversation;->setMyPcConversation(Z)V

    goto :goto_0

    .line 2816
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2817
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 2818
    if-eqz v0, :cond_4

    .line 2819
    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->getDisplayName(Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)Ljava/lang/String;

    move-result-object v0

    .line 2825
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f07002c

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getGroupChatStatusText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2820
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    if-nez v0, :cond_5

    .line 2821
    const v0, 0x7f07002b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2823
    :cond_5
    const v0, 0x7f07002c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2828
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    .line 2829
    packed-switch v3, :pswitch_data_0

    .line 2886
    const-string/jumbo v0, ", "

    # FIX(group first open): use the same resolved phone names as the inbox.
    invoke-static {p1, v0}, Lcom/android/mms/data/WavePhoneSnapshot;->formatNames(Lcom/android/mms/data/ContactList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2887
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    const v4, 0x7f0d0004

    invoke-virtual {v1, v4, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    .line 2891
    :cond_7
    :goto_2
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mDebugRecipients:Ljava/lang/String;

    .line 2894
    iput v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mExistsRecipientsCount:I

    .line 2897
    if-lt v3, v8, :cond_f

    .line 2898
    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 2899
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getContactColor()I

    move-result v0

    .line 2901
    if-nez v0, :cond_8

    .line 2902
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    .line 2905
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateColorPalette(I)V

    .line 2906
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setActionBarColor(I)V

    move-object v0, v2

    goto/16 :goto_0

    .line 2832
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_10

    .line 2833
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2835
    :goto_3
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2836
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2837
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    aget-object v0, v0, v2

    :cond_9
    :goto_4
    move-object v2, v0

    .line 2843
    goto :goto_2

    .line 2840
    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2841
    const v0, 0x7f070117

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 2846
    :pswitch_1
    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2848
    invoke-virtual {p1, v6}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 2849
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2850
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2851
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aget-object v0, v0, v4

    .line 2854
    :cond_b
    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2855
    const-string/jumbo v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2856
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    aget-object v2, v2, v4

    .line 2857
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2860
    :cond_c
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextCounter:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 2863
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2865
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v2

    .line 2864
    invoke-static {v0, v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2866
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_7

    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x202c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 2871
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2870
    invoke-static {v0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2872
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_7

    .line 2873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 2877
    :cond_e
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2879
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getCurrentCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 2878
    invoke-static {v0, v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 2908
    :cond_f
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateColorPalette(I)V

    .line 2909
    sget v0, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setActionBarColor(I)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_10
    move-object v0, v1

    goto/16 :goto_3

    :cond_11
    move-object v0, v1

    goto/16 :goto_0

    .line 2829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateTitleForRecipientsChange(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 1725
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1726
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->constructContactAndUpdateTitle()V

    .line 1731
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1732
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    .line 1733
    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 1731
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1736
    :cond_1
    const/16 v0, 0x2c

    if-ne v1, v0, :cond_2

    .line 1737
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->constructContactAndUpdateTitle()V

    .line 1742
    :cond_2
    return-void
.end method

.method private vcardContactOrGroup()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 10271
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10272
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 10273
    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10275
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 10276
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 10277
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07005d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 10278
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 10279
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;)V

    .line 10274
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10281
    return-void
.end method

.method private videoCallRecipient()V
    .locals 3

    .prologue
    .line 4195
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4196
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.CALL"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4197
    const-string/jumbo v0, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    .line 4198
    const/4 v2, 0x3

    .line 4197
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4199
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4200
    return-void
.end method

.method private viewMmsMessageAttachment(I)V
    .locals 4

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 975
    if-nez v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mWorkingMessage.getSlideshow() == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->viewSimpleSlideshow(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1017
    :goto_0
    return-void

    .line 986
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$30;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$30;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 992
    new-instance v2, Lcom/android/mms/ui/ComposeMessageActivity$31;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$31;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 1015
    const v3, 0x7f070199

    .line 986
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method private waitForResizeImages()V
    .locals 2

    .prologue
    .line 6122
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wait for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResizeImageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " resize image finish. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 6123
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mObjectLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6127
    :goto_0
    return-void

    .line 6124
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addGrouChatWayOrConversation(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 10431
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10432
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 10433
    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 10434
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 10435
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07005b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 10436
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f07005c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 10434
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10438
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 10439
    return-void
.end method

.method public ensureCreationMode(Lcom/android/mms/ui/MessageItem;)Z
    .locals 10

    .prologue
    const v9, 0x7f070104

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 11133
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v4

    .line 11135
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getUsedCreationMode()I

    move-result v5

    .line 11138
    if-eq v5, v2, :cond_0

    .line 11139
    if-ne v5, v8, :cond_8

    .line 11140
    :cond_0
    iget v0, p1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxRestrictedMessageSize()I

    move-result v3

    if-le v0, v3, :cond_9

    move v3, v2

    .line 11145
    :goto_0
    :try_start_0
    # Fast text MMS has no slideshow until a carrier-restricted forward needs one.
    invoke-static {p1}, Lcom/android/mms/ui/WaveTextMms;->slidesForRestriction(Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/model/SlideshowModel;
    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 11146
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 11147
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 11148
    invoke-interface {v4, v0}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 11149
    invoke-interface {v4, v0}, Lcom/android/mms/model/ContentRestriction;->checkAudioContentType(Ljava/lang/String;)V

    .line 11150
    invoke-interface {v4, v0}, Lcom/android/mms/model/ContentRestriction;->checkVideoContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 11153
    :catch_0
    move-exception v0

    .line 11155
    const-string/jumbo v4, "Mms"

    invoke-virtual {v0}, Lcom/android/mms/UnsupportContentTypeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 11161
    :goto_2
    if-ne v5, v2, :cond_5

    .line 11162
    if-eqz v3, :cond_4

    .line 11164
    const/4 v0, -0x2

    .line 11163
    invoke-direct {p0, v0, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    .line 11170
    :cond_2
    :goto_3
    return v2

    :cond_3
    move v0, v1

    goto :goto_2

    .line 11156
    :catch_1
    move-exception v0

    .line 11157
    const-string/jumbo v1, "Mms"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11158
    return v2

    .line 11166
    :cond_4
    if-eqz v0, :cond_2

    .line 11167
    const/4 v0, -0x3

    invoke-direct {p0, v0, v9}, Lcom/android/mms/ui/ComposeMessageActivity;->handleAddAttachmentError(II)V

    goto :goto_3

    .line 11173
    :cond_5
    if-ne v5, v8, :cond_8

    .line 11174
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$96;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$96;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 11181
    if-eqz v3, :cond_7

    .line 11182
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$97;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$97;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 11197
    :cond_6
    :goto_4
    return v2

    .line 11189
    :cond_7
    if-eqz v0, :cond_6

    .line 11190
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$98;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$98;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 11201
    :cond_8
    return v1

    :cond_9
    move v3, v1

    goto :goto_0
.end method

.method focusedElementId()I
    .locals 1

    .prologue
    .line 11036
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 11037
    if-nez v0, :cond_0

    .line 11038
    const/16 v0, -0x2749

    return v0

    .line 11040
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 6035
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-nez v0, :cond_0

    .line 6036
    new-instance v0, Lcom/android/mms/ui/AsyncDialog;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/AsyncDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    .line 6038
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method public getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4203
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4204
    const-string/jumbo v0, "sip"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 4206
    :cond_0
    const-string/jumbo v0, "tel"

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method historyItemType(I)I
    .locals 2

    .prologue
    const/16 v1, -0x2749

    .line 4604
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    .line 4605
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    .line 4606
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    if-nez v0, :cond_0

    .line 4607
    return v1

    .line 4609
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    .line 4610
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    if-nez v0, :cond_1

    .line 4611
    return v1

    .line 4613
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4614
    const/16 v0, 0x3ea

    return v0

    .line 4615
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4616
    const/16 v0, 0x3e9

    return v0

    .line 4617
    :cond_3
    return v1
.end method

.method public initialize(Landroid/os/Bundle;J)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3148
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 3150
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendMmsSupportViaWiFi:Z

    .line 3154
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->initActivityState(Landroid/os/Bundle;)V

    const-string v2, "compose_thread"
    invoke-static {v2}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 3157
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3158
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRcsComponents()V

    .line 3161
    :cond_0
    cmp-long v2, p2, v6

    if-eqz v2, :cond_1

    .line 3162
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 3163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ComposeMessageActivity.initialize:  threadId didn\'t change from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .line 3167
    :cond_1
    # Don't stringify the activity state and recipients unless the log is enabled.
    const-string v2, "Mms"
    const/4 v3, 0x3
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    move-result v2
    if-eqz v2, :wave_launch_log_done
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savedInstanceState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3168
    const-string/jumbo v3, " intent = "

    .line 3167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3168
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 3167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3169
    const-string/jumbo v3, " mConversation = "

    .line 3167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3169
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    :wave_launch_log_done
    .line 3171
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3174
    invoke-direct {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->undeliveredMessageDialog(J)V

    .line 3176
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/mms/ui/MessageUtils;->cancelFailedDownloadNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    .line 3179
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initMessageList()V

    # FIX(conversation reveal): wait only on a real thread that will query history.
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z
    if-nez v2, :wave_no_reveal
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z
    if-nez v2, :wave_no_reveal
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMailboxMode()Z
    move-result v2
    if-nez v2, :wave_no_reveal
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J
    move-result-wide v2
    invoke-static {p0, v2, v3}, Lcom/android/mms/ui/WaveHistory;->beginReveal(Lcom/android/mms/ui/ComposeMessageActivity;J)V
    goto :wave_reveal_armed

    :wave_no_reveal
    invoke-static {p0}, Lcom/android/mms/ui/WaveHistory;->endReveal(Lcom/android/mms/ui/ComposeMessageActivity;)V

    :wave_reveal_armed

    .line 3181
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3189
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleSendIntent()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleForwardedMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3190
    :cond_3
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3194
    :cond_4
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3196
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->handleResendMessage()V

    .line 3199
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-gtz v2, :cond_b

    .line 3200
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v2

    if-nez v2, :cond_b

    .line 3203
    :cond_5
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    .line 3204
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initRecipientsEditor()V

    .line 3205
    sget v2, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateColorPalette(I)V

    .line 3206
    sget v2, Lcom/android/mms/ui/ComposeMessageActivity;->sPrimaryColorDark:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->setActionBarColor(I)V

    .line 3211
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 3212
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 3213
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    if-nez v2, :cond_6

    .line 3215
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 3218
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 3220
    const-string/jumbo v2, "Mms"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update title, mConversation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3224
    :cond_7
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3229
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->requestFocus()Z

    .line 3233
    :cond_8
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3234
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 3233
    if-eqz v2, :cond_9

    .line 3235
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3236
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 3240
    :cond_9
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-le v3, v0, :cond_c

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 3241
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3242
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 3243
    if-eqz v0, :cond_a

    .line 3244
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->setRcsGroupId(J)V

    .line 3247
    :cond_a
    return-void

    .line 3208
    :cond_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideRecipientEditor()V

    goto/16 :goto_0

    :cond_c
    move v0, v1

    .line 3240
    goto :goto_1
.end method

.method public isRcsMediaMsg(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 9765
    if-eq p1, v1, :cond_0

    .line 9766
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 9768
    :cond_0
    return v1

    .line 9767
    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 9770
    const/4 v0, 0x0

    return v0
.end method

.method public isUriNumber(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 4210
    if-eqz p1, :cond_1

    const-string/jumbo v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%40"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 3495
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 3496
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3497
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    .line 3498
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendFailedNotification()V

    .line 3499
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 5368
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 5369
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 5370
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->getRequestCode(I)I

    move-result v2

    .line 5371
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->isAppendRequest(I)Z

    move-result v3

    .line 5372
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5375
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft()V

    .line 5378
    :cond_0
    const/16 v0, 0x6d

    if-ne v2, v0, :cond_1

    .line 5379
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 5382
    :cond_1
    const/16 v0, 0x6c

    if-ne v2, v0, :cond_3

    .line 5390
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 5392
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string/jumbo v4, "email"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5393
    if-nez v0, :cond_2

    .line 5395
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddContactIntent:Landroid/content/Intent;

    const-string/jumbo v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5397
    :cond_2
    if-eqz v0, :cond_3

    .line 5398
    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 5399
    if-eqz v0, :cond_3

    .line 5400
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->reload()V

    .line 5406
    :cond_3
    const/16 v0, 0x7b

    if-ne v2, v0, :cond_4

    .line 5407
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    if-eqz v0, :cond_4

    .line 5408
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsEmojiInitialize:Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;

    invoke-virtual {v0}, Lcom/suntek/rcs/ui/common/RcsEmojiInitialize;->refreshData()V

    .line 5412
    :cond_4
    const/4 v0, -0x1

    if-eq p2, v0, :cond_5

    .line 5414
    return-void

    .line 5417
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCreationModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5418
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->reset()V

    .line 5421
    :cond_6
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, v2, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->processedRcsActivityResult(ILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5422
    return-void

    .line 5424
    :cond_7
    packed-switch v2, :pswitch_data_0

    .line 5608
    :cond_8
    :goto_0
    :pswitch_0
    return-void

    .line 5426
    :pswitch_1
    if-eqz p3, :cond_8

    .line 5427
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    .line 5428
    if-eqz v0, :cond_8

    .line 5430
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setNewMessageSubject(Lcom/android/mms/data/WorkingMessage;)V

    .line 5431
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 5432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 5433
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 5434
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateAttachmentInfo()V

    .line 5435
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 5436
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 5437
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    goto :goto_0

    .line 5446
    :pswitch_2
    const-string/jumbo v0, ".jpg"

    .line 5447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 5446
    invoke-static {v0, v1, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 5450
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 5452
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5457
    :pswitch_3
    if-eqz p3, :cond_8

    .line 5458
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImageAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5464
    :pswitch_4
    const-string/jumbo v0, ".3gp"

    .line 5465
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getSlideNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 5464
    invoke-static {v0, v1, p0}, Lcom/android/mms/TempFileProvider;->renameScrapFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 5467
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 5469
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5473
    :pswitch_5
    if-eqz p3, :cond_8

    .line 5474
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideoAsync(Landroid/net/Uri;Z)V

    goto :goto_0

    .line 5480
    :pswitch_6
    const-string/jumbo v0, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 5481
    if-nez v0, :cond_a

    .line 5482
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5486
    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    .line 5487
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    goto/16 :goto_0

    .line 5483
    :cond_a
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_0

    .line 5492
    :pswitch_7
    if-eqz p3, :cond_8

    .line 5493
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addAudio(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5498
    :pswitch_8
    const-string/jumbo v0, "exit_ecm_result"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 5499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "outOfEmergencyMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 5500
    if-eqz v0, :cond_8

    .line 5501
    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V

    goto/16 :goto_0

    .line 5506
    :pswitch_9
    if-eqz p3, :cond_8

    .line 5507
    invoke-direct {p0, p3}, Lcom/android/mms/ui/ComposeMessageActivity;->processPickResult(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5513
    :pswitch_a
    if-eqz p3, :cond_8

    .line 5514
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 5515
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 5516
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    .line 5518
    :goto_1
    invoke-direct {p0, v2, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->buildUris(Ljava/util/Set;I)[Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByUris([Landroid/net/Uri;)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 5520
    invoke-virtual {v0, v1}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    .line 5521
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardRcsMessage(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 5516
    goto :goto_1

    .line 5526
    :pswitch_b
    if-eqz p3, :cond_8

    .line 5527
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsForwardItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 5529
    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 5528
    invoke-static {p0, v5, p3, v0, v1}, Lcom/android/mms/rcs/RcsChatMessageUtils;->sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z

    move-result v0

    .line 5530
    if-eqz v0, :cond_c

    .line 5531
    const v0, 0x7f070053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto/16 :goto_0

    .line 5533
    :cond_c
    const v0, 0x7f070054

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    goto/16 :goto_0

    .line 5541
    :pswitch_c
    if-eqz p3, :cond_d

    .line 5542
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 5545
    :cond_d
    :pswitch_d
    if-eqz p3, :cond_e

    .line 5546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5547
    const-string/jumbo v2, "info"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5548
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 5550
    :cond_e
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_8

    .line 5551
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    goto/16 :goto_0

    .line 5556
    :pswitch_e
    if-eqz p3, :cond_8

    .line 5557
    const-string/jumbo v0, "vcard"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5558
    if-eqz v0, :cond_8

    .line 5559
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5560
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsAttachmentUri:Landroid/net/Uri;

    .line 5561
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcard(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 5567
    :pswitch_f
    const-string/jumbo v0, "selectThreadId"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 5568
    invoke-static {p0, v2, v3, v1}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 5569
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 5570
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->constructContactsFromInput(Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 5571
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 5572
    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5574
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/RecipientsEditor;->populate(Lcom/android/mms/data/ContactList;)V

    goto/16 :goto_0

    .line 5578
    :pswitch_10
    if-eqz p3, :cond_8

    .line 5579
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const v2, 0x7f070376

    invoke-direct {p0, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addVcal(Landroid/net/Uri;ZI)V

    goto/16 :goto_0

    .line 5585
    :pswitch_11
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->insertContact(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 5591
    :pswitch_12
    invoke-direct {p0, p3, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->handleMultipleMimeTypes(Landroid/content/Intent;Z)V

    goto/16 :goto_0

    .line 5595
    :pswitch_13
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult  REQUEST_CODE_REPLACE_PHOTOS_VIDEOS append = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5596
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "images/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5597
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addImage(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5598
    :cond_10
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5599
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->addVideo(Landroid/net/Uri;Z)V

    goto/16 :goto_0

    .line 5424
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_c
        :pswitch_0
        :pswitch_10
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method

.method public onAttachmentChanged()V
    .locals 1

    .prologue
    .line 3996
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$48;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$48;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4009
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6364
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRTL:Z

    .line 6365
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMms:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_b

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6366
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSms:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 6367
    const-string/jumbo v0, "send SMS button clicked"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 6371
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->pupConnectWifiAlertDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6372
    const-string/jumbo v0, "not send for pupConnectWifiAlertDialog"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 6373
    return-void

    :cond_1
    move v0, v2

    .line 6364
    goto :goto_0

    .line 6369
    :cond_2
    const-string/jumbo v0, "send MMS button clicked"

    invoke-static {v0}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    goto :goto_1

    .line 6375
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_5

    .line 6376
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(I)V

    .line 6461
    :cond_4
    :goto_2
    :pswitch_0
    return-void

    .line 6378
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_a

    .line 6379
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6380
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getCacheRcsMessage()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6381
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    .line 6379
    if-eqz v0, :cond_7

    .line 6382
    :cond_6
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->rcsSend()V

    goto :goto_2

    .line 6384
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6385
    const v0, 0x7f070072

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 6386
    return-void

    .line 6388
    :cond_8
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    if-eqz v0, :cond_9

    .line 6389
    const v0, 0x7f0700fd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V

    .line 6390
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    .line 6391
    return-void

    .line 6393
    :cond_9
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_2

    .line 6397
    :cond_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_2

    .line 6400
    :cond_b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonSmsViewSec:Landroid/widget/ImageButton;

    if-eq p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendButtonMmsViewSec:Landroid/widget/TextView;

    if-ne p1, v0, :cond_d

    .line 6401
    :cond_c
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    .line 6400
    if-eqz v0, :cond_d

    .line 6401
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    .line 6400
    if-eqz v0, :cond_d

    .line 6402
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(I)V

    goto :goto_2

    .line 6403
    :cond_d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPicker:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_f

    .line 6404
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_e

    .line 6405
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$addGrouChatWayClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->addGrouChatWayOrConversation(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 6407
    :cond_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchMultiplePhonePicker()V

    goto :goto_2

    .line 6409
    :cond_f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsPickerGroups:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_10

    .line 6410
    const/16 v0, 0x6d

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchRcsContactGroupPicker(I)V

    goto/16 :goto_2

    .line 6411
    :cond_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_12

    .line 6412
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReplaceAttachment:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 6413
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 6415
    :cond_11
    invoke-direct {p0, v1, v2, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    .line 6416
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6417
    const v0, 0x7f070164

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 6421
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mButtonEmoj:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_14

    .line 6422
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 6423
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6425
    :cond_13
    const v0, 0x7f0f005e

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6426
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showEmojiView(Landroid/view/ViewStub;)V

    goto/16 :goto_2

    .line 6427
    :cond_14
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackView:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_15

    .line 6428
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$75;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$75;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 6434
    :cond_15
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mClearButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_16

    .line 6435
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 6436
    :cond_16
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    if-ne p1, v0, :cond_4

    .line 6437
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getAttachmentType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6458
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Wrong attachment type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 6444
    :pswitch_1
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V

    goto/16 :goto_2

    .line 6447
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->viewMmsMessageAttachment(I)V

    goto/16 :goto_2

    .line 6452
    :pswitch_3
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 6451
    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->viewVcalAttachment(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 6453
    :catch_0
    move-exception v0

    .line 6454
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 6437
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3758
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3760
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3761
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3762
    const/4 v1, 0x1

    .line 3761
    if-ne v0, v1, :cond_4

    .line 3763
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->PORTRAIT:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOrientation(Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;)V

    .line 3769
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3772
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawTopPanel(Z)V

    .line 3778
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onKeyboardStateChanged()V

    .line 3782
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3783
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3784
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showInvalidRecipientDialog()V

    .line 3786
    :cond_2
    iput-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    .line 3787
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3788
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setAttachmentSelectorHeight()V

    .line 3789
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetGridColumnsCount()V

    .line 3791
    :cond_3
    return-void

    .line 3765
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    sget-object v1, Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;->LANDSCAPE:Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->setOrientation(Lcom/android/ex/chips/RecipientEditTextView$ScreenOrientation;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v1, "compose_start"
    invoke-static {v1}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 3026
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 3027
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 3028
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->checkPermissionsIfNeeded(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3029
    return-void

    .line 3031
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->resetConfiguration(Landroid/content/res/Configuration;)Z

    .line 3032
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 3033
    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3035
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->setProgressBarVisibility(Z)V

    .line 3036
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    .line 3037
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowAttachIcon:Z

    .line 3039
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 3040
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isMsimIccCardActive()Z

    move-result v0

    :cond_1
    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    .line 3042
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initResourceRefs()V

    const-string v0, "compose_views"
    invoke-static {v0}, Lcom/android/mms/util/WaveLaunch;->mark(Ljava/lang/String;)V

    .line 3043
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3044
    const v1, 0x7f09001f

    .line 3043
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsFilterContactsByEmail:Z

    .line 3046
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3047
    const v1, 0x7f090020

    .line 3046
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsNoShortcodeGroupMsgSupported:Z

    .line 3049
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 3050
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    .line 3052
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    .line 3054
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3055
    const v1, 0x7f09001c

    .line 3054
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnablePresence:Z

    .line 3056
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnablePresence:Z

    if-eqz v0, :cond_3

    .line 3057
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBound:Z

    if-nez v0, :cond_2

    .line 3058
    invoke-direct {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->bindService(Landroid/content/Context;)V

    .line 3060
    :cond_2
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$42;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$42;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAvailabilityfetchHandler:Landroid/os/Handler;

    .line 3079
    :cond_3
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 4931
    packed-switch p1, :pswitch_data_0

    .line 4935
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 4933
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showImportTemplateDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    .line 4931
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3729
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    if-eqz v0, :cond_0

    .line 3730
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mZoomGestureOverlayView:Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;

    invoke-virtual {v0, p0}, Lcom/android/mms/ui/zoom/ZoomGestureOverlayView;->removeZoomListener(Lcom/android/mms/ui/zoom/ZoomGestureOverlayView$IZoomListener;)V

    .line 3733
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 3734
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3735
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->cancelBackgroundLoading()V

    .line 3737
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3738
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3739
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInvalidRecipientDialog:Landroid/app/AlertDialog;

    .line 3741
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgDetailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgDetailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3742
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgDetailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3743
    iput-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgDetailDialog:Landroid/app/AlertDialog;

    .line 3746
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnablePresence:Z

    if-eqz v0, :cond_4

    .line 3747
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBound:Z

    if-eqz v0, :cond_4

    .line 3748
    invoke-direct {p0, p0}, Lcom/android/mms/ui/ComposeMessageActivity;->unbindService(Landroid/content/Context;)V

    .line 3751
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 3753
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    invoke-interface {v0}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;->releaseMediaPlayer()V

    .line 3754
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 6508
    if-eqz p3, :cond_2

    .line 6511
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 6512
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6513
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 6515
    :cond_0
    return v2

    .line 6517
    :cond_1
    return v1

    .line 6520
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6521
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 6523
    :cond_3
    return v2
.end method

# FIX(history first open): never adjust the opening position after user input.
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
    move-result v0
    if-nez v0, :wave_dispatch_key
    invoke-static {p0}, Lcom/android/mms/ui/WaveHistory;->stopInitialAlignment(Lcom/android/mms/ui/ComposeMessageActivity;)V

    :wave_dispatch_key
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    move-result v0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
    move-result v0
    if-nez v0, :wave_dispatch_touch
    invoke-static {p0}, Lcom/android/mms/ui/WaveHistory;->stopInitialAlignment(Lcom/android/mms/ui/ComposeMessageActivity;)V

    :wave_dispatch_touch
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    move-result v0
    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 3844
    sparse-switch p1, :sswitch_data_0

    .line 3890
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3847
    :sswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3850
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3856
    if-eqz v0, :cond_0

    .line 3857
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3858
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3859
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 3861
    if-eqz v0, :cond_1

    .line 3862
    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 3863
    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 3865
    :cond_1
    return v5

    .line 3851
    :catch_0
    move-exception v0

    .line 3852
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3853
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3871
    :sswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3872
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 3873
    return v5

    .line 3877
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 3878
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3887
    :goto_0
    return v5

    .line 3880
    :cond_2
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$46;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$46;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3844
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x1c -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3895
    packed-switch p1, :pswitch_data_0

    .line 3907
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3897
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3898
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    .line 3899
    return v1

    .line 3901
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3902
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 3904
    :cond_1
    return v1

    .line 3895
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMaxPendingMessagesReached()V
    .locals 1

    .prologue
    .line 4128
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 4130
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$51;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$51;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4137
    return-void
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 4105
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$50;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$50;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4124
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 3294
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 3296
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->setIntent(Landroid/content/Intent;)V

    .line 3299
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSentMessage:Z

    .line 3307
    const-string/jumbo v0, "thread_id"

    invoke-virtual {p1, v0, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 3308
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 3309
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v0, :cond_0

    .line 3310
    invoke-static {p0, v1, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3312
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    .line 3314
    cmp-long v0, v4, v12

    if-lez v0, :cond_4

    .line 3315
    invoke-static {p0, v4, v5, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 3337
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNewIntent: data="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", thread_id extra is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3338
    const-string/jumbo v3, ", new conversation="

    .line 3337
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3338
    const-string/jumbo v3, ", mConversation="

    .line 3337
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3338
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3337
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 3346
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v1, v4, v8

    if-nez v1, :cond_6

    .line 3347
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3348
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sameThread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 3350
    if-nez v1, :cond_3

    .line 3351
    const-string/jumbo v1, "onNewIntent: different conversation"

    invoke-static {v1}, Lcom/android/mms/LogTag;->debugD(Ljava/lang/String;)V

    .line 3352
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    .line 3353
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v1, v4, v12

    if-nez v1, :cond_2

    .line 3354
    :cond_1
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3355
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 3356
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3357
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3358
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_2

    .line 3359
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v10}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 3360
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->cancelBackgroundLoading()V

    .line 3363
    :cond_2
    iput-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    .line 3364
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V

    .line 3365
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->resetEditorText()V

    .line 3366
    invoke-virtual {p0, v10, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->initialize(Landroid/os/Bundle;J)V

    .line 3368
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V

    .line 3369
    return-void

    .line 3317
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v0, v8, v12

    if-nez v0, :cond_5

    .line 3321
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_5

    .line 3322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3334
    :cond_5
    invoke-static {p0, v1, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v1, v2

    .line 3346
    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4643
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 4926
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 4645
    :sswitch_0
    invoke-direct {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showSubjectEditor(Z)V

    .line 4646
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1, v5}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 4647
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateSendButtonState()V

    .line 4648
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectTextEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 4651
    :sswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 4652
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    goto :goto_0

    .line 4655
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4656
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    goto :goto_0

    .line 4660
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4662
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v4

    .line 4661
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(I)V

    goto :goto_0

    .line 4666
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4668
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    aget v0, v0, v4

    .line 4667
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded(I)V

    goto :goto_0

    .line 4672
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->onSearchRequested()Z

    goto :goto_0

    .line 4675
    :sswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteThread(J)V

    goto :goto_0

    .line 4678
    :sswitch_7
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopThread:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4679
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->topConversion(Landroid/content/Context;J)V

    .line 4680
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    goto :goto_0

    .line 4683
    :sswitch_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopThread:Ljava/util/List;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4684
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/rcs/RcsUtils;->cancelTopConversion(Landroid/content/Context;J)V

    .line 4685
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->startMsgListQuery()V

    goto/16 :goto_0

    .line 4689
    :sswitch_9
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$54;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ComposeMessageActivity$54;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->exitComposeMessageActivity(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 4697
    :sswitch_a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->dialRecipient()V

    goto/16 :goto_0

    .line 4700
    :sswitch_b
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->videoCallRecipient()V

    goto/16 :goto_0

    .line 4703
    :sswitch_c
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 4707
    :sswitch_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/RecipientListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4708
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4709
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4714
    :sswitch_e
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 4715
    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4716
    invoke-virtual {v1, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 4717
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4718
    const/high16 v0, 0x80000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4719
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4724
    :sswitch_f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4725
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto/16 :goto_0

    .line 4729
    :sswitch_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->dump()V

    .line 4730
    invoke-static {}, Lcom/android/mms/data/Conversation;->dump()V

    .line 4731
    invoke-static {p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 4737
    :sswitch_11
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mGroupChatApi:Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/suntek/mway/rcs/client/api/groupchat/GroupChatApi;->getGroupChatByThreadId(J)Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4743
    :goto_1
    if-eqz v0, :cond_1

    .line 4744
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ComposeMessageActivity: start group chat detail status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4745
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v2

    .line 4744
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 4747
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4748
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startGroupChatDetailActivity(Landroid/content/Context;Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;)V

    goto/16 :goto_0

    .line 4740
    :catch_0
    move-exception v0

    .line 4741
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 4738
    :catch_1
    move-exception v0

    .line 4739
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 4750
    :cond_2
    const v0, 0x7f070018

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 4756
    :sswitch_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->setRequiringRcsAttachment(Z)V

    .line 4757
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4758
    const-string/jumbo v1, "com.suntek.mway.rcs.nativeui.ACTION_LUNCHER_RCS_SHAREFILE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4759
    const/16 v1, 0x78

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4763
    :sswitch_13
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/android/mms/rcs/RcsUtils;->addNumberToFirewall(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)V

    goto/16 :goto_0

    .line 4766
    :sswitch_14
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddBlacklistDialog()V

    goto/16 :goto_0

    .line 4769
    :sswitch_15
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmAddBlacklist()V

    goto/16 :goto_0

    .line 4773
    :sswitch_16
    const/16 v0, 0x7d

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->selectContact(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 4777
    :sswitch_17
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->launchMultiplePhonePicker()V

    goto/16 :goto_0

    .line 4781
    :sswitch_18
    invoke-direct {p0, v4, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    goto/16 :goto_0

    .line 4785
    :sswitch_19
    const/16 v0, 0x9

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->addAttachment(IZ)V

    goto/16 :goto_0

    .line 4789
    :sswitch_1a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcard()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcal()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4790
    :cond_3
    invoke-direct {p0, v4, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    goto/16 :goto_0

    .line 4791
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4792
    invoke-direct {p0, v4, v5, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    goto/16 :goto_0

    .line 4794
    :cond_5
    invoke-direct {p0, v4, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    goto/16 :goto_0

    .line 4799
    :sswitch_1b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 4802
    :sswitch_1c
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    goto/16 :goto_0

    .line 4805
    :sswitch_1d
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->ensureCreationMode(Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4806
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->forwardMessage(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_0

    .line 4810
    :sswitch_1e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showMessageDetails(Lcom/android/mms/ui/MessageItem;)Z

    goto/16 :goto_0

    .line 4814
    :sswitch_1f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->resendMessage(Lcom/android/mms/ui/MessageItem;)V

    goto/16 :goto_0

    .line 4818
    :sswitch_20
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListItem;->showUseNumberMenu(Z)Z

    goto/16 :goto_0

    .line 4822
    :sswitch_21
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 4823
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-boolean v1, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 4828
    :sswitch_22
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnableSelect:Z

    .line 4829
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mstart:I

    .line 4830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    iget v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mstart:I

    invoke-virtual {v0, v1, v5}, Landroid/widget/EditText;->setStartIndex(IZ)V

    .line 4831
    return v5

    .line 4834
    :sswitch_23
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v4, v1, v4}, Landroid/widget/EditText;->setPerformActionMode(IIZ)V

    .line 4835
    return v5

    .line 4838
    :sswitch_24
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->pasteFromClipBoard()V

    .line 4839
    return v5

    .line 4842
    :sswitch_25
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 4843
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReplaceAttachment:Z

    .line 4842
    if-eqz v0, :cond_6

    .line 4844
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4847
    :cond_6
    invoke-direct {p0, v5, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    goto/16 :goto_0

    .line 4851
    :sswitch_26
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    .line 4852
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReplaceAttachment:Z

    .line 4851
    if-eqz v0, :cond_7

    .line 4853
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 4856
    :cond_7
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4857
    const-string/jumbo v1, "image/*;video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4858
    const/16 v1, 0x7f

    invoke-direct {p0, v5, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getMakRequestCode(ZI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 4864
    :sswitch_27
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 4865
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsReplaceAttachment:Z

    xor-int/lit8 v0, v0, 0x1

    .line 4864
    if-eqz v0, :cond_8

    .line 4867
    invoke-direct {p0, v5, v4, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachmentDialog(ZZZ)V

    .line 4869
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v5}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    goto/16 :goto_0

    .line 4873
    :sswitch_28
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->editSlideshow()V

    goto/16 :goto_0

    .line 4879
    :sswitch_29
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->replyMessage(Lcom/android/mms/ui/MessageItem;)V

    .line 4880
    return v5

    .line 4889
    :sswitch_2a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/AttachmentPlayAllActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4890
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4891
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4892
    return v5

    .line 4895
    :sswitch_2b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v0, :pswitch_data_0

    .line 4906
    :goto_2
    :pswitch_0
    return v5

    .line 4902
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-object v1, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 4903
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v3

    .line 4901
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/app/Activity;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ILcom/android/mms/ui/AsyncDialog;)V

    goto :goto_2

    .line 4909
    :sswitch_2c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveAttachment()V

    .line 4910
    return v5

    .line 4913
    :sswitch_2d
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 4914
    return v5

    .line 4917
    :sswitch_2e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 4918
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->drawBottomPanel()V

    .line 4919
    return v5

    .line 4923
    :sswitch_2f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V

    .line 4924
    return v5

    .line 4643
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_6
        0x2 -> :sswitch_18
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_a
        0x6 -> :sswitch_9
        0x7 -> :sswitch_10
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xc -> :sswitch_e
        0xf -> :sswitch_2e
        0x10 -> :sswitch_2a
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_21
        0x13 -> :sswitch_5
        0x15 -> :sswitch_1d
        0x18 -> :sswitch_2f
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1f -> :sswitch_f
        0x20 -> :sswitch_d
        0x21 -> :sswitch_c
        0x23 -> :sswitch_1f
        0x25 -> :sswitch_15
        0x28 -> :sswitch_7
        0x29 -> :sswitch_8
        0x2a -> :sswitch_b
        0x2c -> :sswitch_16
        0x2d -> :sswitch_25
        0x2e -> :sswitch_27
        0x2f -> :sswitch_2b
        0x30 -> :sswitch_28
        0x31 -> :sswitch_2c
        0x32 -> :sswitch_14
        0x33 -> :sswitch_13
        0x34 -> :sswitch_29
        0x64 -> :sswitch_11
        0x67 -> :sswitch_12
        0x1531 -> :sswitch_17
        0x1532 -> :sswitch_20
        0x1533 -> :sswitch_24
        0x1534 -> :sswitch_22
        0x1535 -> :sswitch_23
        0x1536 -> :sswitch_19
        0x1537 -> :sswitch_1a
        0x1538 -> :sswitch_2d
        0x1539 -> :sswitch_26
        0x102002c -> :sswitch_9
    .end sparse-switch

    .line 4895
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 3630
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    # FEAT(imessage): stop any in-chat voice message playback when leaving conversation.
    invoke-static {}, Lcom/android/mms/ui/WaveMessageUi;->stopVoicePlayback()V

    invoke-static {p0}, Lcom/android/mms/ui/WaveHistory;->stopInitialAlignment(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3636
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setCurrentlyDisplayedThreadId(J)V

    .line 3643
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->removeRecipientsListeners()V

    .line 3644
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3645
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3649
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_1

    .line 3650
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 3655
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_4

    .line 3656
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4

    .line 3657
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    .line 3661
    :goto_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3662
    const-string/jumbo v0, "Mms"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause: mSavedScrollPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 3666
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3668
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3669
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    invoke-interface {v0}, Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;->pause()V

    .line 3671
    :cond_3
    return-void

    .line 3659
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSavedScrollPosition:I

    goto :goto_0
.end method

.method public onPreMessageSent()V
    .locals 1

    .prologue
    .line 4098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4099
    return-void
.end method

.method public onPreRcsMessageSent()V
    .locals 1

    .prologue
    .line 10021
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mResetRcsMessageRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 10022
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 4940
    packed-switch p1, :pswitch_data_0

    .line 4945
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 4946
    return-void

    .line 4942
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDialog(I)V

    goto :goto_0

    .line 4940
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12

    .prologue
    const/4 v11, 0x2

    const v10, 0x1080050

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4215
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 4217
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 4218
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mReplyMessageMode:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4221
    return v1

    .line 4224
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mEnablePresence:Z

    if-eqz v0, :cond_1

    .line 4225
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4226
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 4227
    const/16 v2, 0x2a

    const v4, 0x7f07011e

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 4228
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getVTCapability(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoCapable:Z

    .line 4229
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$53;

    invoke-direct {v5, p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity$53;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 4240
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mVideoCapable:Z

    if-eqz v0, :cond_15

    .line 4241
    const v0, 0x7f02004f

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4242
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4247
    :goto_0
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4265
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->focusedElementId()I

    move-result v4

    .line 4266
    const v0, 0x7f0f013c

    if-ne v4, v0, :cond_3

    .line 4268
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_2

    .line 4269
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_16

    .line 4270
    const/16 v0, 0x9

    const v2, 0x7f07016a

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4272
    const/16 v0, 0xa

    const v2, 0x7f07016b

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4278
    :cond_2
    :goto_1
    const/16 v0, 0x1531

    const v2, 0x7f070375

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcard()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcal()Z

    move-result v0

    :goto_2
    if-nez v0, :cond_18

    .line 4282
    const/16 v0, 0x1536

    const v2, 0x7f070160

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4283
    const v2, 0x7f070160

    .line 4282
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4286
    const/16 v0, 0x1537

    const v2, 0x7f070161

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4287
    const v2, 0x7f070161

    .line 4286
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4290
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 4291
    const/16 v0, 0x1536

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4292
    const/16 v2, 0x1537

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 4293
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4294
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4302
    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_4

    .line 4303
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isTop()Z

    move-result v0

    if-nez v0, :cond_19

    .line 4304
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTopThread:Ljava/util/List;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4303
    if-eqz v0, :cond_19

    .line 4305
    const/16 v0, 0x28

    const v2, 0x7f07004c

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4306
    const v2, 0x7f02007e

    .line 4305
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4313
    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-le v0, v1, :cond_5

    .line 4314
    const/16 v0, 0x20

    const v2, 0x7f070265

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4318
    :cond_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v1, v0, :cond_7

    .line 4319
    invoke-static {p0}, Lcom/android/mms/rcs/RcsUtils;->isFireWallInstalled(Landroid/content/Context;)Z

    move-result v0

    .line 4318
    if-eqz v0, :cond_7

    .line 4320
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4321
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 4320
    invoke-static {v0, v2, v1}, Lcom/android/mms/rcs/RcsUtils;->showFirewallMenu(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4323
    const v0, 0x7f07007b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4322
    const/16 v2, 0x32

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4325
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 4326
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 4325
    invoke-static {v0, v2, v3}, Lcom/android/mms/rcs/RcsUtils;->showFirewallMenu(Landroid/content/Context;Lcom/android/mms/data/ContactList;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4328
    const v0, 0x7f07007c

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4327
    const/16 v2, 0x33

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 4336
    :cond_7
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_8

    .line 4337
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getGroupChat()Lcom/suntek/mway/rcs/client/aidl/service/entity/GroupChat;

    move-result-object v0

    .line 4339
    if-eqz v0, :cond_8

    .line 4340
    const/16 v0, 0x64

    const v2, 0x7f07000e

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4356
    :cond_8
    :goto_5
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSupportApi:Lcom/suntek/mway/rcs/client/api/support/SupportApi;

    invoke-virtual {v0, p0}, Lcom/suntek/mway/rcs/client/api/support/SupportApi;->isPluginInstalled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4357
    const/16 v0, 0x67

    const v2, 0x7f070075

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4360
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMultiAttachmentEditor:Lcom/android/mms/ui/MultiAttachmentEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultiAttachmentEditor;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4362
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcard()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcal()Z

    move-result v0

    :goto_6
    if-nez v0, :cond_a

    .line 4364
    const/16 v0, 0x1536

    const v2, 0x7f070160

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4365
    const v2, 0x7f070160

    .line 4364
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4368
    const/16 v0, 0x1537

    const v2, 0x7f070161

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4369
    const v2, 0x7f070161

    .line 4368
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4371
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4372
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v2

    if-lt v0, v2, :cond_a

    .line 4373
    const/16 v0, 0x1536

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4374
    const/16 v2, 0x1537

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 4375
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4376
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4380
    :cond_a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 4381
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_b

    .line 4382
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_1e

    .line 4383
    const/16 v0, 0x9

    const v2, 0x7f07016a

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4385
    const/16 v0, 0xa

    const v2, 0x7f07016b

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4391
    :cond_b
    :goto_7
    const/16 v0, 0x30

    const v2, 0x7f0701b0

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4396
    :goto_8
    const/16 v0, 0x2e

    const v2, 0x7f070168

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4398
    :cond_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 4399
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_20

    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_20

    .line 4400
    invoke-virtual {v0, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->isWapPushNumber(Ljava/lang/String;)Z

    move-result v0

    move v2, v0

    .line 4402
    :goto_9
    const v0, 0x7f0f0039

    if-ne v4, v0, :cond_13

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_13

    .line 4403
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_d

    .line 4404
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShowTwoButtons:Z

    if-eqz v0, :cond_21

    .line 4405
    const/16 v0, 0x9

    const v5, 0x7f07016a

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4407
    const/16 v0, 0xa

    const v5, 0x7f07016b

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4414
    :cond_d
    :goto_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_10

    .line 4416
    sget-boolean v0, Lcom/android/mms/MmsApp;->mIsSubjectEnabled:Z

    if-eqz v0, :cond_e

    .line 4417
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 4418
    const v0, 0x7f070162

    invoke-interface {p1, v3, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4419
    const v5, 0x7f02007e

    .line 4418
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4424
    :cond_e
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcard()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasVcal()Z

    move-result v0

    :goto_b
    if-nez v0, :cond_23

    .line 4425
    const/16 v0, 0x1536

    const v5, 0x7f070160

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4426
    const v5, 0x7f070160

    .line 4425
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4429
    const/16 v0, 0x1537

    const v5, 0x7f070161

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4430
    const v5, 0x7f070161

    .line 4429
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v11}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4432
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4433
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideNumber()I

    move-result v5

    if-lt v0, v5, :cond_f

    .line 4434
    const/16 v0, 0x1536

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 4435
    const/16 v5, 0x1537

    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 4436
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4437
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 4444
    :cond_f
    :goto_c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showAddAttachementButton()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4445
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAddAttachmentButton:Landroid/widget/ImageButton;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 4450
    :cond_10
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showPasteMenu()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4451
    const/16 v0, 0x1533

    const v5, 0x7f070109

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4454
    :cond_11
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showEditMenu()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4455
    const/16 v0, 0x1534

    const v5, 0x7f07010a

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4456
    const/16 v0, 0x1535

    const v5, 0x7f07010b

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4460
    :cond_12
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4461
    const/16 v0, 0x1538

    const v5, 0x7f07029d

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4462
    const/16 v0, 0x2c

    const v5, 0x7f070103

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4466
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4467
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4468
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    .line 4475
    :cond_14
    :goto_d
    const v0, 0x7f0f0022

    if-ne v4, v0, :cond_2f

    .line 4476
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_25

    .line 4477
    return v3

    .line 4244
    :cond_15
    const v0, 0x7f02004e

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4245
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 4275
    :cond_16
    const/4 v0, 0x4

    const v2, 0x7f070169

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_17
    move v0, v1

    .line 4280
    goto/16 :goto_2

    .line 4297
    :cond_18
    const/16 v0, 0x1539

    const v2, 0x7f070003

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4298
    const/16 v0, 0x2d

    const v2, 0x7f070002

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 4308
    :cond_19
    const/16 v0, 0x29

    const v2, 0x7f07004d

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4309
    const v2, 0x7f02007e

    .line 4308
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 4343
    :cond_1a
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-ne v0, v1, :cond_1c

    .line 4344
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4345
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 4346
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->checkCapability(Ljava/lang/String;)V

    .line 4348
    :cond_1b
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addBurnMessageMenu(Landroid/view/Menu;)V

    .line 4351
    :cond_1c
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-nez v0, :cond_8

    .line 4352
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->addSwitchToGroupChatMenuItem(Landroid/view/Menu;)V

    goto/16 :goto_5

    :cond_1d
    move v0, v1

    .line 4362
    goto/16 :goto_6

    .line 4388
    :cond_1e
    const/4 v0, 0x4

    const v2, 0x7f070169

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4393
    :cond_1f
    const/16 v0, 0x1539

    const v2, 0x7f070003

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4394
    const/16 v0, 0x2d

    const v2, 0x7f070002

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_8

    :cond_20
    move v2, v3

    .line 4399
    goto/16 :goto_9

    .line 4410
    :cond_21
    const/4 v0, 0x4

    const v5, 0x7f070169

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_a

    :cond_22
    move v0, v1

    .line 4424
    goto/16 :goto_b

    .line 4440
    :cond_23
    const/16 v0, 0x1539

    const v5, 0x7f070003

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4441
    const/16 v0, 0x2d

    const v5, 0x7f070002

    invoke-interface {p1, v3, v0, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 4471
    :cond_24
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->buildAddAddressToContactMenuItem(Landroid/view/Menu;)V

    goto/16 :goto_d

    .line 4480
    :cond_25
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4485
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 4486
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 4487
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->historyItemType(I)I

    move-result v0

    .line 4488
    if-gez v0, :cond_26

    .line 4490
    return v3

    .line 4481
    :catch_0
    move-exception v0

    .line 4482
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4483
    return v3

    .line 4493
    :cond_26
    # FEAT(imessage): put React / Reactions / Edit history at the top of the message menu for fast D-pad access.
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-static {p1, p0, v4}, Lcom/android/mms/ui/WaveTapbacks;->onCreateMessageMenu(Landroid/view/Menu;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;)V

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v4, v4, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    packed-switch v4, :pswitch_data_0

    .line 4509
    :goto_e
    :pswitch_0
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4510
    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-direct {p0, v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->isForwardable(J)Z

    move-result v4

    .line 4509
    if-eqz v4, :cond_28

    .line 4511
    :cond_27
    iget-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 4509
    if-eqz v4, :cond_28

    .line 4511
    xor-int/lit8 v2, v2, 0x1

    .line 4509
    if-eqz v2, :cond_28

    .line 4512
    const/16 v2, 0x15

    const v4, 0x7f07013a

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4514
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090026

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 4515
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v2, :cond_28

    .line 4516
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-le v2, v1, :cond_28

    .line 4517
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v2, v2, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v2, v1, :cond_28

    .line 4518
    const/16 v2, 0x34

    const v4, 0x7f070106

    invoke-interface {p1, v3, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4524
    :cond_28
    const/16 v2, 0x3ea

    if-ne v0, v2, :cond_29

    .line 4525
    const/16 v0, 0x18

    const v2, 0x7f07014b

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4527
    :cond_29
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    if-eqz v0, :cond_2a

    .line 4528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4527
    if-eqz v0, :cond_2a

    .line 4528
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4527
    if-eqz v0, :cond_2a

    .line 4529
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showUseNumber()Z

    move-result v0

    .line 4527
    if-eqz v0, :cond_2a

    .line 4530
    const/16 v0, 0x1532

    const v2, 0x7f070107

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4531
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    .line 4532
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    .line 4531
    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/MessageItem;)V

    .line 4533
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-direct {p0, p1, v0, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/Menu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/ui/MessageItem;)V

    .line 4536
    :cond_2a
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 4538
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2b

    .line 4539
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2b

    .line 4540
    const/16 v0, 0xf

    const v2, 0x7f070213

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4544
    :cond_2b
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 4545
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    packed-switch v0, :pswitch_data_1

    .line 4559
    :cond_2c
    :goto_f
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_30

    .line 4560
    const/16 v0, 0x1d

    const v2, 0x7f070216

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4565
    :cond_2d
    :goto_10
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageItemForMenu:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 4566
    const/16 v0, 0x23

    const v2, 0x7f07013c

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4569
    :cond_2e
    const/16 v0, 0x11

    .line 4570
    const v2, 0x7f070130

    .line 4569
    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4571
    const/16 v0, 0x12

    const v2, 0x7f070132

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4573
    :cond_2f
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_33

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_33

    .line 4577
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isFocused()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_31

    .line 4578
    return v3

    .line 4501
    :pswitch_2
    const/16 v4, 0x2f

    const v5, 0x7f07010c

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4502
    const/16 v4, 0x31

    const v5, 0x7f07010d

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_e

    .line 4505
    :pswitch_3
    const/16 v4, 0x10

    const v5, 0x7f07012f

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 4506
    const/16 v4, 0x31

    const v5, 0x7f07010d

    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_e

    .line 4552
    :pswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ne v0, v1, :cond_2c

    .line 4553
    const/16 v0, 0xf

    const v2, 0x7f070213

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_f

    .line 4561
    :cond_30
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_2d

    .line 4562
    const/16 v0, 0x1c

    const v2, 0x7f070215

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_10

    .line 4581
    :cond_31
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4586
    if-eqz v0, :cond_32

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_32

    .line 4587
    const v0, 0x7f070139

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 4588
    const v2, 0x108003c

    .line 4587
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4593
    :cond_32
    :goto_11
    return v1

    .line 4582
    :catch_1
    move-exception v0

    .line 4583
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unexpected ClassCastException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4584
    return v3

    .line 4590
    :cond_33
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eqz v0, :cond_32

    .line 4591
    const/4 v0, 0x3

    const v2, 0x7f070163

    invoke-interface {p1, v3, v0, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108003c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_11

    .line 4493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 4545
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public onProtocolChanged(Z)V
    .locals 1

    .prologue
    .line 4015
    new-instance v0, Lcom/android/mms/ui/ComposeMessageActivity$49;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$49;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 4044
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .prologue
    .line 10949
    const/16 v0, 0x7e0

    if-ne p1, v0, :cond_0

    .line 10950
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10956
    :cond_0
    :goto_0
    return-void

    .line 10953
    :cond_1
    const v0, 0x7f07036b

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 3382
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 3384
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mInAsyncAddAttathProcess:Z

    if-eqz v0, :cond_2

    .line 3394
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 3396
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->sanityCheckConversation()V

    .line 3404
    :cond_1
    :goto_0
    return-void

    .line 3397
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->recipientCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3401
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 3575
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 3582
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsPickingContact:Z

    .line 3583
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->addRecipientsListeners()V

    .line 3584
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setSendButtonImage()V

    .line 3585
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3586
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3589
    :cond_0
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update title, mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3596
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$45;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ComposeMessageActivity$45;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3616
    const-wide/16 v2, 0x64

    .line 3596
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRunning:Z

    .line 3619
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateThreadIdIfRunning()V

    .line 3620
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsAirplaneModeOn:Z

    .line 3622
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3623
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setBackgroundWallpaper()V

    .line 3624
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->setTextFontsize()V

    .line 3626
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 3544
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3546
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3547
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    if-eqz v0, :cond_0

    .line 3548
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    invoke-virtual {v0}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v0

    .line 3550
    const-string/jumbo v1, "recipients"

    .line 3551
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 3550
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3558
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->writeStateToBundle(Landroid/os/Bundle;)V

    .line 3560
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    if-eqz v0, :cond_1

    .line 3561
    const-string/jumbo v0, "exit_on_sent"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendDiscreetMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3563
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    if-eqz v0, :cond_2

    .line 3564
    const-string/jumbo v0, "forwarded_message"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mForwardMessageMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3567
    :cond_2
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    if-eqz v0, :cond_3

    .line 3568
    const-string/jumbo v0, "reply_mode"

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSendReplyMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3571
    :cond_3
    return-void

    .line 3555
    :cond_4
    const-string/jumbo v0, "recipients"

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/16 v0, 0x14

    const/4 v6, 0x0

    .line 3408
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 3409
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isSmsEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 3410
    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    if-eq v1, v2, :cond_0

    .line 3411
    iput-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsSmsEnabled:Z

    .line 3412
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->invalidateOptionsMenu()V

    .line 3415
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->initFocus()V

    .line 3416
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3417
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/RecipientsEditor;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3421
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3424
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getMediaStateFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3426
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3427
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSIMStatusChangeFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3428
    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v1, :cond_2

    .line 3429
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->registerRcsReceiver()V

    .line 3438
    :cond_2
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/util/DraftCache;->hasDraft(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3449
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 3452
    iput-boolean v6, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessagesAndDraftLoaded:Z

    .line 3454
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3455
    if-eqz v0, :cond_4

    .line 3456
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTextKeepState(Ljava/lang/CharSequence;)V

    .line 3466
    :cond_4
    # PERF(mms rows): run loadMessagesAndDraft directly in onStart so the history provider query
    # executes in parallel with onResume and window setup instead of waiting for a posted runnable.
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->loadMessagesAndDraft(I)V

    .line 3476
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 3478
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update title, mConversation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3482
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 3486
    sget-boolean v0, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcardAddNumber:Z

    if-eqz v0, :cond_6

    .line 3487
    sput-boolean v6, Lcom/android/mms/ui/ComposeMessageActivity;->mRcsShareVcardAddNumber:Z

    .line 3489
    :cond_6
    return-void

    .line 3440
    :cond_7
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 3446
    const/16 v0, 0x12

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3675
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {p0}, Lcom/android/mms/ui/WaveHistory;->endReveal(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 3678
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;

    const/16 v1, 0x2537

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$BackgroundQueryHandler;->cancelOperation(I)V

    .line 3681
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 3687
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 3692
    const-string/jumbo v0, "Mms"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3693
    const-string/jumbo v0, "save draft"

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->log(Ljava/lang/String;)V

    .line 3695
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAvoidingSavingDraft:Z

    if-nez v0, :cond_1

    .line 3698
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->saveDraft(Z)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3706
    :goto_0
    iput-boolean v4, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mShouldLoadDraft:Z

    .line 3707
    iput-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageActivity;->isAvoidingSavingDraft:Z

    .line 3711
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mHttpProgressReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3712
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMediaStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3713
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAirplaneModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3714
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mSimBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3715
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    .line 3716
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->unregisterRcsReceiver()V

    .line 3719
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 3720
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mAttachmentSelector:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3722
    :cond_3
    return-void

    .line 3699
    :catch_0
    move-exception v0

    .line 3700
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "onStop:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 2

    .prologue
    # PERF(contact updates): one refresh posted at a time (WaveComposePerf)
    invoke-static {p0, p1}, Lcom/android/mms/ui/WaveComposePerf;->queue(Ljava/lang/Object;Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-nez v0, :wave_post

    return-void

    :wave_post
    .line 7832
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItemHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/ui/ComposeMessageActivity$81;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$81;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7854
    return-void
.end method

.method public onZoomWithScale(F)V
    .locals 2

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    if-eqz v0, :cond_0

    .line 3098
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/mms/ui/MessageListView;->handleZoomWithScale(FZ)V

    .line 3100
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 3101
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mTextEditor:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/mms/ui/zoom/ZoomMessageListItem;->zoomViewByScale(Landroid/content/Context;Landroid/widget/TextView;FZ)V

    .line 3103
    :cond_1
    return-void
.end method

.method public rcsSend()V
    .locals 2

    .prologue
    .line 10321
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->isPreparedForSending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsRcsEnabled:Z

    if-eqz v0, :cond_2

    .line 10322
    :cond_0
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getUserIsUseRcsPolicy(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10323
    invoke-static {}, Lcom/android/mms/rcs/RcsUtils;->isRcsOnline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10324
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->getDefaultSendingConfirmValue(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10326
    invoke-static {p0}, Lcom/android/mms/rcs/RcsDualSimMananger;->setDefaultSendingConfirmValue(Landroid/content/Context;)V

    .line 10328
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->showSetRcsPolicyDialog()V

    .line 10329
    return-void

    .line 10331
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsBurnMessage:Z

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 10332
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 10356
    :cond_2
    :goto_0
    return-void

    .line 10334
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_4

    .line 10335
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    .line 10334
    if-eqz v0, :cond_4

    .line 10336
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getCacheRcsMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10334
    if-eqz v0, :cond_4

    .line 10337
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10338
    const/16 v1, 0x384

    .line 10337
    invoke-static {v0, v1}, Lcom/android/mms/rcs/RcsDualSimMananger;->isContentExceedLimit(Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10334
    if-eqz v0, :cond_4

    .line 10339
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 10340
    return-void

    .line 10342
    :cond_4
    const v0, 0x7f070072

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10353
    :catch_0
    move-exception v0

    .line 10354
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/suntek/rcs/ui/common/RcsLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 10345
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10346
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getCacheRcsMessage()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10345
    if-eqz v0, :cond_6

    .line 10347
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->confirmSendMessageIfNeeded()V

    .line 10348
    return-void

    .line 10350
    :cond_6
    const v0, 0x7f070071

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->toast(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method showUseNumber()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4597
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_0

    .line 4598
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mMessageListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->showUseNumberMenu(Z)Z

    move-result v0

    return v0

    .line 4600
    :cond_0
    return v1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1236
    if-ltz p2, :cond_0

    .line 1237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mWaitingForSubActivity:Z

    .line 1242
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageActivity;->mIsKeyboardOpen:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.provider.action.QUICK_CONTACT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1243
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->hideKeyboard()V

    .line 1247
    :cond_1
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1253
    :goto_0
    return-void

    .line 1248
    :catch_0
    move-exception v0

    .line 1249
    const-string/jumbo v0, "Mms"

    const-string/jumbo v1, "Application is disabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const v0, 0x7f070396

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method undeliveredMessageDialog(J)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 6823
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 6824
    new-array v0, v3, [Ljava/lang/Object;

    .line 6825
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 6824
    const v1, 0x7f070137

    invoke-virtual {p0, v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6831
    :goto_0
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 6832
    return-void

    .line 6828
    :cond_0
    const v0, 0x7f070138

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
