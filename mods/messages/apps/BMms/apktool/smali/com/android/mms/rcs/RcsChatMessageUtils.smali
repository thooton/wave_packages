.class public Lcom/android/mms/rcs/RcsChatMessageUtils;
.super Ljava/lang/Object;
.source "RcsChatMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static favoritedOneMessage(Landroid/content/Context;JZZ)V
    .locals 3

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    new-instance v1, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;

    invoke-direct {v1}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;-><init>()V

    .line 228
    invoke-virtual {v1, p1, p2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setMessageRowId(J)V

    .line 229
    if-nez p3, :cond_0

    .line 230
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setStoreType(I)V

    .line 234
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :try_start_0
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v1

    .line 237
    if-eqz p4, :cond_1

    .line 238
    invoke-virtual {v1, v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->collect(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    :goto_1
    return-void

    .line 232
    :cond_0
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/suntek/mway/rcs/client/aidl/service/entity/SimpleMessage;->setStoreType(I)V

    goto :goto_0

    .line 240
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->cancelCollect(Ljava/util/List;)V
    :try_end_1
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->printStackTrace()V

    goto :goto_1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static forwardContactOrConversation(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 288
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 289
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 290
    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 291
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 292
    const v2, 0x7f07005a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 293
    const v2, 0x7f07005b

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 294
    const v2, 0x7f07005c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 295
    const v2, 0x7f07005d

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 291
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 298
    return-void
.end method

.method public static isFavoritedMessage(Landroid/content/Context;J)Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 251
    const-string/jumbo v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 253
    new-array v2, v6, [Ljava/lang/String;

    .line 254
    const-string/jumbo v3, "favourite"

    aput-object v3, v2, v7

    .line 255
    const-string/jumbo v3, "_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    .line 256
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 252
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 258
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 259
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    const-string/jumbo v0, "favourite"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 262
    if-ne v0, v6, :cond_2

    move v0, v6

    .line 267
    :goto_0
    if-eqz v1, :cond_0

    .line 268
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    return v0

    :cond_1
    move v0, v7

    .line 258
    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method public static isFileDownload(Ljava/lang/String;J)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 109
    return v0

    .line 112
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    if-eqz v1, :cond_2

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RcsChatMessageUtils.isFileDownload: filePath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    const-string/jumbo v3, " ; thisFileSize = "

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 114
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 115
    const-string/jumbo v3, " ; fileSize = "

    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/suntek/rcs/ui/common/RcsLog;->i(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-ltz v1, :cond_2

    .line 117
    const/4 v0, 0x1

    .line 120
    :cond_2
    return v0
.end method

.method public static isPublicAccountMessage(Landroid/content/Context;J)Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/suntek/mway/rcs/client/aidl/constant/Constants$ThreadProvider;->CONST_THREAD_URI:Landroid/net/Uri;

    new-array v2, v6, [Ljava/lang/String;

    .line 304
    const-string/jumbo v3, "msg_chat_type"

    aput-object v3, v2, v7

    const-string/jumbo v3, "_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 303
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 306
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v6

    .line 310
    :goto_0
    if-eqz v1, :cond_0

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 314
    :cond_0
    return v0

    :cond_1
    move v0, v7

    .line 306
    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    .line 310
    if-eqz v1, :cond_2

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 309
    :cond_2
    throw v0
.end method

.method public static sendRcsForwardMessage(Landroid/content/Context;Ljava/util/ArrayList;Landroid/content/Intent;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "J)Z"
        }
    .end annotation

    .prologue
    .line 157
    if-nez p1, :cond_0

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_0
    const-wide/16 v6, -0x1

    .line 161
    const-wide/16 v4, -0x1

    .line 162
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v1

    .line 163
    if-eqz p2, :cond_1

    .line 164
    const-string/jumbo v0, "groupChatId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 165
    const-string/jumbo v0, "selectThreadId"

    const-wide/16 v2, -0x1

    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 166
    const-string/jumbo v0, "recipients"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 168
    const-string/jumbo v0, "SelectRecipientsList.EXTRA_RECIPIENTS"

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 181
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v0, v6, v2

    if-eqz v0, :cond_5

    const-wide/16 v2, -0x1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    move-wide v2, p3

    .line 182
    :try_start_0
    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->forwardToGroupChat(JJJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    const/4 v0, 0x1

    return v0

    .line 169
    :cond_2
    const-string/jumbo v0, "numbers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const-string/jumbo v0, "numbers"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 171
    if-eqz v2, :cond_3

    array-length v0, v2

    if-nez v0, :cond_4

    .line 172
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 174
    :cond_4
    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v8, v2, v0

    .line 175
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 186
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 187
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 216
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_6
    :try_start_2
    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 191
    if-eqz p1, :cond_a

    .line 192
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7

    .line 193
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 194
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 195
    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 198
    :goto_2
    const/4 v7, -0x1

    move-wide v2, p3

    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->forward(JJLjava/lang/String;I)J

    .line 199
    const/4 v0, 0x1

    return v0

    .line 201
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    const-string/jumbo v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 204
    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    :cond_8
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 217
    :catch_1
    move-exception v0

    .line 218
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->printStackTrace()V

    .line 219
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_9
    const/4 v7, -0x1

    move-wide v2, p3

    move-object v6, p1

    :try_start_3
    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->forward(JJLjava/util/List;I)J
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 210
    const/4 v0, 0x1

    return v0

    .line 221
    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    move-object v6, v0

    goto :goto_2
.end method

.method public static sendRcsForwardMessage(Landroid/content/Context;Ljava/util/List;Landroid/content/Intent;J)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            "J)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 137
    invoke-static {}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->getInstance()Lcom/suntek/mway/rcs/client/api/message/MessageApi;

    move-result-object v1

    .line 139
    :try_start_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 140
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 148
    return v8

    .line 143
    :cond_0
    :try_start_1
    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    .line 144
    const/4 v7, -0x1

    move-wide v2, p3

    move-object v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/suntek/mway/rcs/client/api/message/MessageApi;->forward(JJLjava/util/List;I)J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    const/4 v0, 0x1

    return v0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    invoke-virtual {v0}, Lcom/suntek/mway/rcs/client/api/exception/ServiceDisconnectedException;->printStackTrace()V

    .line 151
    return v8
.end method

.method public static startBurnMessageActivity(Landroid/content/Context;JI)V
    .locals 3

    .prologue
    .line 124
    const/16 v0, -0x80

    if-ne p3, v0, :cond_0

    .line 125
    const v0, 0x7f07003b

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.suntek.mway.rcs.nativeui.ACTION_LUNCH_BURN_FLAG_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 129
    invoke-static {p0, v0}, Lcom/android/mms/rcs/RcsUtils;->startSafeActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
