.class public interface abstract Lcom/android/providers/contacts/VoicemailTable$DelegateHelper;
.super Ljava/lang/Object;
.source "VoicemailTable.java"


# virtual methods
.method public abstract checkAndAddSourcePackageIntoValues(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Landroid/content/ContentValues;)V
.end method

.method public abstract openDataFile(Lcom/android/providers/contacts/VoicemailContentProvider$UriData;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method
