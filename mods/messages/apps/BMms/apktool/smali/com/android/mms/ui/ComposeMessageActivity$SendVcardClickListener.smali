.class Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendVcardClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 10283
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 10285
    packed-switch p2, :pswitch_data_0

    .line 10316
    :goto_0
    return-void

    .line 10287
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10288
    const/16 v1, 0x6f

    .line 10287
    invoke-static {v0, v4, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap58(Lcom/android/mms/ui/ComposeMessageActivity;II)V

    goto :goto_0

    .line 10291
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v1, 0x77

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap55(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    goto :goto_0

    .line 10295
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 10294
    invoke-static {v0}, Lcom/suntek/rcs/ui/common/mms/RcsContactsUtils;->getMyRcsRawContactId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 10296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10297
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v1, 0x7f070076

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-wrap81(Lcom/android/mms/ui/ComposeMessageActivity;I)V

    .line 10298
    return-void

    .line 10300
    :cond_0
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 10301
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 10300
    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 10303
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 10302
    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10305
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 10306
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-set13(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 10307
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1, v0}, Lcom/android/mms/rcs/RcsUtils;->createVcardFile(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 10308
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/mms/data/WorkingMessage;->setVcardPath(Ljava/lang/String;)V

    .line 10309
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setRcsType(I)V

    .line 10310
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->-get57(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->-get18(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setIsBurn(Z)V

    .line 10311
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendVcardClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->rcsSend()V

    goto :goto_0

    .line 10285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
