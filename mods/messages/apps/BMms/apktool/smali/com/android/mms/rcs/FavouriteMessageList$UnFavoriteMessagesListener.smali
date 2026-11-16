.class Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;
.super Ljava/lang/Object;
.source "FavouriteMessageList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/FavouriteMessageList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnFavoriteMessagesListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavouriteMessageList;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/FavouriteMessageList;Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;-><init>(Lcom/android/mms/rcs/FavouriteMessageList;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/mms/rcs/FavouriteMessageList$UnFavoriteMessagesListener;->this$0:Lcom/android/mms/rcs/FavouriteMessageList;

    invoke-static {v0}, Lcom/android/mms/rcs/FavouriteMessageList;->-wrap0(Lcom/android/mms/rcs/FavouriteMessageList;)V

    .line 365
    return-void
.end method
