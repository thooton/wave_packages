.class Lcom/android/mms/ui/MobilePaperShowActivity$1;
.super Ljava/lang/Object;
.source "MobilePaperShowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$1;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$1;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set2(Lcom/android/mms/ui/MobilePaperShowActivity;Z)Z

    .line 127
    return-void
.end method
