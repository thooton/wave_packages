.class public Lcom/android/mms/QTIBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "QTIBackupAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/android/mms/QTIBackupSMS;

    const-string/jumbo v1, "smsBackup"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/QTIBackupSMS;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/android/mms/QTIBackupSMS;->performBackup()V

    .line 52
    new-instance v0, Lcom/android/mms/QTIBackupMMS;

    const-string/jumbo v1, "mmsBackup"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/QTIBackupMMS;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0}, Lcom/android/mms/QTIBackupMMS;->performBackup()V

    .line 54
    invoke-super {p0, p1}, Landroid/app/backup/BackupAgentHelper;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 55
    return-void
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgentHelper;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    .line 62
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mmsBackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/android/mms/QTIBackupMMS;

    const-string/jumbo v1, "mmsBackup"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/QTIBackupMMS;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Lcom/android/mms/QTIBackupMMS;->performRestore()V

    .line 66
    :cond_0
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "smsBackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    new-instance v0, Lcom/android/mms/QTIBackupSMS;

    const-string/jumbo v1, "smsBackup"

    invoke-direct {v0, p0, v1}, Lcom/android/mms/QTIBackupSMS;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Lcom/android/mms/QTIBackupSMS;->performRestore()V

    .line 70
    :cond_1
    return-void
.end method
