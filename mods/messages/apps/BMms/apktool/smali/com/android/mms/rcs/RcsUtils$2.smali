.class final Lcom/android/mms/rcs/RcsUtils$2;
.super Ljava/lang/Object;
.source "RcsUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsUtils;->addPublicAccountItem(Landroid/content/Context;Landroid/widget/ListView;)V
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
    iput-object p1, p0, Lcom/android/mms/rcs/RcsUtils$2;->val$context:Landroid/content/Context;

    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/mms/rcs/RcsUtils$2;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsUtils;->-wrap1(Landroid/content/Context;)V

    .line 1499
    return-void
.end method
