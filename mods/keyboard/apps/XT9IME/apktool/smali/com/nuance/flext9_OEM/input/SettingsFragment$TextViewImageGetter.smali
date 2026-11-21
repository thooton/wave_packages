.class Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextViewImageGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/nuance/flext9_OEM/input/SettingsFragment;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    const v0, 0x7f02004a

    .line 108
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/SettingsFragment$TextViewImageGetter;->this$0:Lcom/nuance/flext9_OEM/input/SettingsFragment;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    return-object v0
.end method
