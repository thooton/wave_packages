.class Lcom/android/mms/ui/SmsPreferenceActivity$5;
.super Ljava/lang/Object;
.source "SmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SmsPreferenceActivity;->setSmsPreferValiditySummary(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SmsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SmsPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$5;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    .line 553
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 556
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$5;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get4(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 559
    iget-object v2, p0, Lcom/android/mms/ui/SmsPreferenceActivity$5;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get4(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    .line 560
    iget-object v3, p0, Lcom/android/mms/ui/SmsPreferenceActivity$5;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get4(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v1, v3, v1

    .line 559
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/SmsPreferenceActivity$5;->this$0:Lcom/android/mms/ui/SmsPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/SmsPreferenceActivity;->-get4(Lcom/android/mms/ui/SmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 563
    const/4 v0, 0x1

    return v0
.end method
