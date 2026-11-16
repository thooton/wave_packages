.class Lcom/android/mms/SMSBackup;
.super Ljava/lang/Object;
.source "QTIBackupSMS.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public SMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/SMSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/SMSBackup;->SMSList:Ljava/util/ArrayList;

    .line 111
    return-void
.end method
