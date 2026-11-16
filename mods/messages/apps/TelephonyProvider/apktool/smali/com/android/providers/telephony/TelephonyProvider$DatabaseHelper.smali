.class Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -wrap0(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->apnDbUpdateNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 361
    const-string/jumbo v0, "telephony.db"

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getVersion(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 362
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    .line 364
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setIdleConnectionTimeout(J)V

    .line 365
    return-void
.end method

.method private addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1418
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1419
    if-eqz v0, :cond_0

    .line 1420
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1422
    :cond_0
    return-void
.end method

.method private addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1410
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1411
    if-eqz v0, :cond_0

    .line 1412
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    :cond_0
    return-void
.end method

.method private addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1402
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1403
    if-eqz v0, :cond_0

    .line 1404
    invoke-virtual {p3, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    :cond_0
    return-void
.end method

.method private apnDbUpdateNeeded()Z
    .locals 6

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfFile()Ljava/io/File;

    move-result-object v0

    .line 483
    invoke-direct {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v0

    .line 484
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfChecksum()J

    move-result-wide v2

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "newChecksum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 486
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "oldChecksum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 487
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 488
    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private copyApnValuesV17(Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 1176
    const-string/jumbo v0, "name"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1177
    const-string/jumbo v0, "numeric"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1178
    const-string/jumbo v0, "mcc"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1179
    const-string/jumbo v0, "mnc"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1180
    const-string/jumbo v0, "apn"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1181
    const-string/jumbo v0, "user"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1182
    const-string/jumbo v0, "server"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1183
    const-string/jumbo v0, "password"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1184
    const-string/jumbo v0, "proxy"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1185
    const-string/jumbo v0, "port"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1186
    const-string/jumbo v0, "mmsproxy"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1187
    const-string/jumbo v0, "mmsport"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v0, "mmsc"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v0, "type"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1190
    const-string/jumbo v0, "protocol"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1191
    const-string/jumbo v0, "roaming_protocol"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1192
    const-string/jumbo v0, "mvno_type"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v0, "mvno_match_data"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1196
    const-string/jumbo v0, "authtype"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v0, "current"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1198
    const-string/jumbo v0, "carrier_enabled"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1199
    const-string/jumbo v0, "bearer"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v0, "sub_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1201
    const-string/jumbo v0, "profile_id"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v0, "modem_cognitive"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1203
    const-string/jumbo v0, "max_conns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1204
    const-string/jumbo v0, "wait_time"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1205
    const-string/jumbo v0, "max_conns_time"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1206
    const-string/jumbo v0, "mtu"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1207
    const-string/jumbo v0, "bearer_bitmask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1208
    const-string/jumbo v0, "edited"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1209
    const-string/jumbo v0, "user_visible"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method private copyDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 1151
    if-eqz p2, :cond_0

    .line 1152
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1154
    invoke-direct {p0, v0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyApnValuesV17(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 1156
    :try_start_0
    const-string/jumbo v1, "carriers_tmp"

    const/4 v2, 0x0

    .line 1157
    const/4 v3, 0x2

    .line 1156
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1169
    :cond_0
    return-void
.end method

.method private copyPreservedApnsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v5, 0x1

    .line 1215
    if-eqz p2, :cond_8

    .line 1216
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1217
    const/high16 v1, 0x7f040000

    .line 1216
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 1218
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1219
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1224
    invoke-direct {p0, v3, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyApnValuesV17(Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 1226
    const-string/jumbo v0, "bearer"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1229
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1228
    invoke-static {v0}, Landroid/telephony/ServiceState;->getBitmaskForTech(I)I

    move-result v0

    .line 1230
    const-string/jumbo v1, "bearer_bitmask"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1233
    :cond_1
    const-string/jumbo v0, "user_edited"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1234
    if-eq v1, v9, :cond_5

    .line 1235
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1236
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1237
    const-string/jumbo v2, "edited"

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1247
    :cond_2
    :goto_1
    const-string/jumbo v0, "numeric"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1248
    const/4 v0, 0x0

    array-length v4, v7

    :goto_2
    if-ge v0, v4, :cond_4

    aget-object v6, v7, v0

    .line 1249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1250
    const-string/jumbo v6, "mvno_type"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1251
    const-string/jumbo v6, "mvno_type"

    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1249
    if-eqz v6, :cond_7

    .line 1252
    :cond_3
    if-ne v1, v9, :cond_6

    .line 1253
    const-string/jumbo v0, "edited"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1265
    :cond_4
    :goto_3
    :try_start_0
    const-string/jumbo v0, "carriers_tmp"

    const/4 v1, 0x0

    .line 1266
    const/4 v2, 0x2

    .line 1265
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1278
    const-string/jumbo v0, "carriers_tmp"

    .line 1277
    invoke-static {p1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->selectConflictingRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v2

    .line 1279
    if-eqz v2, :cond_0

    .line 1280
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1281
    const-string/jumbo v1, "carriers_tmp"

    .line 1282
    iget-object v6, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 1281
    invoke-static/range {v0 .. v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mergeFieldsAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/ContentValues;ZLandroid/content/Context;)V

    .line 1283
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1240
    :cond_5
    const-string/jumbo v0, "edited"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1255
    :cond_6
    const-string/jumbo v0, "edited"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 1256
    const-string/jumbo v0, "edited"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 1248
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1288
    :cond_8
    return-void
.end method

.method private createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.createCarriersTable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 436
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider;->getStringForCarrierTableCreation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v0, "dbh.createCarriersTable:-"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method private createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 428
    const-string/jumbo v0, "dbh.createSimInfoTable:+"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v0, "CREATE TABLE siminfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,icc_id TEXT NOT NULL,sim_id INTEGER DEFAULT -1,display_name TEXT,carrier_name TEXT,name_source INTEGER DEFAULT 0,color INTEGER DEFAULT 0,number TEXT,display_number_format INTEGER NOT NULL DEFAULT 1,data_roaming INTEGER DEFAULT 0,mcc INTEGER DEFAULT 0,mnc INTEGER DEFAULT 0,sim_provisioning_status INTEGER DEFAULT 0,is_embedded INTEGER DEFAULT 0,access_rules BLOB,is_removable INTEGER DEFAULT 0,enable_cmas_extreme_threat_alerts INTEGER DEFAULT 1,enable_cmas_severe_threat_alerts INTEGER DEFAULT 1,enable_cmas_amber_alerts INTEGER DEFAULT 1,enable_emergency_alerts INTEGER DEFAULT 1,alert_sound_duration INTEGER DEFAULT 4,alert_reminder_interval INTEGER DEFAULT 0,enable_alert_vibrate INTEGER DEFAULT 1,enable_alert_speech INTEGER DEFAULT 1,enable_etws_test_alerts INTEGER DEFAULT 0,enable_channel_50_alerts INTEGER DEFAULT 1,enable_cmas_test_alerts INTEGER DEFAULT 0,show_cmas_opt_out_dialog INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 430
    const-string/jumbo v0, "dbh.createSimInfoTable:-"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method private deleteMatchingApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 997
    if-eqz p2, :cond_0

    .line 1000
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1001
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1002
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1003
    if-nez v0, :cond_1

    .line 1004
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "Expected \'apn\' tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteMatchingApns: Got XmlPullParserException while deleting apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 1017
    :cond_0
    :goto_1
    return-void

    .line 1006
    :cond_1
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteRow(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 1007
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1011
    :catch_1
    move-exception v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteMatchingApns: Got IOException while deleting apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_1

    .line 1013
    :catch_2
    move-exception v0

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deleteMatchingApns: Got SQLException while deleting apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private deleteRow(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 9

    .prologue
    const/16 v8, 0x19

    const/16 v7, 0x18

    const/16 v6, 0x13

    const/16 v5, 0x12

    const/4 v4, 0x0

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numeric"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1038
    const-string/jumbo v1, "mnc"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1039
    const-string/jumbo v1, "mnc"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1040
    const-string/jumbo v1, "apn"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1041
    const-string/jumbo v1, "user"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1042
    const-string/jumbo v1, "server"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1043
    const-string/jumbo v1, "password"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1044
    const-string/jumbo v1, "proxy"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1045
    const-string/jumbo v1, "port"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1046
    const-string/jumbo v1, "mmsproxy"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1047
    const-string/jumbo v1, "mmsport"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1048
    const-string/jumbo v1, "mmsc"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1049
    const-string/jumbo v1, "authtype"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1050
    const-string/jumbo v1, "type"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1051
    const-string/jumbo v1, "protocol"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1052
    const-string/jumbo v1, "roaming_protocol"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1053
    const-string/jumbo v1, "carrier_enabled"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1054
    const-string/jumbo v1, "bearer"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1055
    const-string/jumbo v1, "mvno_type"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1056
    const-string/jumbo v1, "mvno_match_data"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1057
    const-string/jumbo v1, "profile_id"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1058
    const-string/jumbo v1, "modem_cognitive"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1059
    const-string/jumbo v1, "max_conns"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1060
    const-string/jumbo v1, "wait_time"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1061
    const-string/jumbo v1, "max_conns_time"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1062
    const-string/jumbo v1, "mtu"

    invoke-direct {p0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->queryValOrNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1063
    const/16 v0, 0x1d

    new-array v2, v0, [Ljava/lang/String;

    .line 1065
    const/4 v0, 0x1

    const-string/jumbo v3, "numeric"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 1066
    const/4 v3, 0x2

    const-string/jumbo v4, "mcc"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1067
    const/4 v0, 0x3

    const-string/jumbo v4, "mnc"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1068
    const/4 v3, 0x4

    const-string/jumbo v4, "name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1069
    const/4 v4, 0x5

    const-string/jumbo v0, "apn"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1070
    const-string/jumbo v0, "apn"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    :goto_0
    aput-object v0, v2, v3

    .line 1071
    const/4 v3, 0x6

    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1072
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1071
    :goto_1
    aput-object v0, v2, v4

    .line 1073
    const/4 v4, 0x7

    const-string/jumbo v0, "server"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1074
    const-string/jumbo v0, "server"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    :goto_2
    aput-object v0, v2, v3

    .line 1075
    const/16 v3, 0x8

    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1076
    const-string/jumbo v0, "password"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_3
    aput-object v0, v2, v4

    .line 1077
    const/16 v4, 0x9

    const-string/jumbo v0, "proxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1078
    const-string/jumbo v0, "proxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    :goto_4
    aput-object v0, v2, v3

    .line 1079
    const/16 v3, 0xa

    const-string/jumbo v0, "port"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1080
    const-string/jumbo v0, "port"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1079
    :goto_5
    aput-object v0, v2, v4

    .line 1081
    const/16 v4, 0xb

    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1082
    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :goto_6
    aput-object v0, v2, v3

    .line 1083
    const/16 v3, 0xc

    const-string/jumbo v0, "mmsport"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1084
    const-string/jumbo v0, "mmsport"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    :goto_7
    aput-object v0, v2, v4

    .line 1085
    const/16 v4, 0xd

    const-string/jumbo v0, "mmsc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1086
    const-string/jumbo v0, "mmsc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    :goto_8
    aput-object v0, v2, v3

    .line 1087
    const/16 v3, 0xe

    const-string/jumbo v0, "authtype"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1088
    const-string/jumbo v0, "authtype"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1087
    :goto_9
    aput-object v0, v2, v4

    .line 1089
    const/16 v4, 0xf

    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1090
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    :goto_a
    aput-object v0, v2, v3

    .line 1091
    const/16 v3, 0x10

    const-string/jumbo v0, "protocol"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1092
    const-string/jumbo v0, "protocol"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    :goto_b
    aput-object v0, v2, v4

    .line 1093
    const/16 v4, 0x11

    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1094
    const-string/jumbo v0, "roaming_protocol"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1093
    :goto_c
    aput-object v0, v2, v3

    .line 1096
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1097
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string/jumbo v3, "false"

    .line 1097
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1099
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1096
    if-eqz v0, :cond_f

    .line 1100
    :cond_0
    const-string/jumbo v0, "false"

    aput-object v0, v2, v4

    .line 1101
    const-string/jumbo v0, "0"

    aput-object v0, v2, v5

    .line 1107
    :goto_d
    const/16 v3, 0x14

    const-string/jumbo v0, "bearer"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1108
    const-string/jumbo v0, "bearer"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1107
    :goto_e
    aput-object v0, v2, v6

    .line 1109
    const/16 v4, 0x15

    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1110
    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1109
    :goto_f
    aput-object v0, v2, v3

    .line 1111
    const/16 v3, 0x16

    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1112
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1111
    :goto_10
    aput-object v0, v2, v4

    .line 1113
    const/16 v4, 0x17

    const-string/jumbo v0, "profile_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1114
    const-string/jumbo v0, "profile_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    :goto_11
    aput-object v0, v2, v3

    .line 1116
    const-string/jumbo v0, "modem_cognitive"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1117
    const-string/jumbo v0, "modem_cognitive"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    const-string/jumbo v3, "true"

    .line 1117
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1119
    const-string/jumbo v0, "modem_cognitive"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1116
    if-eqz v0, :cond_14

    .line 1120
    :cond_1
    const-string/jumbo v0, "true"

    aput-object v0, v2, v4

    .line 1121
    const-string/jumbo v0, "1"

    aput-object v0, v2, v7

    .line 1127
    :goto_12
    const/16 v3, 0x1a

    const-string/jumbo v0, "max_conns"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1128
    const-string/jumbo v0, "max_conns"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    :goto_13
    aput-object v0, v2, v8

    .line 1129
    const/16 v4, 0x1b

    const-string/jumbo v0, "wait_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1130
    const-string/jumbo v0, "wait_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    :goto_14
    aput-object v0, v2, v3

    .line 1131
    const/16 v3, 0x1c

    const-string/jumbo v0, "max_conns_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1132
    const-string/jumbo v0, "max_conns_time"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    :goto_15
    aput-object v0, v2, v4

    .line 1133
    const-string/jumbo v0, "mtu"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1134
    const-string/jumbo v0, "mtu"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    :goto_16
    aput-object v0, v2, v3

    .line 1146
    const-string/jumbo v0, "carriers"

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1147
    return-void

    .line 1070
    :cond_2
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 1072
    :cond_3
    const-string/jumbo v0, ""

    goto/16 :goto_1

    .line 1074
    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_2

    .line 1076
    :cond_5
    const-string/jumbo v0, ""

    goto/16 :goto_3

    .line 1078
    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_4

    .line 1080
    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_5

    .line 1082
    :cond_8
    const-string/jumbo v0, ""

    goto/16 :goto_6

    .line 1084
    :cond_9
    const-string/jumbo v0, ""

    goto/16 :goto_7

    .line 1086
    :cond_a
    const-string/jumbo v0, ""

    goto/16 :goto_8

    .line 1088
    :cond_b
    const-string/jumbo v0, "-1"

    goto/16 :goto_9

    .line 1090
    :cond_c
    const-string/jumbo v0, ""

    goto/16 :goto_a

    .line 1092
    :cond_d
    const-string/jumbo v0, "IP"

    goto/16 :goto_b

    .line 1094
    :cond_e
    const-string/jumbo v0, "IP"

    goto/16 :goto_c

    .line 1103
    :cond_f
    const-string/jumbo v0, "true"

    aput-object v0, v2, v4

    .line 1104
    const-string/jumbo v0, "1"

    aput-object v0, v2, v5

    goto/16 :goto_d

    .line 1108
    :cond_10
    const-string/jumbo v0, "0"

    goto/16 :goto_e

    .line 1110
    :cond_11
    const-string/jumbo v0, ""

    goto/16 :goto_f

    .line 1112
    :cond_12
    const-string/jumbo v0, ""

    goto/16 :goto_10

    .line 1114
    :cond_13
    const-string/jumbo v0, "0"

    goto/16 :goto_11

    .line 1123
    :cond_14
    const-string/jumbo v0, "false"

    aput-object v0, v2, v4

    .line 1124
    const-string/jumbo v0, "0"

    aput-object v0, v2, v7

    goto/16 :goto_12

    .line 1128
    :cond_15
    const-string/jumbo v0, "0"

    goto/16 :goto_13

    .line 1130
    :cond_16
    const-string/jumbo v0, "0"

    goto/16 :goto_14

    .line 1132
    :cond_17
    const-string/jumbo v0, "0"

    goto/16 :goto_15

    .line 1134
    :cond_18
    const-string/jumbo v0, "0"

    goto/16 :goto_16
.end method

.method private getApnConfChecksum()J
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephonyprovider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 455
    const-string/jumbo v1, "apn_conf_checksum"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getApnConfFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 467
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "etc/apns-conf.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 468
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "telephony/apns-conf.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 469
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "misc/apns-conf.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getNewerFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 471
    invoke-direct {p0, v0, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getNewerFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 472
    return-object v0
.end method

.method private getChecksum(Ljava/io/File;)J
    .locals 5

    .prologue
    .line 441
    const-wide/16 v2, -0x1

    .line 443
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->checksumCrc32(Ljava/io/File;)J

    move-result-wide v2

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Checksum for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-wide v2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    :catch_1
    move-exception v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FileNotFoundException for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getIntValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1301
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1302
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1303
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    :try_start_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getNewerFile(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 6

    .prologue
    .line 600
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 603
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 604
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APNs Timestamp: altFileTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " currFileTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 608
    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "APNs Timestamp: Alternate image "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 610
    const-string/jumbo v1, " is greater than System image"

    .line 609
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 611
    return-object p2

    .line 615
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "No APNs in OEM image = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 616
    const-string/jumbo v1, " Load APNs from system image"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 618
    :cond_1
    return-object p1
.end method

.method private getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1321
    const-string/jumbo v0, "apn"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1322
    return-object v5

    .line 1325
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1327
    const-string/jumbo v0, "mcc"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1328
    const-string/jumbo v2, "mnc"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1331
    const-string/jumbo v4, "numeric"

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    const-string/jumbo v3, "mcc"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    const-string/jumbo v0, "mnc"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    const-string/jumbo v0, "name"

    const-string/jumbo v2, "carrier"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1337
    const-string/jumbo v0, "apn"

    const-string/jumbo v2, "apn"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1338
    const-string/jumbo v0, "user"

    const-string/jumbo v2, "user"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1339
    const-string/jumbo v0, "server"

    const-string/jumbo v2, "server"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1340
    const-string/jumbo v0, "password"

    const-string/jumbo v2, "password"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1341
    const-string/jumbo v0, "proxy"

    const-string/jumbo v2, "proxy"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v0, "port"

    const-string/jumbo v2, "port"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v0, "mmsproxy"

    const-string/jumbo v2, "mmsproxy"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1344
    const-string/jumbo v0, "mmsport"

    const-string/jumbo v2, "mmsport"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1345
    const-string/jumbo v0, "mmsc"

    const-string/jumbo v2, "mmsc"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1347
    const-string/jumbo v0, "type"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1348
    if-eqz v0, :cond_1

    .line 1350
    const-string/jumbo v2, "\\s+"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_1
    const-string/jumbo v0, "protocol"

    const-string/jumbo v2, "protocol"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v0, "roaming_protocol"

    const-string/jumbo v2, "roaming_protocol"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v0, "authtype"

    const-string/jumbo v2, "authtype"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1358
    const-string/jumbo v0, "bearer"

    const-string/jumbo v2, "bearer"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1359
    const-string/jumbo v0, "profile_id"

    const-string/jumbo v2, "profile_id"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1360
    const-string/jumbo v0, "max_conns"

    const-string/jumbo v2, "max_conns"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v0, "wait_time"

    const-string/jumbo v2, "wait_time"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1362
    const-string/jumbo v0, "max_conns_time"

    const-string/jumbo v2, "max_conns_time"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1363
    const-string/jumbo v0, "mtu"

    const-string/jumbo v2, "mtu"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1366
    const-string/jumbo v0, "carrier_enabled"

    const-string/jumbo v2, "carrier_enabled"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1367
    const-string/jumbo v0, "modem_cognitive"

    const-string/jumbo v2, "modem_cognitive"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1368
    const-string/jumbo v0, "user_visible"

    const-string/jumbo v2, "user_visible"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1369
    const-string/jumbo v0, "user_editable"

    const-string/jumbo v2, "user_editable"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1370
    const-string/jumbo v0, "persistent"

    const-string/jumbo v2, "persistent"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1371
    const-string/jumbo v0, "read_only"

    const-string/jumbo v2, "read_only"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1372
    const-string/jumbo v0, "user_apn"

    const-string/jumbo v2, "user_apn"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addBoolAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1374
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_2

    .line 1375
    const-string/jumbo v0, "inactivity_time"

    const-string/jumbo v2, "inactivity_time"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1376
    const-string/jumbo v0, "op_pco_id"

    const-string/jumbo v2, "op_pco_id"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1377
    const-string/jumbo v0, "op_pco_mcc"

    const-string/jumbo v2, "op_pco_mcc"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1378
    const-string/jumbo v0, "op_pco_mnc"

    const-string/jumbo v2, "op_pco_mnc"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->addIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 1381
    :cond_2
    const/4 v0, 0x0

    .line 1382
    const-string/jumbo v2, "bearer_bitmask"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1383
    if-eqz v2, :cond_3

    .line 1384
    invoke-static {v2}, Landroid/telephony/ServiceState;->getBitmaskFromString(Ljava/lang/String;)I

    move-result v0

    .line 1386
    :cond_3
    const-string/jumbo v2, "bearer_bitmask"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1388
    const-string/jumbo v0, "mvno_type"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_4

    .line 1390
    const-string/jumbo v2, "mvno_match_data"

    invoke-interface {p1, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1391
    if-eqz v2, :cond_4

    .line 1392
    const-string/jumbo v3, "mvno_type"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_4
    return-object v1
.end method

.method private getStringValueFromCursor(Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1291
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1292
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1293
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1295
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    :cond_0
    return-void
.end method

.method private static getVersion(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/high16 v4, 0x160000

    .line 370
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 371
    const/high16 v1, 0x1170000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 373
    :try_start_0
    const-string/jumbo v0, "apns"

    invoke-static {v1, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v0, "version"

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 375
    or-int/2addr v0, v4

    .line 383
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 377
    return v0

    .line 378
    :catch_0
    move-exception v0

    .line 379
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get version of APN database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " return version="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const/high16 v2, 0x160000

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 381
    return v4

    .line 382
    :catchall_0
    move-exception v0

    .line 383
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 382
    throw v0
.end method

.method private initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v3, 0x0

    .line 501
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 502
    const/high16 v1, 0x1170000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 503
    const/4 v1, -0x1

    .line 505
    :try_start_0
    const-string/jumbo v0, "apns"

    invoke-static {v2, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 506
    const-string/jumbo v0, "version"

    const/4 v4, 0x0

    invoke-interface {v2, v4, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 507
    invoke-direct {p0, p1, v2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 516
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getApnConfFile()Ljava/io/File;

    move-result-object v4

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "confFile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 521
    :try_start_1
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 522
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 523
    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 524
    const-string/jumbo v5, "apns"

    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v5, "version"

    const/4 v6, 0x0

    invoke-interface {v0, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 528
    if-eq v1, v5, :cond_2

    .line 529
    const-string/jumbo v0, "initDatabase: throwing exception due to version mismatch"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 530
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Internal APNS file version doesn\'t match "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 531
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 535
    :catch_0
    move-exception v0

    .line 550
    :goto_1
    const-string/jumbo v0, "carriers"

    const-string/jumbo v1, "edited=2 or edited=5"

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 554
    const-string/jumbo v1, "edited"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string/jumbo v1, "carriers"

    const-string/jumbo v5, "edited=3"

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 559
    const-string/jumbo v1, "edited"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string/jumbo v1, "carriers"

    const-string/jumbo v5, "edited=6"

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    if-eqz v2, :cond_0

    .line 564
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 571
    :cond_0
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    .line 574
    :goto_3
    sget-boolean v0, Landroid/os/Build;->IS_VZW:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/borqs/internal/TelephonyExtManager;->getInstance(Landroid/content/Context;)Lorg/borqs/internal/TelephonyExtManager;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Lorg/borqs/internal/TelephonyExtManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 577
    invoke-virtual {v0}, Lorg/borqs/internal/TelephonyExtManager;->onDefaultApnsLoaded()V

    .line 597
    :cond_1
    :goto_4
    return-void

    .line 508
    :catch_1
    move-exception v0

    .line 509
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Got exception while loading APN database."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 511
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 510
    :catchall_0
    move-exception v0

    .line 511
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 510
    throw v0

    .line 534
    :cond_2
    :try_start_5
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 550
    const-string/jumbo v0, "carriers"

    const-string/jumbo v1, "edited=2 or edited=5"

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 554
    const-string/jumbo v1, "edited"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string/jumbo v1, "carriers"

    const-string/jumbo v5, "edited=3"

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 559
    const-string/jumbo v1, "edited"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string/jumbo v1, "carriers"

    const-string/jumbo v5, "edited=6"

    invoke-virtual {p1, v1, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    if-eqz v2, :cond_3

    .line 564
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 571
    :cond_3
    :goto_5
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    goto :goto_3

    .line 565
    :catch_2
    move-exception v0

    goto :goto_5

    .line 538
    :catch_3
    move-exception v0

    move-object v1, v3

    .line 539
    :goto_6
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initDatabase: Exception while parsing \'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\'"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 550
    const-string/jumbo v0, "carriers"

    const-string/jumbo v2, "edited=2 or edited=5"

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 554
    const-string/jumbo v2, "edited"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string/jumbo v2, "carriers"

    const-string/jumbo v5, "edited=3"

    invoke-virtual {p1, v2, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 559
    const-string/jumbo v2, "edited"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string/jumbo v2, "carriers"

    const-string/jumbo v5, "edited=6"

    invoke-virtual {p1, v2, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    if-eqz v1, :cond_4

    .line 564
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 571
    :cond_4
    :goto_7
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    goto/16 :goto_3

    .line 565
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 541
    :catchall_1
    move-exception v0

    move-object v2, v3

    .line 550
    :goto_8
    const-string/jumbo v1, "carriers"

    const-string/jumbo v5, "edited=2 or edited=5"

    invoke-virtual {p1, v1, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 553
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 554
    const-string/jumbo v5, "edited"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 555
    const-string/jumbo v5, "carriers"

    const-string/jumbo v6, "edited=3"

    invoke-virtual {p1, v5, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 558
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 559
    const-string/jumbo v5, "edited"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    const-string/jumbo v5, "carriers"

    const-string/jumbo v6, "edited=6"

    invoke-virtual {p1, v5, v1, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    if-eqz v2, :cond_5

    .line 564
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 571
    :cond_5
    :goto_9
    invoke-direct {p0, v4}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getChecksum(Ljava/io/File;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setApnConfChecksum(J)V

    .line 541
    throw v0

    .line 565
    :catch_6
    move-exception v1

    goto :goto_9

    .line 579
    :cond_6
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;

    invoke-direct {v2, v0}, Lcom/android/providers/telephony/-$Lambda$I1nRlZJqOZQ29yEqjah1hEU9asM;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_4

    .line 541
    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v1

    goto :goto_8

    .line 535
    :catch_7
    move-exception v0

    move-object v2, v3

    goto/16 :goto_1

    .line 538
    :catch_8
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6
.end method

.method private insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1469
    invoke-static {p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->setDefaultValue(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 1471
    :try_start_0
    const-string/jumbo v0, "carriers"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1509
    :cond_0
    :goto_0
    return-void

    .line 1474
    :catch_0
    move-exception v0

    .line 1481
    const-string/jumbo v0, "carriers"

    invoke-static {p1, v0, v3}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->selectConflictingRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;

    move-result-object v2

    .line 1482
    if-eqz v2, :cond_0

    .line 1484
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1485
    const-string/jumbo v0, "edited"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1487
    if-eqz v0, :cond_2

    .line 1488
    if-ne v0, v6, :cond_3

    .line 1491
    const/4 v0, 0x3

    .line 1497
    :cond_1
    :goto_1
    const-string/jumbo v1, "edited"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1500
    :cond_2
    const-string/jumbo v1, "carriers"

    .line 1501
    iget-object v6, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    move-object v0, p1

    .line 1500
    invoke-static/range {v0 .. v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mergeFieldsAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/ContentValues;ZLandroid/content/Context;)V

    .line 1506
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1492
    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1495
    const/4 v0, 0x6

    goto :goto_1
.end method

.method static synthetic lambda$-com_android_providers_telephony_TelephonyProvider$DatabaseHelper_28458(Lorg/borqs/internal/TelephonyExtManager;)V
    .locals 4

    .prologue
    .line 580
    const/16 v0, 0xa

    .line 581
    :goto_0
    if-eqz v0, :cond_0

    .line 583
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_1
    invoke-virtual {p0}, Lorg/borqs/internal/TelephonyExtManager;->isServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 588
    invoke-virtual {p0}, Lorg/borqs/internal/TelephonyExtManager;->onDefaultApnsLoaded()V

    :cond_0
    return-void

    .line 584
    :catch_0
    move-exception v1

    .line 585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 591
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private loadApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3

    .prologue
    .line 1432
    if-eqz p2, :cond_0

    .line 1434
    :try_start_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1435
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1436
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1437
    invoke-direct {p0, p2}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->getRow(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v0

    .line 1438
    if-nez v0, :cond_1

    .line 1439
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v1, "Expected \'apn\' tag"

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :catch_0
    move-exception v0

    .line 1446
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got XmlPullParserException while loading apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1455
    :cond_0
    :goto_1
    return-void

    .line 1441
    :cond_1
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->insertAddingDefaults(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 1442
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1447
    :catch_1
    move-exception v0

    .line 1448
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got IOException while loading apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1444
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1449
    :catch_2
    move-exception v0

    .line 1450
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got SQLException while loading apns."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 1451
    :catchall_0
    move-exception v0

    .line 1452
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1451
    throw v0
.end method

.method public static mergeFieldsAndUpdateDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/ContentValues;ZLandroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1514
    const-string/jumbo v0, "type"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1516
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1517
    const-string/jumbo v1, "type"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1519
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1520
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1521
    :cond_0
    const-string/jumbo v0, "type"

    const-string/jumbo v1, ""

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_1
    :goto_0
    const-string/jumbo v0, "type"

    .line 1559
    const-string/jumbo v1, "type"

    .line 1558
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_2
    const-string/jumbo v0, "bearer_bitmask"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1563
    const-string/jumbo v0, "bearer_bitmask"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1564
    const-string/jumbo v1, "bearer_bitmask"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1565
    if-eq v0, v1, :cond_4

    .line 1566
    if-eqz v0, :cond_3

    if-nez v1, :cond_10

    .line 1567
    :cond_3
    const-string/jumbo v0, "bearer_bitmask"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1572
    :cond_4
    :goto_1
    const-string/jumbo v0, "bearer_bitmask"

    const-string/jumbo v1, "bearer_bitmask"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1575
    :cond_5
    if-nez p5, :cond_8

    .line 1577
    const-string/jumbo v0, "edited"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1578
    const-string/jumbo v0, "edited"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1579
    const-string/jumbo v1, "edited"

    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1580
    if-nez v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 1581
    const/4 v1, 0x5

    if-ne v0, v1, :cond_11

    .line 1586
    :cond_6
    :goto_2
    const-string/jumbo v0, "edited"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1589
    :cond_7
    invoke-virtual {p4, p3}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 1592
    :cond_8
    invoke-virtual {p4}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1594
    const/4 v1, 0x0

    .line 1593
    invoke-virtual {p0, p1, p4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1596
    :cond_9
    return-void

    .line 1523
    :cond_a
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1524
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    .line 1536
    invoke-static/range {v0 .. v6}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->separateRowsNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1540
    return-void

    .line 1544
    :cond_b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1546
    array-length v1, v6

    move v0, v7

    :goto_3
    if-ge v0, v1, :cond_d

    aget-object v3, v6, v0

    .line 1547
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 1548
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1546
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1551
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v7

    .line 1552
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 1553
    if-nez v1, :cond_e

    const-string/jumbo v0, ""

    :goto_5
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1552
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 1553
    :cond_e
    const-string/jumbo v0, ","

    goto :goto_5

    .line 1555
    :cond_f
    const-string/jumbo v0, "type"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1569
    :cond_10
    const-string/jumbo v2, "bearer_bitmask"

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 1582
    :cond_11
    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    .line 1583
    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    .line 1584
    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    .line 1585
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    goto/16 :goto_2
.end method

.method private preserveUserAndCarrierApns(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 964
    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "etc/old-apns-conf.xml"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 967
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 968
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 969
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 970
    const-string/jumbo v2, "apns"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 972
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->deleteMatchingApns(Landroid/database/sqlite/SQLiteDatabase;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 985
    if-eqz v1, :cond_0

    .line 987
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 988
    :catch_0
    move-exception v0

    goto :goto_0

    .line 981
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 982
    :goto_1
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preserveUserAndCarrierApns: Exception while parsing \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 983
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 982
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 983
    const-string/jumbo v3, "\'"

    .line 982
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 985
    if-eqz v1, :cond_0

    .line 987
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 988
    :catch_2
    move-exception v0

    goto :goto_0

    .line 973
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 978
    :goto_2
    :try_start_5
    const-string/jumbo v0, "PRESERVEUSERANDCARRIERAPNS: etc/old-apns-conf.xml NOT FOUND. IT IS NEEDED TO UPGRADE FROM OLDER VERSIONS OF APN DB WHILE PRESERVING USER/CARRIER ADDED/EDITED ENTRIES."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 985
    if-eqz v1, :cond_0

    .line 987
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 988
    :catch_4
    move-exception v0

    goto :goto_0

    .line 984
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 985
    :goto_3
    if-eqz v1, :cond_1

    .line 987
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 984
    :cond_1
    :goto_4
    throw v0

    .line 988
    :catch_5
    move-exception v1

    goto :goto_4

    .line 984
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 973
    :catch_6
    move-exception v0

    goto :goto_2

    .line 981
    :catch_7
    move-exception v0

    goto :goto_1
.end method

.method private queryVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryVal2OrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryValFirst(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private queryValOrNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " and ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=? or "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selectConflictingRow(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1696
    const-string/jumbo v0, "numeric"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mcc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string/jumbo v0, "mnc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 1697
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.selectConflictingRow: called for non-conflicting row: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 1698
    return-object v5

    .line 1701
    :cond_1
    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    .line 1702
    const-string/jumbo v0, "type"

    aput-object v0, v2, v8

    .line 1703
    const-string/jumbo v0, "edited"

    aput-object v0, v2, v7

    .line 1704
    const-string/jumbo v0, "bearer_bitmask"

    aput-object v0, v2, v9

    .line 1705
    const-string/jumbo v0, "profile_id"

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 1706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=? AND "

    invoke-static {}, Lcom/android/providers/telephony/TelephonyProvider;->-get0()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1708
    const/16 v0, 0xe

    new-array v4, v0, [Ljava/lang/String;

    .line 1709
    const-string/jumbo v0, "numeric"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    .line 1710
    const-string/jumbo v0, "mcc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 1711
    const-string/jumbo v0, "mnc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    .line 1712
    const/4 v1, 0x4

    const-string/jumbo v0, "apn"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "apn"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    aput-object v0, v4, v9

    .line 1713
    const/4 v6, 0x5

    const-string/jumbo v0, "proxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "proxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v1

    .line 1714
    const/4 v1, 0x6

    const-string/jumbo v0, "port"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "port"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    aput-object v0, v4, v6

    .line 1715
    const/4 v6, 0x7

    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "mmsproxy"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    aput-object v0, v4, v1

    .line 1716
    const/16 v1, 0x8

    const-string/jumbo v0, "mmsport"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "mmsport"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    aput-object v0, v4, v6

    .line 1717
    const/16 v6, 0x9

    const-string/jumbo v0, "mmsc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "mmsc"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v4, v1

    .line 1718
    const/16 v1, 0xa

    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1719
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1720
    const-string/jumbo v0, "carrier_enabled"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "false"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1718
    if-eqz v0, :cond_9

    .line 1721
    :cond_2
    const-string/jumbo v0, "0"

    .line 1718
    :goto_6
    aput-object v0, v4, v6

    .line 1722
    const/16 v6, 0xb

    const-string/jumbo v0, "bearer"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "bearer"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_7
    aput-object v0, v4, v1

    .line 1723
    const/16 v1, 0xc

    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string/jumbo v0, "mvno_type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    aput-object v0, v4, v6

    .line 1724
    const/16 v6, 0xd

    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1725
    const-string/jumbo v0, "mvno_match_data"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1724
    :goto_9
    aput-object v0, v4, v1

    .line 1726
    const-string/jumbo v0, "profile_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "profile_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    aput-object v0, v4, v6

    move-object v0, p0

    move-object v1, p1

    move-object v6, v5

    move-object v7, v5

    .line 1728
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1730
    if-eqz v0, :cond_10

    .line 1731
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_f

    .line 1734
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1735
    return-object v0

    .line 1712
    :cond_3
    const-string/jumbo v0, ""

    goto/16 :goto_0

    .line 1713
    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_1

    .line 1714
    :cond_5
    const-string/jumbo v0, ""

    goto/16 :goto_2

    .line 1715
    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_3

    .line 1716
    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_4

    .line 1717
    :cond_8
    const-string/jumbo v0, ""

    goto/16 :goto_5

    .line 1721
    :cond_9
    const-string/jumbo v0, "1"

    goto/16 :goto_6

    .line 1722
    :cond_a
    const-string/jumbo v0, "0"

    goto :goto_7

    .line 1723
    :cond_b
    const-string/jumbo v0, ""

    goto :goto_8

    .line 1725
    :cond_c
    const-string/jumbo v0, ""

    goto :goto_9

    .line 1726
    :cond_d
    const-string/jumbo v0, "0"

    goto :goto_a

    .line 1737
    :cond_e
    const-string/jumbo v1, "dbh.selectConflictingRow: moveToFirst() failed"

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 1743
    :goto_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1749
    :goto_c
    return-object v5

    .line 1740
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dbh.selectConflictingRow: Expected 1 but found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1741
    const-string/jumbo v2, " matching rows found for cv "

    .line 1740
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_b

    .line 1745
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.selectConflictingRow: Error - c is null; no matching row found for cv "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private static separateRowsNeeded(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1610
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1611
    const/high16 v3, 0x7f040000

    .line 1610
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1612
    array-length v4, v3

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_b

    aget-object v5, v3, v0

    .line 1613
    const-string/jumbo v6, "numeric"

    invoke-virtual {p3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    .line 1619
    :goto_1
    if-nez v0, :cond_1

    return v2

    .line 1612
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1625
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1629
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v4, v3

    move-object v3, v0

    move v0, v1

    .line 1640
    :goto_2
    const-string/jumbo v5, "dun"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "dun"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_9

    .line 1641
    const-string/jumbo v5, "dun"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1642
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1643
    return v2

    .line 1633
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v4, v0

    move v0, v2

    .line 1635
    goto :goto_2

    .line 1637
    :cond_3
    return v2

    .line 1649
    :cond_4
    const-string/jumbo v3, "profile_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_8

    .line 1650
    if-eqz v0, :cond_7

    .line 1652
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1653
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1655
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v3, v1

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1656
    const-string/jumbo v7, "dun"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1657
    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    :goto_5
    move v3, v0

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1661
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1665
    const-string/jumbo v2, "type"

    invoke-virtual {v5, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-virtual {p0, p1, v5, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1668
    return v1

    .line 1672
    :cond_7
    const-string/jumbo v0, "profile_id"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1681
    const/4 v0, 0x0

    const/4 v3, 0x5

    :try_start_0
    invoke-virtual {p0, p1, v0, p3, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    return v1

    .line 1675
    :cond_8
    return v2

    .line 1684
    :catch_0
    move-exception v0

    .line 1685
    const-string/jumbo v0, "Exception on trying to add new row after updating profile_id"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 1689
    :cond_9
    return v2

    :cond_a
    move v0, v3

    goto :goto_5

    :cond_b
    move v0, v2

    goto/16 :goto_1
.end method

.method private setApnConfChecksum(J)V
    .locals 3

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephonyprovider"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 461
    const-string/jumbo v1, "apn_conf_checksum"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 463
    return-void
.end method

.method public static setDefaultValue(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 1458
    const-string/jumbo v0, "sub_id"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1459
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1460
    const-string/jumbo v1, "sub_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1462
    :cond_0
    const-string/jumbo v0, "user_apn"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1463
    const-string/jumbo v0, "user_apn"

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    :cond_1
    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.onCreate:+ db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 390
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 391
    const-string/jumbo v0, "carriers"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string/jumbo v0, "dbh.onCreate: Skipping apply APNs from xml."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 399
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.onCreate:- db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 400
    return-void

    .line 396
    :cond_0
    const-string/jumbo v0, "dbh.onCreate: Apply apns from xml."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->initDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 407
    :try_start_0
    const-string/jumbo v1, "siminfo"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 408
    const-string/jumbo v0, "dbh.onOpen: ok, queried table=siminfo"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 417
    const-string/jumbo v0, "dbh.onOpen: ok, queried table=carriers"

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 425
    :cond_1
    :goto_1
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception siminfoe="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no such table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createSimInfoTable(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 418
    :catch_1
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception carriers e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap2(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "no such table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    const-string/jumbo v0, "carriers"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10

    .prologue
    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dbh.onUpgrade:+ db="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " oldV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " newV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 627
    const v0, 0x50006

    if-ge p2, v0, :cond_14

    .line 640
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN authtype INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 643
    const v0, 0x50006

    .line 645
    :goto_0
    const v1, 0x60006

    if-ge v0, v1, :cond_0

    .line 647
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 649
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN roaming_protocol TEXT DEFAULT IP;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 651
    const v0, 0x60006

    .line 653
    :cond_0
    const v1, 0x70006

    if-ge v0, v1, :cond_1

    .line 655
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN carrier_enabled BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 657
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN bearer INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 659
    const v0, 0x70006

    .line 661
    :cond_1
    const v1, 0x80006

    if-ge v0, v1, :cond_2

    .line 664
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN mvno_type TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 666
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN mvno_match_data TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 668
    const v0, 0x80006

    .line 670
    :cond_2
    const v1, 0x90006

    if-ge v0, v1, :cond_3

    .line 671
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN sub_id INTEGER DEFAULT -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 674
    const v0, 0x90006

    .line 676
    :cond_3
    const v1, 0xa0006

    if-ge v0, v1, :cond_4

    .line 677
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN profile_id INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 679
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN modem_cognitive BOOLEAN DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 681
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN max_conns INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 683
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN wait_time INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 685
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN max_conns_time INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 687
    const v0, 0xa0006

    .line 689
    :cond_4
    const v1, 0xb0006

    if-ge v0, v1, :cond_5

    .line 690
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN mtu INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 692
    const v0, 0xb0006

    .line 694
    :cond_5
    const v1, 0xc0006

    if-ge v0, v1, :cond_6

    .line 697
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN mcc INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN mnc INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    :goto_1
    const v0, 0xc0006

    .line 709
    :cond_6
    const v1, 0xd0006

    if-ge v0, v1, :cond_7

    .line 712
    :try_start_1
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN carrier_name TEXT DEFAULT \'\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 720
    :goto_2
    const v0, 0xd0006

    .line 722
    :cond_7
    const v1, 0xe0006

    .line 727
    const v1, 0xf0006

    if-ge v0, v1, :cond_8

    .line 747
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 755
    invoke-direct {p0, p1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->preserveUserAndCarrierApns(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 757
    const-string/jumbo v1, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 764
    const-string/jumbo v1, "carriers_tmp"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 766
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyPreservedApnsToNewTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 767
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 769
    const-string/jumbo v0, "DROP TABLE IF EXISTS carriers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    const-string/jumbo v0, "ALTER TABLE carriers_tmp rename to carriers;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 788
    const v0, 0xf0006

    .line 790
    :cond_8
    const v1, 0x100006

    if-ge v0, v1, :cond_9

    .line 795
    :try_start_2
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_cmas_extreme_threat_alerts INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 797
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_cmas_severe_threat_alerts INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 799
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_cmas_amber_alerts INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 801
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_emergency_alerts INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 803
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN alert_sound_duration INTEGER DEFAULT 4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 805
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN alert_reminder_interval INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_alert_vibrate INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 809
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_alert_speech INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_etws_test_alerts INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 813
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_channel_50_alerts INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 815
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN enable_cmas_test_alerts INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 817
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN show_cmas_opt_out_dialog INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 825
    :goto_3
    const v0, 0x100006

    .line 827
    :cond_9
    const v1, 0x110006

    if-ge v0, v1, :cond_c

    .line 828
    const/4 v9, 0x0

    .line 830
    :try_start_3
    const-string/jumbo v1, "carriers"

    .line 831
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 830
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 832
    if-eqz v1, :cond_a

    :try_start_4
    const-string/jumbo v0, "user_visible"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_12

    .line 833
    :cond_a
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN user_visible BOOLEAN DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 842
    :goto_4
    if-eqz v1, :cond_b

    .line 843
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 846
    :cond_b
    const v0, 0x110006

    .line 848
    :cond_c
    const v1, 0x120006

    if-ge v0, v1, :cond_d

    .line 851
    :try_start_5
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN sim_provisioning_status INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3

    .line 860
    :goto_5
    const v0, 0x120006

    .line 862
    :cond_d
    const v1, 0x130006

    if-ge v0, v1, :cond_e

    .line 869
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 876
    const-string/jumbo v1, "carriers"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 883
    const-string/jumbo v1, "DROP TABLE IF EXISTS carriers_tmp"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 885
    const-string/jumbo v1, "carriers_tmp"

    invoke-direct {p0, p1, v1}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->createCarriersTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 887
    invoke-direct {p0, p1, v0}, Lcom/android/providers/telephony/TelephonyProvider$DatabaseHelper;->copyDataToTmpTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    .line 888
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 890
    const-string/jumbo v0, "DROP TABLE IF EXISTS carriers"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 892
    const-string/jumbo v0, "ALTER TABLE carriers_tmp rename to carriers;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 908
    const v0, 0x130006

    .line 910
    :cond_e
    const v1, 0x140006

    if-ge v0, v1, :cond_f

    .line 913
    :try_start_6
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN is_embedded INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 915
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN access_rules BLOB;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    const-string/jumbo v0, "ALTER TABLE siminfo ADD COLUMN is_removable INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    .line 925
    :goto_6
    const v0, 0x140006

    .line 927
    :cond_f
    const v1, 0x150006

    if-ge v0, v1, :cond_10

    .line 930
    :try_start_7
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN user_editable INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    .line 940
    :goto_7
    const v0, 0x150006

    .line 942
    :cond_10
    const v1, 0x160006

    if-ge v0, v1, :cond_11

    .line 946
    :try_start_8
    const-string/jumbo v0, "ALTER TABLE carriers ADD COLUMN user_apn BOOLEAN DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_6

    .line 954
    :goto_8
    const v0, 0x160006

    .line 957
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dbh.onUpgrade:- db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " oldV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " newV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    .line 959
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 703
    const-string/jumbo v0, "onUpgrade skipping siminfo upgrade.  The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 714
    :catch_1
    move-exception v0

    .line 716
    const-string/jumbo v0, "onUpgrade skipping siminfo upgrade.  The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 819
    :catch_2
    move-exception v0

    .line 821
    const-string/jumbo v0, "onUpgrade skipping siminfo upgrade.  The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 837
    :cond_12
    :try_start_9
    const-string/jumbo v0, "onUpgrade skipping carriers upgrade.  Column user_visible already exists."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 841
    :catchall_0
    move-exception v0

    .line 842
    :goto_9
    if-eqz v1, :cond_13

    .line 843
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 841
    :cond_13
    throw v0

    .line 854
    :catch_3
    move-exception v0

    .line 856
    const-string/jumbo v0, "onUpgrade skipping siminfo upgrade.  The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 919
    :catch_4
    move-exception v0

    .line 921
    const-string/jumbo v0, "onUpgrade skipping siminfo upgrade. The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 932
    :catch_5
    move-exception v0

    .line 936
    const-string/jumbo v0, "onUpgrade skipping carriers upgrade. The table will get created in onOpen."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 948
    :catch_6
    move-exception v0

    .line 950
    const-string/jumbo v0, "onUpgrade skipping carriers upgrade.  Column user_apn already exists."

    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyProvider;->-wrap1(Ljava/lang/String;)V

    goto :goto_8

    .line 841
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_9

    :cond_14
    move v0, p2

    goto/16 :goto_0
.end method
