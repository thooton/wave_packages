.class public Lcom/android/mms/ui/ChipsRecipientAdapter;
.super Lcom/android/ex/chips/BaseRecipientAdapter;
.source "ChipsRecipientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;
    }
.end annotation


# direct methods
.method static synthetic -set0(Lcom/android/mms/ui/ChipsRecipientAdapter;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter;->mCurrentConstraint:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/ChipsRecipientAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/mms/ui/ChipsRecipientAdapter;->clearTempEntries()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/ChipsRecipientAdapter;Ljava/util/List;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ChipsRecipientAdapter;->updateEntries(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/ex/chips/BaseRecipientAdapter;-><init>(Landroid/content/Context;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;-><init>(Lcom/android/mms/ui/ChipsRecipientAdapter;Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;)V

    return-object v0
.end method
