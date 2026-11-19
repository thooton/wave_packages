.class public Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;
    }
.end annotation


# static fields
.field private static mDataMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mDataNonMedia:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mResultdata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mShowMediaOnly:Z

.field private static mShowNonMediaOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowMediaOnly:Z

    .line 51
    sput-boolean v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowNonMediaOnly:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 58
    invoke-static {p2, p1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getData(ILandroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 59
    return-void
.end method

.method protected static addItem(Ljava/util/List;Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;-><init>(Ljava/lang/String;II)V

    .line 148
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method protected static getData(ILandroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "android.hardware.camera"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    const v1, 0x7f07022c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    const v2, 0x7f0200a0

    const/4 v3, 0x1

    .line 78
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 81
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    const v1, 0x7f07022e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 82
    const v2, 0x7f02007a

    const/4 v3, 0x3

    .line 81
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 89
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    const v1, 0x7f07022f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    const v2, 0x7f02006d

    const/4 v3, 0x4

    .line 90
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 94
    :cond_1
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    const v1, 0x7f070230

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    const v2, 0x7f02008c

    const/4 v3, 0x5

    .line 94
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 98
    if-nez p0, :cond_2

    .line 99
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    const v1, 0x7f070231

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    const v2, 0x7f0200b3

    const/4 v3, 0x6

    .line 99
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    const v1, 0x7f0702bc

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 109
    const v2, 0x7f02009f

    const/16 v3, 0x8

    .line 107
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 112
    :cond_3
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    const v1, 0x7f070233

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    const v2, 0x7f020069

    const/16 v3, 0xa

    .line 112
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->addItem(Ljava/util/List;Ljava/lang/String;II)V

    .line 116
    invoke-static {}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getResultData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getResultData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    sget-boolean v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowMediaOnly:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    sget-object v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 137
    :goto_0
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    return-object v0

    .line 131
    :cond_0
    sget-boolean v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowNonMediaOnly:Z

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    sget-object v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    sget-object v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataMedia:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 135
    sget-object v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mResultdata:Ljava/util/List;

    sget-object v1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mDataNonMedia:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public buttonToCommand(I)I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;

    .line 63
    invoke-virtual {v0}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter$AttachmentListItem;->getCommand()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->getResultData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setShowMedia(Z)V
    .locals 0

    .prologue
    .line 120
    sput-boolean p1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowMediaOnly:Z

    .line 121
    return-void
.end method

.method public setShowNonMedia(Z)V
    .locals 0

    .prologue
    .line 124
    sput-boolean p1, Lcom/android/mms/ui/AttachmentTypeSelectorAdapter;->mShowNonMediaOnly:Z

    .line 125
    return-void
.end method
