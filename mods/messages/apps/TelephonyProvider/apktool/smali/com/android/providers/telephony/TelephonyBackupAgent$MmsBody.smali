.class final Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;
.super Ljava/lang/Object;
.source "TelephonyBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MmsBody"
.end annotation


# instance fields
.field public charSet:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    .line 1223
    iput p2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    .line 1224
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1228
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 1229
    :cond_0
    return v0

    .line 1231
    :cond_1
    check-cast p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;

    .line 1232
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    iget v2, p1, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " charSet:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$MmsBody;->charSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
