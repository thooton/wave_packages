.class final Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "CallLogDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/CallLogDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OpenHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    .line 91
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 93
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->setIdleConnectionTimeout(J)V

    .line 94
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 102
    invoke-static {p1}, Lcom/android/providers/contacts/util/PropertyUtils;->createPropertiesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 119
    const-string/jumbo v0, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,presentation INTEGER NOT NULL DEFAULT 1,post_dial_digits TEXT NOT NULL DEFAULT \'\',via_number TEXT NOT NULL DEFAULT \'\',date INTEGER,duration INTEGER,data_usage INTEGER,type INTEGER,features INTEGER NOT NULL DEFAULT 0,subscription_component_name TEXT,subscription_id TEXT,phone_account_address TEXT,phone_account_hidden INTEGER NOT NULL DEFAULT 0,sub_id INTEGER DEFAULT -1,new INTEGER,cnap_name TEXT,name TEXT,numbertype INTEGER,numberlabel TEXT,countryiso TEXT,voicemail_uri TEXT,is_read INTEGER,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,photo_uri TEXT,formatted_number TEXT,add_for_all_users INTEGER NOT NULL DEFAULT 1,last_modified INTEGER DEFAULT 0,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,transcription TEXT,transcription_state INTEGER NOT NULL DEFAULT 0,state INTEGER,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,backed_up INTEGER NOT NULL DEFAULT 0,restored INTEGER NOT NULL DEFAULT 0,archived INTEGER NOT NULL DEFAULT 0,is_omtp_voicemail INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT NOT NULL,phone_account_component_name TEXT,phone_account_id TEXT,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER,quota_occupied INTEGER DEFAULT -1,quota_total INTEGER DEFAULT -1,source_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap0(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x2

    if-ge p2, v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap1(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 197
    :cond_0
    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap2(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 201
    :cond_1
    const/4 v0, 0x4

    if-ge p2, v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap3(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 205
    :cond_2
    const/4 v0, 0x5

    if-ge p2, v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap4(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 209
    :cond_3
    const/4 v0, 0x6

    if-ge p2, v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/android/providers/contacts/CallLogDatabaseHelper$OpenHelper;->this$0:Lcom/android/providers/contacts/CallLogDatabaseHelper;

    invoke-static {v0, p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->-wrap5(Lcom/android/providers/contacts/CallLogDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 213
    :cond_4
    return-void
.end method
