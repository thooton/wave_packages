.class final Lcom/android/mms/ui/MessageUtils$16;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils;->showUrlOptions(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$messageUrl:Ljava/lang/String;

.field final synthetic val$slideContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$16;->val$slideContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/mms/ui/MessageUtils$16;->val$messageUrl:Ljava/lang/String;

    .line 2809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 2812
    packed-switch p2, :pswitch_data_0

    .line 2823
    :goto_0
    return-void

    .line 2814
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$slideContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$16;->val$messageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->-wrap3(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2817
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$slideContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$16;->val$messageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->-wrap2(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2820
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$16;->val$slideContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$16;->val$messageUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 2812
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
