.class Lcom/android/mms/rcs/FavoriteMessageListAdapter$2;
.super Ljava/lang/Object;
.source "FavoriteMessageListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/FavoriteMessageListAdapter;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/FavoriteMessageListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/FavoriteMessageListAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter$2;->this$0:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/mms/rcs/FavoriteMessageListAdapter$2;->this$0:Lcom/android/mms/rcs/FavoriteMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/rcs/FavoriteMessageListAdapter;->notifyDataSetChanged()V

    .line 147
    return-void
.end method
