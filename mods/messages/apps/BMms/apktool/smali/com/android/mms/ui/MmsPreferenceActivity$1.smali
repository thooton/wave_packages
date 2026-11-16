.class Lcom/android/mms/ui/MmsPreferenceActivity$1;
.super Ljava/lang/Object;
.source "MmsPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsPreferenceActivity;->createResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get5(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 217
    iget-object v1, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v1}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get5(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/android/mms/ui/MmsPreferenceActivity$1;->this$0:Lcom/android/mms/ui/MmsPreferenceActivity;

    invoke-static {v2}, Lcom/android/mms/ui/MmsPreferenceActivity;->-get5(Lcom/android/mms/ui/MmsPreferenceActivity;)Landroid/preference/ListPreference;

    move-result-object v2

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 219
    const/4 v0, 0x1

    return v0
.end method
