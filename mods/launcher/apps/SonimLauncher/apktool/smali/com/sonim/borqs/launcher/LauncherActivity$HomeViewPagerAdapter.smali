.class Lcom/sonim/borqs/launcher/LauncherActivity$HomeViewPagerAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method public constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 3033
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$HomeViewPagerAdapter;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 3034
    invoke-direct {p0, p2}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 3035
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 3052
    const/4 v0, 0x3

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 3039
    packed-switch p1, :pswitch_data_0

    .line 3047
    invoke-static {}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->create()Lcom/sonim/borqs/launcher/HomeScreenFragment;

    move-result-object v0

    return-object v0

    .line 3041
    :pswitch_0
    invoke-static {}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->create()Lcom/sonim/borqs/launcher/HomeScreenFragment;

    move-result-object v0

    return-object v0

    .line 3043
    :pswitch_1
    invoke-static {}, Lcom/sonim/borqs/launcher/QuickSettingFragment;->create()Lcom/sonim/borqs/launcher/QuickSettingFragment;

    move-result-object v0

    return-object v0

    .line 3045
    :pswitch_2
    invoke-static {}, Lcom/sonim/borqs/launcher/MyEventsFragment;->create()Lcom/sonim/borqs/launcher/MyEventsFragment;

    move-result-object v0

    return-object v0

    .line 3039
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
