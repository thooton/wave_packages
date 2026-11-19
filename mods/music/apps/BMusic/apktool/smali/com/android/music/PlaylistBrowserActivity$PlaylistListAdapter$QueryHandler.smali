.class Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PlaylistBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$1:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    .line 709
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 710
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 717
    if-eqz p3, :cond_0

    .line 718
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$1:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->-get0(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/music/PlaylistBrowserActivity;->-wrap1(Lcom/android/music/PlaylistBrowserActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p3

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter$QueryHandler;->this$1:Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    invoke-static {v0}, Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->-get0(Lcom/android/music/PlaylistBrowserActivity$PlaylistListAdapter;)Lcom/android/music/PlaylistBrowserActivity;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/music/PlaylistBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 721
    return-void
.end method
