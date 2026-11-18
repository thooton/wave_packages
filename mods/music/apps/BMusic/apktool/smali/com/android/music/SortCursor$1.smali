.class Lcom/android/music/SortCursor$1;
.super Landroid/database/DataSetObserver;
.source "SortCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/SortCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/SortCursor;


# direct methods
.method constructor <init>(Lcom/android/music/SortCursor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    .line 39
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/SortCursor;->-set0(Lcom/android/music/SortCursor;I)I

    .line 46
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/music/SortCursor$1;->this$0:Lcom/android/music/SortCursor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/music/SortCursor;->-set0(Lcom/android/music/SortCursor;I)I

    .line 51
    return-void
.end method
