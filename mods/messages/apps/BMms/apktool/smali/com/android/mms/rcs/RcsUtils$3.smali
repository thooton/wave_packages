.class final Lcom/android/mms/rcs/RcsUtils$3;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsUtils;->addNotificationItem(Landroid/content/Context;Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/rcs/RcsUtils$3;->val$context:Landroid/content/Context;

    .line 1520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/mms/rcs/RcsUtils$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->-wrap0(Landroid/content/Context;)V

    .line 1524
    return-void
.end method
