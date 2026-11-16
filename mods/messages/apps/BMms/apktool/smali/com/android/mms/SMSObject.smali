.class Lcom/android/mms/SMSObject;
.super Ljava/lang/Object;
.source "QTIBackupSMS.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private addr:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private readState:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/SMSObject;->addr:Ljava/lang/String;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/SMSObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/mms/SMSObject;->msg:Ljava/lang/String;

    return-object v0
.end method

.method getReadState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/mms/SMSObject;->readState:Ljava/lang/String;

    return-object v0
.end method

.method getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/mms/SMSObject;->time:Ljava/lang/String;

    return-object v0
.end method

.method setAddr(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/mms/SMSObject;->addr:Ljava/lang/String;

    .line 91
    return-void
.end method

.method setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/SMSObject;->id:Ljava/lang/String;

    .line 87
    return-void
.end method

.method setMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/mms/SMSObject;->msg:Ljava/lang/String;

    .line 95
    return-void
.end method

.method setReadState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/mms/SMSObject;->readState:Ljava/lang/String;

    .line 99
    return-void
.end method

.method setTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/SMSObject;->time:Ljava/lang/String;

    .line 103
    return-void
.end method
