.class public Lcom/android/mms/ui/WarnOfStorageLimitsActivity;
.super Landroid/app/Activity;
.source "WarnOfStorageLimitsActivity.java"

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    # FIX(retention): close any obsolete activity restored by Android without showing a dialog.
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    return-void
.end method
