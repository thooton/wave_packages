.class Lcom/sonim/borqs/launcher/LauncherActivity$6;
.super Landroid/database/ContentObserver;
.source "LauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$6;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 3057
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 3060
    iget-object v0, p0, Lcom/sonim/borqs/launcher/LauncherActivity$6;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-static {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->-wrap5(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    .line 3061
    return-void
.end method
