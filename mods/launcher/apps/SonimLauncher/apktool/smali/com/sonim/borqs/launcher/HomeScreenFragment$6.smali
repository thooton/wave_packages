.class Lcom/sonim/borqs/launcher/HomeScreenFragment$6;
.super Ljava/lang/Object;
.source "HomeScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonim/borqs/launcher/HomeScreenFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;


# direct methods
.method constructor <init>(Lcom/sonim/borqs/launcher/HomeScreenFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$6;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sonim/borqs/launcher/HomeScreenFragment$6;->this$0:Lcom/sonim/borqs/launcher/HomeScreenFragment;

    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/HomeScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonim/borqs/launcher/LauncherActivity;

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lcom/sonim/borqs/launcher/LauncherActivity;->startDPADRightAction()V

    .line 137
    :cond_0
    return-void
.end method
