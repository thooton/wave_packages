.class Lcom/android/mms/ui/MessagingPreferenceActivity$5;
.super Ljava/lang/Object;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingPreferenceActivity;->showSmscPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    .line 716
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 717
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 718
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 714
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->newInstance(Lcom/android/mms/ui/MessagingPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;

    move-result-object v0

    .line 719
    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity$5;->this$0:Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity$MyEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 720
    const/4 v0, 0x1

    return v0
.end method
