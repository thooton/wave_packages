.class Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;
.super Ljava/lang/Object;
.source "RcsConfirmDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/rcs/RcsConfirmDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;-><init>(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v0

    .line 105
    const/4 v1, 0x1

    .line 104
    invoke-virtual {v0, v1}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->setSendPolicy(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v0, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-static {v0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->-wrap0(Lcom/android/mms/rcs/RcsConfirmDialogActivity;)V

    .line 112
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 113
    iget-object v0, p0, Lcom/android/mms/rcs/RcsConfirmDialogActivity$SendListener;->this$0:Lcom/android/mms/rcs/RcsConfirmDialogActivity;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsConfirmDialogActivity;->finish()V

    .line 114
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->printStackTrace()V

    goto :goto_0

    .line 106
    :catch_1
    move-exception v0

    .line 107
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
