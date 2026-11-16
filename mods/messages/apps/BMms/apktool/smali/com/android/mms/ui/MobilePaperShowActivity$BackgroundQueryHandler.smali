.class final Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "MobilePaperShowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MobilePaperShowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackgroundQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MobilePaperShowActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    .line 423
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 424
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 428
    if-eqz p3, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get0(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get0(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0, p3}, Lcom/android/mms/ui/MobilePaperShowActivity;->-set0(Lcom/android/mms/ui/MobilePaperShowActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 433
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-get0(Lcom/android/mms/ui/MobilePaperShowActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->-wrap0(Lcom/android/mms/ui/MobilePaperShowActivity;)V

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MobilePaperShowActivity$BackgroundQueryHandler;->this$0:Lcom/android/mms/ui/MobilePaperShowActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MobilePaperShowActivity;->invalidateOptionsMenu()V

    .line 437
    return-void
.end method
