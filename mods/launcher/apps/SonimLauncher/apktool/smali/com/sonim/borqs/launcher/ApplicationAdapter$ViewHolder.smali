.class Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/ApplicationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field private appIconView:Landroid/widget/ImageView;

.field private appNameView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->appIconView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/ApplicationAdapter$ViewHolder;->appNameView:Landroid/widget/TextView;

    return-object p1
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
