.class Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Lcom/android/mms/util/ItemLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageLoadedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/mms/util/ItemLoadedCallback",
        "<",
        "Lcom/android/mms/util/ThumbnailManager$ImageLoaded;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListItem:Lcom/android/mms/ui/MessageListItem;

.field private mMessageId:J


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MessageListItem;)V
    .locals 2

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    .line 939
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    .line 940
    return-void
.end method


# virtual methods
.method public onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    invoke-static {v0}, Lcom/android/mms/ui/MessageListItem;->-get6(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    .line 953
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 954
    iget-boolean v0, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mIsVideo:Z

    if-eqz v0, :cond_1

    .line 955
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/MessageListItem;->setVideoThumbnail(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 960
    :cond_0
    :goto_0
    return-void

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mListItem:Lcom/android/mms/ui/MessageListItem;

    iget-object v1, p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4, v1}, Lcom/android/mms/ui/MessageListItem;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 946
    check-cast p1, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->onItemLoaded(Lcom/android/mms/util/ThumbnailManager$ImageLoaded;Ljava/lang/Throwable;)V

    return-void
.end method

.method public reset(Lcom/android/mms/ui/MessageListItem;)V
    .locals 2

    .prologue
    .line 943
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMessageId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/MessageListItem$ImageLoadedCallback;->mMessageId:J

    .line 944
    return-void
.end method
