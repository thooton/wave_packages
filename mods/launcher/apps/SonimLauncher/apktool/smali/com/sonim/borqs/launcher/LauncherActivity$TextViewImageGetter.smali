.class Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;
.super Ljava/lang/Object;
.source "LauncherActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonim/borqs/launcher/LauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TextViewImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonim/borqs/launcher/LauncherActivity;


# direct methods
.method private constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V
    .locals 0

    .prologue
    .line 2970
    iput-object p1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonim/borqs/launcher/LauncherActivity;Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;-><init>(Lcom/sonim/borqs/launcher/LauncherActivity;)V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2973
    const v0, 0x7f020058

    .line 2975
    iget-object v1, p0, Lcom/sonim/borqs/launcher/LauncherActivity$TextViewImageGetter;->this$0:Lcom/sonim/borqs/launcher/LauncherActivity;

    invoke-virtual {v1}, Lcom/sonim/borqs/launcher/LauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2976
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2977
    return-object v0
.end method
