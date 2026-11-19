.class public Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;
.super Landroid/widget/SimpleAdapter;
.source "AttachmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AttachmentGridAdapter"
.end annotation


# instance fields
.field mCurrentPager:I

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[II)V"
        }
    .end annotation

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 296
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 297
    iput p7, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->mCurrentPager:I

    .line 298
    return-void
.end method

.method private shouldDisableAddSubjectItem(I)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 319
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get3(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get4(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 302
    iget v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->mCurrentPager:I

    if-nez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get3(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get2(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 305
    :cond_0
    return v1

    .line 304
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->shouldDisableAddSubjectItem(I)Z

    move-result v0

    .line 303
    if-nez v0, :cond_0

    .line 315
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/SimpleAdapter;->isEnabled(I)Z

    move-result v0

    return v0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get3(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get2(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 312
    :cond_4
    :goto_0
    return v1

    .line 309
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get2(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 310
    :cond_6
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get1(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    .line 311
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$AttachmentGridAdapter;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-static {v0}, Lcom/android/mms/ui/AttachmentPagerAdapter;->-get0(Lcom/android/mms/ui/AttachmentPagerAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0
.end method
