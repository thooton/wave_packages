.class Lcom/android/mms/ui/SlideEditorActivity$9;
.super Ljava/lang/Object;
.source "SlideEditorActivity.java"

# interfaces
.implements Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SlideEditorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideEditorActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 906
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onResizeResult(Lcom/google/android/mms/pdu/PduPart;Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f070179

    .line 908
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 909
    if-nez p1, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 911
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 910
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 913
    return-void

    .line 917
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get5(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 918
    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 919
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;JLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    .line 920
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SlideEditorActivity;->-get1(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-get0(Lcom/android/mms/ui/SlideEditorActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;)V

    .line 922
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v1, 0x7f07019d

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap5(Lcom/android/mms/ui/SlideEditorActivity;I)V

    .line 923
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideEditorActivity;->invalidateOptionsMenu()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    return-void

    .line 937
    :catch_0
    move-exception v0

    .line 938
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 939
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v2, 0x7f070177

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap1(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 940
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 938
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    :catch_1
    move-exception v0

    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 935
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v2, 0x7f07017b

    invoke-static {v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap1(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v1

    .line 936
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const v3, 0x7f07017d

    invoke-static {v2, v3}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap1(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 929
    :catch_2
    move-exception v0

    .line 930
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 931
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070174

    invoke-static {v1, v3, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 932
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070176

    invoke-static {v2, v4, v3}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 924
    :catch_3
    move-exception v0

    .line 925
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    const-string/jumbo v1, "add picture failed"

    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap3(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    .line 927
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity$9;->this$0:Lcom/android/mms/ui/SlideEditorActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap0(Lcom/android/mms/ui/SlideEditorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/android/mms/ui/SlideEditorActivity;->-wrap2(Lcom/android/mms/ui/SlideEditorActivity;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 926
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
