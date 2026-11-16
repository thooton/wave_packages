.class Lcom/android/mms/ui/MmsPreferenceActivity$2;
.super Ljava/lang/Object;
.source "MmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPreferenceActivity;->setMmsPriority()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPreferenceActivity;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 337
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 339
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->val$editor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pref_key_mms_priority"

    .line 342
    invoke-static {}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get0()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MmsPreferenceActivity$2;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v3}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get4(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget v2, v2, v3

    .line 341
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    const/4 v0, 0x0

    return v0
.end method
