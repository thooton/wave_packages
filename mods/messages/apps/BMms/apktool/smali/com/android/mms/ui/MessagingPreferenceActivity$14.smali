.class Lcom/android/mms/ui/MessagingPreferenceActivity$14;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->setChatWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

.field final synthetic val$wallpaperChooser:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->val$wallpaperChooser:Landroid/app/AlertDialog;

    .line 1504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1509
    packed-switch p3, :pswitch_data_0

    .line 1520
    :goto_0
    return-void

    .line 1511
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap1(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1512
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1515
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->-wrap2(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    .line 1516
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$14;->val$wallpaperChooser:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 1509
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
