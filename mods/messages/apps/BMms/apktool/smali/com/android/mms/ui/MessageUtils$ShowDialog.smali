.class Lcom/android/mms/ui/MessageUtils$ShowDialog;
.super Landroid/os/AsyncTask;
.source "MessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ShowDialog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 2903
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2904
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    .line 2905
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2907
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageUtils$ShowDialog;->doInBackground([Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    .line 2909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2910
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    const v2, 0x7f0702ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2911
    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->-wrap1(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;

    move-result-object v1

    .line 2912
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-get0(Lcom/android/mms/ui/MessageUtils$MessageInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2913
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f0702d0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2914
    iget-object v2, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->-wrap0(Landroid/content/Context;)Lcom/android/mms/ui/MessageUtils$MessageInfo;

    move-result-object v2

    .line 2915
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-get0(Lcom/android/mms/ui/MessageUtils$MessageInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2916
    iget-object v3, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    const v4, 0x7f0702d2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2917
    const-string/jumbo v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-get1(Lcom/android/mms/ui/MessageUtils$MessageInfo;)J

    move-result-wide v4

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$MessageInfo;->-get1(Lcom/android/mms/ui/MessageUtils$MessageInfo;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->formatMemorySize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2918
    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2921
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageUtils$ShowDialog;->onPostExecute(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/StringBuilder;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2923
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2924
    return-void

    .line 2926
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2927
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageUtils$ShowDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2928
    const v1, 0x7f0702cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2929
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2930
    const v1, 0x7f0701ac

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2931
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2932
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->-set0(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2933
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->-get0()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2935
    :cond_1
    return-void
.end method
