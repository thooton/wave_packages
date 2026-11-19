.class public Lcom/android/providers/telephony/HbpcdLookupProvider;
.super Landroid/content/ContentProvider;
.source "HbpcdLookupProvider.java"


# static fields
.field private static DBG:Z

.field private static final sArbitraryProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConflictProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIddProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLookupProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sNanpProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRangeProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->DBG:Z

    .line 65
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 75
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    const-string/jumbo v2, "idd"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 77
    const-string/jumbo v2, "lookup"

    const/4 v3, 0x2

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 80
    const-string/jumbo v2, "conflict"

    const/4 v3, 0x3

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    const-string/jumbo v2, "range"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    const-string/jumbo v2, "nanp"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 84
    const-string/jumbo v2, "arbitrary"

    const/4 v3, 0x6

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    const-string/jumbo v2, "idd/#"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 87
    const-string/jumbo v2, "lookup/#"

    const/16 v3, 0x9

    .line 86
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 89
    const-string/jumbo v2, "conflict/#"

    const/16 v3, 0xa

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 90
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 91
    const-string/jumbo v2, "range/#"

    const/16 v3, 0xb

    .line 90
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 93
    const-string/jumbo v2, "nanp/#"

    const/16 v3, 0xc

    .line 92
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "hbpcd_lookup"

    .line 95
    const-string/jumbo v2, "arbitrary/#"

    const/16 v3, 0xd

    .line 94
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MCC"

    const-string/jumbo v2, "MCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "IDD"

    const-string/jumbo v2, "IDD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    .line 103
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MCC"

    const-string/jumbo v2, "MCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Country_Code"

    const-string/jumbo v2, "Country_Code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Country_Name"

    const-string/jumbo v2, "Country_Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NDD"

    const-string/jumbo v2, "NDD"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "NANPS"

    const-string/jumbo v2, "NANPS"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_Offset_Low"

    const-string/jumbo v2, "GMT_Offset_Low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_Offset_High"

    const-string/jumbo v2, "GMT_Offset_High"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_DST_Low"

    const-string/jumbo v2, "GMT_DST_Low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_DST_High"

    const-string/jumbo v2, "GMT_DST_High"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_Offset_Low"

    .line 118
    const-string/jumbo v2, "mcc_lookup_table.GMT_Offset_Low"

    .line 117
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_Offset_High"

    .line 120
    const-string/jumbo v2, "mcc_lookup_table.GMT_Offset_High"

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_DST_Low"

    .line 122
    const-string/jumbo v2, "mcc_lookup_table.GMT_DST_Low"

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "GMT_DST_High"

    .line 124
    const-string/jumbo v2, "mcc_lookup_table.GMT_DST_High"

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MCC"

    .line 126
    const-string/jumbo v2, "mcc_sid_conflict.MCC"

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SID_Conflict"

    .line 128
    const-string/jumbo v2, "mcc_sid_conflict.SID_Conflict"

    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    .line 131
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MCC"

    const-string/jumbo v2, "MCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SID_Range_Low"

    const-string/jumbo v2, "SID_Range_Low"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SID_Range_High"

    const-string/jumbo v2, "SID_Range_High"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    .line 137
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "Area_Code"

    const-string/jumbo v2, "Area_Code"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    .line 141
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "_id"

    const-string/jumbo v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "MCC"

    const-string/jumbo v2, "MCC"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v1, "SID"

    const-string/jumbo v2, "SID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot delete URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "HbpcdLookupProvider"

    const-string/jumbo v1, "getType"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 315
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to insert row into "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 150
    sget-boolean v0, Lcom/android/providers/telephony/HbpcdLookupProvider;->DBG:Z

    if-eqz v0, :cond_0

    .line 151
    const-string/jumbo v0, "HbpcdLookupProvider"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    new-instance v0, Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/telephony/HbpcdLookupProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/telephony/HbpcdLookupProvider;->mDbHelper:Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;

    .line 155
    iget-object v0, p0, Lcom/android/providers/telephony/HbpcdLookupProvider;->mDbHelper:Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 156
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 171
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 174
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 176
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 177
    packed-switch v1, :pswitch_data_0

    .line 297
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :pswitch_1
    const-string/jumbo v1, "mcc_idd"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 180
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 181
    if-eqz v2, :cond_c

    .line 182
    const-string/jumbo v1, "MCC ASC"

    :goto_0
    move-object v5, v6

    move-object v7, v1

    .line 300
    :goto_1
    if-nez v2, :cond_0

    move-object v7, p5

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/android/providers/telephony/HbpcdLookupProvider;->mDbHelper:Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 305
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 306
    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/android/providers/telephony/HbpcdLookupProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 310
    :cond_1
    return-object v0

    .line 187
    :pswitch_2
    const-string/jumbo v1, "mcc_lookup_table"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 189
    if-eqz v2, :cond_b

    .line 190
    const-string/jumbo v1, "MCC ASC"

    .line 192
    :goto_2
    const-string/jumbo v5, "Country_Name"

    move-object v7, v1

    .line 193
    goto :goto_1

    .line 196
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string/jumbo v3, "mcc_lookup_table"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v3, " INNER JOIN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v3, "mcc_sid_conflict"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v3, " ON ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v3, "mcc_lookup_table"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v3, "MCC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v3, " = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v3, "mcc_sid_conflict"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v3, "MCC"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 210
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sConflictProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    move-object v5, v6

    move-object v7, v6

    .line 211
    goto/16 :goto_1

    .line 214
    :pswitch_4
    const-string/jumbo v1, "mcc_sid_range"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 215
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 216
    if-eqz v2, :cond_a

    .line 217
    const-string/jumbo v1, "MCC ASC"

    :goto_3
    move-object v5, v6

    move-object v7, v1

    .line 219
    goto/16 :goto_1

    .line 222
    :pswitch_5
    const-string/jumbo v1, "nanp_area_code"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 223
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 224
    if-eqz v2, :cond_9

    .line 225
    const-string/jumbo v1, "Area_Code ASC"

    :goto_4
    move-object v5, v6

    move-object v7, v1

    .line 227
    goto/16 :goto_1

    .line 230
    :pswitch_6
    const-string/jumbo v1, "arbitrary_mcc_sid_match"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 232
    if-eqz v2, :cond_8

    .line 233
    const-string/jumbo v1, "MCC ASC"

    :goto_5
    move-object v5, v6

    move-object v7, v1

    .line 235
    goto/16 :goto_1

    .line 238
    :pswitch_7
    const-string/jumbo v1, "mcc_idd"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 239
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sIddProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 240
    const-string/jumbo v1, "mcc_idd._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 242
    if-eqz v2, :cond_7

    .line 243
    const-string/jumbo v1, "MCC ASC"

    :goto_6
    move-object v5, v6

    move-object v7, v1

    .line 245
    goto/16 :goto_1

    .line 248
    :pswitch_8
    const-string/jumbo v1, "mcc_lookup_table"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 249
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sLookupProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 250
    const-string/jumbo v1, "mcc_lookup_table._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 251
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 252
    if-eqz v2, :cond_6

    .line 253
    const-string/jumbo v1, "MCC ASC"

    :goto_7
    move-object v5, v6

    move-object v7, v1

    .line 255
    goto/16 :goto_1

    .line 258
    :pswitch_9
    const-string/jumbo v1, "mcc_sid_conflict"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 259
    const-string/jumbo v1, "mcc_sid_conflict._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 261
    if-eqz v2, :cond_5

    .line 262
    const-string/jumbo v1, "MCC ASC"

    :goto_8
    move-object v5, v6

    move-object v7, v1

    .line 264
    goto/16 :goto_1

    .line 267
    :pswitch_a
    const-string/jumbo v1, "mcc_sid_range"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 268
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sRangeProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 269
    const-string/jumbo v1, "mcc_sid_range._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 271
    if-eqz v2, :cond_4

    .line 272
    const-string/jumbo v1, "MCC ASC"

    :goto_9
    move-object v5, v6

    move-object v7, v1

    .line 274
    goto/16 :goto_1

    .line 277
    :pswitch_b
    const-string/jumbo v1, "nanp_area_code"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 278
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sNanpProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 279
    const-string/jumbo v1, "nanp_area_code._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 281
    if-eqz v2, :cond_3

    .line 282
    const-string/jumbo v1, "Area_Code ASC"

    :goto_a
    move-object v5, v6

    move-object v7, v1

    .line 284
    goto/16 :goto_1

    .line 287
    :pswitch_c
    const-string/jumbo v1, "arbitrary_mcc_sid_match"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 288
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sArbitraryProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 289
    const-string/jumbo v1, "arbitrary_mcc_sid_match._id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 291
    if-eqz v2, :cond_2

    .line 292
    const-string/jumbo v1, "MCC ASC"

    :goto_b
    move-object v5, v6

    move-object v7, v1

    .line 294
    goto/16 :goto_1

    :cond_2
    move-object v1, v6

    goto :goto_b

    :cond_3
    move-object v1, v6

    goto :goto_a

    :cond_4
    move-object v1, v6

    goto :goto_9

    :cond_5
    move-object v1, v6

    goto :goto_8

    :cond_6
    move-object v1, v6

    goto/16 :goto_7

    :cond_7
    move-object v1, v6

    goto/16 :goto_6

    :cond_8
    move-object v1, v6

    goto/16 :goto_5

    :cond_9
    move-object v1, v6

    goto/16 :goto_4

    :cond_a
    move-object v1, v6

    goto/16 :goto_3

    :cond_b
    move-object v1, v6

    goto/16 :goto_2

    :cond_c
    move-object v1, v6

    goto/16 :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/providers/telephony/HbpcdLookupProvider;->mDbHelper:Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/telephony/HbpcdLookupDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/android/providers/telephony/HbpcdLookupProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 329
    packed-switch v1, :pswitch_data_0

    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot update URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :pswitch_0
    const-string/jumbo v1, "mcc_lookup_table"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 337
    return v0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
