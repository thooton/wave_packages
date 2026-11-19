.class Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MessagingExpiryPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->setMmsExpirySummary(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->-get1(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 130
    iget-object v2, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->-get1(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->-get1(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;->-get1(Lcom/android/mms/ui/MessagingExpiryPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    const/4 v0, 0x0

    return v0
.end method
