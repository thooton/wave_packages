.class public Lcom/sonim/borqs/launcher/AccessibilityUtil;
.super Ljava/lang/Object;
.source "AccessibilityUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static announceForAccessibility(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 51
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 54
    const/16 v0, 0x4000

    .line 53
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 56
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "accessibility"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 32
    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
