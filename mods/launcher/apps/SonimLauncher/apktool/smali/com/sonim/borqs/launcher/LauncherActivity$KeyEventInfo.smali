.class Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;
.super Ljava/lang/Object;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyEventInfo"
.end annotation


# instance fields
.field count:I

.field keyCode:I

.field keyUpCount:I

.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    .prologue
    .line 1414
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 1420
    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyCode:I

    .line 1421
    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->count:I

    .line 1422
    iput v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyUpCount:I

    .line 1423
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(keyCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1428
    const-string/jumbo v1, "count = "

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1428
    iget v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->count:I

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1429
    const-string/jumbo v1, "keyUpCount = "

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1429
    iget v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$KeyEventInfo;->keyUpCount:I

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1429
    const-string/jumbo v1, ")"

    .line 1427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
