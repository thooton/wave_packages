.class final enum Lcom/android/mms/QTIBackupSMS$MsgBox;
.super Ljava/lang/Enum;
.source "QTIBackupSMS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/QTIBackupSMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MsgBox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/QTIBackupSMS$MsgBox;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/QTIBackupSMS$MsgBox;

.field public static final enum DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

.field public static final enum INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

.field public static final enum SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    new-instance v0, Lcom/android/mms/QTIBackupSMS$MsgBox;

    const-string/jumbo v1, "SENT"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/QTIBackupSMS$MsgBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    .line 136
    new-instance v0, Lcom/android/mms/QTIBackupSMS$MsgBox;

    const-string/jumbo v1, "INBOX"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/QTIBackupSMS$MsgBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

    .line 137
    new-instance v0, Lcom/android/mms/QTIBackupSMS$MsgBox;

    const-string/jumbo v1, "DRAFT"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/QTIBackupSMS$MsgBox;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/mms/QTIBackupSMS$MsgBox;

    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->SENT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->INBOX:Lcom/android/mms/QTIBackupSMS$MsgBox;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/QTIBackupSMS$MsgBox;->DRAFT:Lcom/android/mms/QTIBackupSMS$MsgBox;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->$VALUES:[Lcom/android/mms/QTIBackupSMS$MsgBox;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/QTIBackupSMS$MsgBox;
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/android/mms/QTIBackupSMS$MsgBox;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/QTIBackupSMS$MsgBox;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/QTIBackupSMS$MsgBox;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/mms/QTIBackupSMS$MsgBox;->$VALUES:[Lcom/android/mms/QTIBackupSMS$MsgBox;

    return-object v0
.end method
