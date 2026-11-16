.class Lcom/android/mms/ui/MessageTemplate$3;
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
    iput-object p1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v0}, Lcom/android/mms/ui/MessageTemplate;->-get1(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    .line 161
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x7f0f0086

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 162
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    if-ltz v3, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v1}, Lcom/android/mms/ui/MessageTemplate;->-get1(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    if-lt v3, v1, :cond_1

    .line 166
    :cond_0
    const-string/jumbo v0, "MessageTemplate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postion error. position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v2}, Lcom/android/mms/ui/MessageTemplate;->-get1(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 171
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://com.android.mms.MessageTemplateProvider/messages/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 175
    if-nez v0, :cond_2

    .line 176
    const-string/jumbo v0, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_2

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v1}, Lcom/android/mms/ui/MessageTemplate;->-get0(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 181
    :cond_2
    return-void

    .line 184
    :cond_3
    const-string/jumbo v1, "content://com.android.mms.MessageTemplateProvider/messages"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    iget-object v4, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    const/4 v5, 0x1

    invoke-static {v4, v3, v0, v5}, Lcom/android/mms/ui/MessageTemplate;->-wrap0(Lcom/android/mms/ui/MessageTemplate;ILjava/lang/String;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 186
    iget-object v3, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageTemplate;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 187
    if-nez v0, :cond_4

    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageTemplate;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_4

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/MessageTemplate$3;->this$0:Lcom/android/mms/ui/MessageTemplate;

    invoke-static {v1}, Lcom/android/mms/ui/MessageTemplate;->-get0(Lcom/android/mms/ui/MessageTemplate;)Landroid/widget/SimpleCursorAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SimpleCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 192
    :cond_4
    return-void
.end method
