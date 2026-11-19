.class public Lcom/android/mms/QTIMMSObject;
.super Ljava/lang/Object;
.source "QTIMMSObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private date:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private locked:Ljava/lang/String;

.field private mmData:[B

.field private msg_box:Ljava/lang/String;

.field private msg_size:Ljava/lang/String;

.field private msg_type:Ljava/lang/String;

.field private read:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocked()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->locked:Ljava/lang/String;

    return-object v0
.end method

.method public getMmData()[B
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->mmData:[B

    return-object v0
.end method

.method public getMsg_box()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->msg_box:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->msg_size:Ljava/lang/String;

    return-object v0
.end method

.method public getRead()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/QTIMMSObject;->read:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->date:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->id:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setLocked(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->locked:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setMmData([B)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->mmData:[B

    .line 51
    return-void
.end method

.method public setMsg_box(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->msg_box:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setMsg_size(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->msg_size:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMsg_type(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->msg_type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setRead(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/mms/QTIMMSObject;->read:Ljava/lang/String;

    .line 75
    return-void
.end method
