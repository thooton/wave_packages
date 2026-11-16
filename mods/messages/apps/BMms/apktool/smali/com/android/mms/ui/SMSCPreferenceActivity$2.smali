.class Lcom/android/mms/ui/SMSCPreferenceActivity$2;
.super Ljava/lang/Object;
.source "SMSCPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SMSCPreferenceActivity;->showSmscPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SMSCPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;

    .line 141
    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    invoke-virtual {p1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    .line 143
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 139
    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->newInstance(Lcom/android/mms/ui/SMSCPreferenceActivity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/SMSCPreferenceActivity$2;->this$0:Lcom/android/mms/ui/SMSCPreferenceActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SMSCPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SMSCPreferenceActivity$MyEditDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x1

    return v0
.end method
