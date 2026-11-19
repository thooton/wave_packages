.class Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/QueryBrowserActivity$QueryListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$1:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    .line 470
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 471
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/music/QueryBrowserActivity$QueryListAdapter$QueryHandler;->this$1:Lcom/android/music/QueryBrowserActivity$QueryListAdapter;

    invoke-static {v0}, Lcom/android/music/QueryBrowserActivity$QueryListAdapter;->-get0(Lcom/android/music/QueryBrowserActivity$QueryListAdapter;)Lcom/android/music/QueryBrowserActivity;

    move-result-object v0

    # FEAT(whitelist)
    invoke-static {v0, p3}, Lcom/android/music/WaveLibrary;->filterSearch(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/music/QueryBrowserActivity;->init(Landroid/database/Cursor;)V

    .line 477
    return-void
.end method
