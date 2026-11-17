.class public Lcom/sonim/borqs/launcher/HomeScreenFragment;
.super Landroid/app/Fragment;
.source "HomeScreenFragment.java"

# interfaces
.implements Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;
.implements Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/HomeScreenFragment$1;
    }
.end annotation


# instance fields
.field private mAboveApp:Landroid/widget/ImageView;

.field mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private mBelowApp:Landroid/widget/ImageView;

.field private mCenterApp:Landroid/widget/ImageView;

.field private mHomescreenMessage:Landroid/widget/TextView;

.field private mIsCharging:Z

.field private mLeftArrow:Landroid/widget/ImageView;

.field private mRightArrow:Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/HomeScreenFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mHomescreenMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/HomeScreenFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mIsCharging:Z

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mIsCharging:Z

    .line 188
    new-instance v0, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$1;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 27
    return-void
.end method

.method public static create()Lcom/sonim/borqs/launcher/HomeScreenFragment;
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-direct {v0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;-><init>()V

    .line 51
    return-object v0
.end method

.method private initShortcutDrawble()V
    .locals 2

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDPADUpPkgName()Ljava/lang/String;

    move-result-object v0

    .line 170
    const/16 v1, 0x64

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDPADDownPkgName()Ljava/lang/String;

    move-result-object v0

    .line 172
    const/16 v1, 0x65

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 173
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getDPADCenterPkgName()Ljava/lang/String;

    move-result-object v0

    .line 174
    const/16 v1, 0x66

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->setShortcutDrawable(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 178
    const-string/jumbo v0, "HomeScreenFragment"

    const-string/jumbo v1, " registerReceiver"

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/content/IntentFilter;

    .line 180
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    .line 179
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBatteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 186
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 57
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;)V

    .line 58
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->setProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V

    .line 59
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 80
    const v0, 0x7f030005

    const/4 v1, 0x0

    .line 79
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mAboveApp:Landroid/widget/ImageView;

    .line 83
    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBelowApp:Landroid/widget/ImageView;

    .line 84
    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mCenterApp:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mLeftArrow:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0e000f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mRightArrow:Landroid/widget/ImageView;

    .line 90
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mAboveApp:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonim/borqs/launcher/HomeScreenFragment$2;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$2;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBelowApp:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonim/borqs/launcher/HomeScreenFragment$3;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$3;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mCenterApp:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonim/borqs/launcher/HomeScreenFragment$4;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$4;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mLeftArrow:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonim/borqs/launcher/HomeScreenFragment$5;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$5;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mRightArrow:Landroid/widget/ImageView;

    new-instance v2, Lcom/sonim/borqs/launcher/HomeScreenFragment$6;

    invoke-direct {v2, p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment$6;-><init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f0e001c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mHomescreenMessage:Landroid/widget/TextView;

    .line 141
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 64
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->setShortcutUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$ShortcutUpdateListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p0}, Lcom/sonim/borqs/launcher/LauncherActivity;->removeProfileUpdateListener(Lcom/sonim/borqs/launcher/LauncherActivity$OnProfileChangeListener;)V

    .line 66
    return-void
.end method

.method public onProfileChange()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-boolean v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mIsCharging:Z

    if-eqz v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    const-string/jumbo v1, "multi_profile_current_profile_name"

    .line 273
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 278
    :cond_1
    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 280
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 282
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->getProfileString(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mHomescreenMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mHomescreenMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 164
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->initShortcutDrawble()V

    .line 165
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->onProfileChange()V

    .line 166
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 152
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->registerReceiver()V

    .line 153
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 158
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->unregisterReceiver()V

    .line 159
    return-void
.end method

.method public setShortcutDrawable(Ljava/lang/String;I)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 233
    :cond_0
    const-string/jumbo v1, "HomeScreenFragment"

    const-string/jumbo v2, " setShortcutDrawable"

    invoke-static {v1, v2}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->isQuickProfileSwitchPkgAndClassName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->getQuickProfileSwitch(Landroid/content/Context;)Lcom/sonim/borqs/launcher/LauncherActivity$Apps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity$Apps;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    :cond_1
    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_1
    return-void

    .line 239
    :cond_2
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string/jumbo v0, "HomeScreenFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setShortcutDrawable, pkg name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonim/borqs/launcher/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 243
    :try_start_0
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 246
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getPkgIconForTheme(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    if-nez v0, :cond_1

    .line 248
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string/jumbo v1, "HomeScreenFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sonim/borqs/launcher/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void

    .line 258
    :pswitch_0
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mAboveApp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 261
    :pswitch_1
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mBelowApp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 264
    :pswitch_2
    iget-object v1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment;->mCenterApp:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 256
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
