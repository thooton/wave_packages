.class Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackQueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;


# direct methods
.method constructor <init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 1611
    iput-object p1, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    .line 1612
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1613
    return-void
.end method


# virtual methods
.method public doQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1618
    if-eqz p6, :cond_0

    # FEAT(whitelist)
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;
    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;
    move-result-object v0
    invoke-static {v0, p1, p3}, Lcom/android/music/WaveLibrary;->selection(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    move-result-object p3

    .line 1622
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1623
    const-string/jumbo v1, "limit"

    const-string/jumbo v2, "100"

    .line 1622
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1624
    new-instance v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    invoke-direct {v2, p0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;-><init>(Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;)V

    .line 1625
    iput-object p1, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    .line 1626
    iput-object p2, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 1627
    iput-object p3, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    .line 1628
    iput-object p4, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 1629
    iput-object p5, v2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    .line 1631
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1633
    const/4 v0, 0x0

    return-object v0

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1644
    iget-object v3, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v3}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v3

    if-eqz p2, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, p3, v0}, Lcom/android/music/TrackBrowserActivity;->init(Landroid/database/Cursor;Z)V

    .line 1645
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get9(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1646
    iget-object v0, p0, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->this$1:Lcom/android/music/TrackBrowserActivity$TrackListAdapter;

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter;->-get0(Lcom/android/music/TrackBrowserActivity$TrackListAdapter;)Lcom/android/music/TrackBrowserActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/TrackBrowserActivity;->-get9(Lcom/android/music/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object p3

    .line 1647
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 1648
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v3, 0x64

    if-lt v0, v3, :cond_2

    .line 1649
    check-cast p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;

    .line 1650
    iget-object v3, p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->uri:Landroid/net/Uri;

    iget-object v4, p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->projection:[Ljava/lang/String;

    .line 1651
    iget-object v5, p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selection:Ljava/lang/String;

    iget-object v6, p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v7, p2, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler$QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p0

    .line 1650
    invoke-virtual/range {v0 .. v7}, Lcom/android/music/TrackBrowserActivity$TrackListAdapter$TrackQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    :cond_2
    return-void
.end method
