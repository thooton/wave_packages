.class Lcom/nuance/flext9_OEM/input/DatabaseConfig;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "DatabaseConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;
    }
.end annotation


# static fields
.field private static DATABASE_CONFIG_FILE_NAME:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "XT9IME"

.field private static TAG_ASDB:Ljava/lang/String;

.field private static TAG_CDB:Ljava/lang/String;

.field private static TAG_FILE:Ljava/lang/String;

.field private static TAG_HARDKEY_LAYOUT:Ljava/lang/String;

.field private static TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

.field private static TAG_HWR_DIC:Ljava/lang/String;

.field private static TAG_KDB:Ljava/lang/String;

.field private static TAG_KDB_HARDKEY:Ljava/lang/String;

.field private static TAG_LDB:Ljava/lang/String;

.field private static TAG_MDB:Ljava/lang/String;

.field private static TAG_MULTIPART_FILE:Ljava/lang/String;

.field private static TAG_ROOT:Ljava/lang/String;

.field private static TAG_UDB:Ljava/lang/String;

.field private static mConfigFilePath:Ljava/lang/String;


# instance fields
.field private final EXTRACT_DATABASE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

.field private mCurrentTag:Ljava/lang/String;

.field private mDatabaseConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRefreshAllDatabases:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "kdb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "kdb_hardkey"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB_HARDKEY:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "hardkey_layout"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HARDKEY_LAYOUT:Ljava/lang/String;

    .line 60
    const-string/jumbo v0, "ldb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    .line 61
    const-string/jumbo v0, "mdb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "udb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "cdb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "asdb"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "hwr_dic"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, "hwr_db_template"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    .line 67
    const-string/jumbo v0, "file"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, "multipart_file"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "database_config"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ROOT:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "databases.conf"

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4

    .prologue
    .line 88
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    .line 163
    const-string/jumbo v0, "_data_extract.txt"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->EXTRACT_DATABASE:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB_HARDKEY:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HARDKEY_LAYOUT:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->checkIfDatabaseNeedToRefress(J)V

    .line 111
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "database_config.xml"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 114
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 115
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    .line 117
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 118
    invoke-interface {v1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 119
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 124
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 124
    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 129
    new-instance v1, Ljava/io/BufferedOutputStream;

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 131
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB_HARDKEY:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB_HARDKEY:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 132
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HARDKEY_LAYOUT:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HARDKEY_LAYOUT:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 133
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 134
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 135
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 136
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 137
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 138
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 139
    sget-object v2, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    sget-object v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v2, v0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V

    .line 140
    const-string/jumbo v0, "\n"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 141
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 142
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 145
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->DATABASE_CONFIG_FILE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    .line 150
    invoke-direct {p0, p2, p3}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->markDatabaseExtracted(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :catch_1
    move-exception v0

    .line 155
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkIfDatabaseNeedToRefress(J)V
    .locals 5

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "_data_extract.txt"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    .line 196
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 197
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 198
    new-instance v1, Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 205
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mRefreshAllDatabases:Z

    .line 207
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mRefreshAllDatabases:Z

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private extractFileAsset(Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 357
    const/4 v2, 0x1

    .line 369
    iget-boolean v0, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 378
    :cond_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isFileAlreadyExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 388
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 390
    :try_start_1
    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v0, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    .line 392
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v5

    new-array v5, v5, [B

    .line 393
    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    .line 394
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move v0, v1

    .line 404
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 411
    :goto_2
    if-nez v0, :cond_1

    .line 412
    :try_start_4
    iget-object v2, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isFileAlreadyExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 428
    :cond_1
    :goto_3
    return v0

    .line 406
    :catch_1
    move-exception v0

    .line 407
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    move v0, v1

    .line 408
    goto :goto_2

    .line 418
    :catch_2
    move-exception v0

    .line 419
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move v0, v1

    .line 420
    goto :goto_3

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method private isDatabaseSectionTag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_KDB_HARDKEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HARDKEY_LAYOUT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_LDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DIC:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_HWR_DB_TEMPLATE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_1

    .line 246
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isFileAlreadyExist(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 335
    const/4 v0, 0x1

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 341
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 353
    :goto_0
    return v0

    .line 343
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    move v0, v1

    .line 350
    goto :goto_0
.end method

.method private isUserDynamicDatabaseTag(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ASDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_CDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_UDB:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private markDatabaseExtracted(J)V
    .locals 3

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mRefreshAllDatabases:Z

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "_data_extract.txt"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 172
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 178
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private writeDatabaseSection(Ljava/lang/String;Ljava/util/Map;Ljava/io/BufferedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/BufferedOutputStream;",
            ")V"
        }
    .end annotation

    .prologue
    .line 221
    :try_start_0
    const-string/jumbo v0, "\n"

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 222
    const-string/jumbo v0, "["

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 223
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 224
    const-string/jumbo v0, "]\n"

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 226
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 230
    const-string/jumbo v2, " "

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 231
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 232
    const-string/jumbo v0, "\n"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mMultiPartFile:Z

    .line 315
    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 320
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 321
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 290
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    if-eqz v0, :cond_2

    .line 292
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mDatabaseConfigurations:Ljava/util/Map;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 297
    if-eqz v0, :cond_2

    .line 298
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseTag:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isUserDynamicDatabaseTag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->extractFileAsset(Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;)Z

    move-result v1

    .line 297
    if-eqz v1, :cond_2

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseID:Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v3, v3, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mDatabaseFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    :cond_2
    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    .line 310
    :cond_3
    :goto_0
    return-void

    .line 307
    :cond_4
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    iput-object v4, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDatabaseConfigureFile()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 82
    :cond_0
    return-object v1

    .line 85
    :cond_1
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mConfigFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 256
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_ROOT:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    .line 258
    iput-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->isDatabaseSectionTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    iput-object p2, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    goto :goto_0

    .line 263
    :cond_2
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 264
    :cond_3
    const-string/jumbo v0, "id"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string/jumbo v0, "name"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 266
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 267
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " missing id or name attribute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_5
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    sget-object v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->TAG_MULTIPART_FILE:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 272
    new-instance v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentTag:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mRefreshAllDatabases:Z

    invoke-direct/range {v0 .. v5}, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    .line 273
    if-nez v5, :cond_0

    .line 276
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/DatabaseConfig;->mCurrentDatabaseFileElement:Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/DatabaseConfig$DatabaseFileElement;->mAssetList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_6
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a valid tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
