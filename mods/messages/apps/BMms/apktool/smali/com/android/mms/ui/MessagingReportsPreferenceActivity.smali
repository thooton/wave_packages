.class public Lcom/android/mms/ui/MessagingReportsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingReportsPreferenceActivity.java"


# static fields
.field private static MMS_DELIVERY_REPORTS:Ljava/lang/String;

.field private static MMS_READ_REPORTS:Ljava/lang/String;

.field private static MSG_TYPE:Ljava/lang/String;

.field private static SMS_DELIVERY_REPORTS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMsgType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "MessagingReportsPreferenceActivity"

    sput-object v0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->TAG:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, "mms_read_reports"

    sput-object v0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MMS_READ_REPORTS:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "mms_delivery_reports"

    sput-object v0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MMS_DELIVERY_REPORTS:Ljava/lang/String;

    .line 50
    const-string/jumbo v0, "sms_delivery_reports"

    sput-object v0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->SMS_DELIVERY_REPORTS:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "msg_type"

    sput-object v0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private createResource()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MMS_READ_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->addPreferencesFromResource(I)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MMS_DELIVERY_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    sget-object v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->SMS_DELIVERY_REPORTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    sget-object v1, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->MSG_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->createResource()V

    # FEAT(rcs settings): this activity also hosts the RCS settings screen (msg_type argon_rcs)
    iget-object v0, p0, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->mMsgType:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/mms/argon/ArgonRcsSettings;->onCreate(Landroid/preference/PreferenceActivity;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 67
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 97
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 88
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingReportsPreferenceActivity;->finish()V

    .line 89
    const/4 v0, 0x1

    return v0

    .line 83
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
