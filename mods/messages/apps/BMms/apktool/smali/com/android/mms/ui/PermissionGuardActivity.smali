.class public Lcom/android/mms/ui/PermissionGuardActivity;
.super Landroid/app/Activity;
.source "PermissionGuardActivity.java"


# static fields
.field private static PERMISSION_DENY_THRESHOLD_MILLLIS:J


# instance fields
.field private mExit:Landroid/widget/TextView;

.field private mExtPermissions:[Ljava/lang/String;

.field private mNext:Landroid/widget/TextView;

.field private mOriginalIntent:Landroid/content/Intent;

.field private mRequestTime:J

.field private mSettings:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0xfa

    sput-wide v0, Lcom/android/mms/ui/PermissionGuardActivity;->PERMISSION_DENY_THRESHOLD_MILLLIS:J

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private enter()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->finish()V

    .line 167
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mOriginalIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->startActivity(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method private redirectIfNeeded()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 154
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    .line 154
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->hasPermissions([Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    .line 156
    return v1

    :cond_0
    move v0, v1

    .line 154
    goto :goto_0

    .line 158
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->hasBasicPermissions()Z

    move-result v0

    if-nez v0, :cond_2

    .line 159
    return v1

    .line 161
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->enter()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected goRequestPermissions()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mRequestTime:J

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getMissingBasicPermissions()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 108
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 109
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 116
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 118
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/PermissionGuardActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 119
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ext_permissions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExtPermissions:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "original_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mOriginalIntent:Landroid/content/Intent;

    .line 73
    invoke-direct {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->redirectIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    return-void

    .line 76
    :cond_0
    const v0, 0x7f040040

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->goRequestPermissions()V

    .line 79
    const v0, 0x7f0f0119

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExit:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mExit:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/PermissionGuardActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PermissionGuardActivity$1;-><init>(Lcom/android/mms/ui/PermissionGuardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v0, 0x7f0f0114

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mNext:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mNext:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/PermissionGuardActivity$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PermissionGuardActivity$2;-><init>(Lcom/android/mms/ui/PermissionGuardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0f011a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mSettings:Landroid/widget/TextView;

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mSettings:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/ui/PermissionGuardActivity$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/PermissionGuardActivity$3;-><init>(Lcom/android/mms/ui/PermissionGuardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 174
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    if-ne p1, v0, :cond_2

    move v2, v0

    move v0, v1

    .line 126
    :goto_0
    array-length v3, p3

    if-ge v0, v3, :cond_1

    .line 127
    aget v3, p3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v2, v1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_1
    if-eqz v2, :cond_3

    .line 132
    invoke-direct {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->enter()V

    .line 142
    :cond_2
    :goto_1
    return-void

    .line 134
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 135
    iget-wide v4, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mRequestTime:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/mms/ui/PermissionGuardActivity;->PERMISSION_DENY_THRESHOLD_MILLLIS:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mNext:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/android/mms/ui/PermissionGuardActivity;->mSettings:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    const v0, 0x7f0f0118

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/PermissionGuardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/mms/ui/PermissionGuardActivity;->redirectIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    return-void
.end method
