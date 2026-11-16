.class public Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;
.super Ljava/lang/Object;
.source "AttachmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/AttachmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconListItem"
.end annotation


# instance fields
.field private final mResource:I

.field private final mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/AttachmentPagerAdapter;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->this$0:Lcom/android/mms/ui/AttachmentPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p3, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->mResource:I

    .line 279
    iput-object p2, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->mTitle:Ljava/lang/String;

    .line 280
    return-void
.end method


# virtual methods
.method public getResource()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->mResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentPagerAdapter$IconListItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method
