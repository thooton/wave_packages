.class Lcom/android/music/WeekSelector$1;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/WeekSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/android/music/WeekSelector;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    iget-object v0, v0, Lcom/android/music/WeekSelector;->mWeeks:Lcom/android/music/VerticalTextSpinner;

    invoke-virtual {v0}, Lcom/android/music/VerticalTextSpinner;->getCurrentSelectedPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 83
    iget-object v1, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    const-string/jumbo v2, "numweeks"

    invoke-static {v1, v2, v0}, Lcom/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 84
    iget-object v0, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/music/WeekSelector;->setResult(I)V

    .line 85
    iget-object v0, p0, Lcom/android/music/WeekSelector$1;->this$0:Lcom/android/music/WeekSelector;

    invoke-virtual {v0}, Lcom/android/music/WeekSelector;->finish()V

    .line 86
    return-void
.end method
