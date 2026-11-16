.class Lcom/android/mms/ui/SmsPreferenceActivity$4;
.super Ljava/lang/Object;
.source "SmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;->getSMSCPrefOnClickListener(I)Landroid/preference/Preference$OnPreferenceClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

.field final synthetic val$subId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$4;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    iput p2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$4;->val$subId:I

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/mms/ui/SmsPreferenceActivity$4;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    .line 358
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 359
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 360
    iget v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity$4;->val$subId:I

    .line 356
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/SmsPreferenceActivity$MyEditDialogFragment;->newInstance(Lcom/android/mms/ui/SmsPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/SmsPreferenceActivity$MyEditDialogFragment;

    move-result-object v0

    .line 361
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$4;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SmsPreferenceActivity$MyEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 362
    const/4 v0, 0x1

    return v0
.end method
