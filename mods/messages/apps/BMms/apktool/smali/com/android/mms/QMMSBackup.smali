.class Lcom/android/mms/QMMSBackup;
.super Ljava/lang/Object;
.source "QTIBackupMMS.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public MMSList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/QTIMMSObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/QMMSBackup;->MMSList:Ljava/util/ArrayList;

    .line 67
    return-void
.end method
