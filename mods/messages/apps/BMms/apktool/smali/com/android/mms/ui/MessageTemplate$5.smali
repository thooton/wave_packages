.class Lcom/android/mms/ui/MessageTemplate$5;
.super Ljava/lang/Object;
.source "MessageTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageTemplate;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageTemplate;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 208
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x7f0f0086

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 209
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    const v1, 0x7f07037d

    .line 214
    const/4 v2, 0x1

    .line 213
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 215
    return-void

    .line 217
    :cond_0
    const-string/jumbo v1, "message"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 219
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$5;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v1}, Lcom/android/mms/ui/MessageTemplate;->-get0(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 225
    :cond_1
    return-void
.end method
