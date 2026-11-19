.class public Lcom/sonim/borqs/launcher/MyEventsCommonDBUtils;
.super Ljava/lang/Object;
.source "MyEventsCommonDBUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 27
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 28
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "display_name"

    aput-object v3, v2, v5

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 33
    const-string/jumbo v5, "\'"

    .line 32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 29
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 41
    const-string/jumbo v1, "display_name"

    .line 40
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 39
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 45
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 47
    :goto_0
    return-object p1

    :cond_1
    move-object p1, v4

    goto :goto_0
.end method
