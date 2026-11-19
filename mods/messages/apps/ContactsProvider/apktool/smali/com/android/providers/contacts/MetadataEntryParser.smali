.class public Lcom/android/providers/contacts/MetadataEntryParser;
.super Ljava/lang/Object;
.source "MetadataEntryParser.java"


# annotations
.annotation build Lcom/android/providers/contacts/util/NeededForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;,
        Lcom/android/providers/contacts/MetadataEntryParser$FieldData;,
        Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;,
        Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;,
        Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseDataToMetaDataEntry(Ljava/lang/String;)Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;
    .locals 25
    .annotation build Lcom/android/providers/contacts/util/NeededForTesting;
    .end annotation

    .prologue
    .line 149
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 150
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Input cannot be empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 154
    :cond_0
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v6, "unique_contact_id"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    invoke-static {v6}, Lcom/android/providers/contacts/MetadataEntryParser;->parseUniqueContact(Lorg/json/JSONObject;)Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    move-result-object v7

    .line 160
    const-string/jumbo v6, "contact_prefs"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 161
    const-string/jumbo v6, "send_to_voicemail"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const-string/jumbo v6, "send_to_voicemail"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v13, v6

    .line 163
    :goto_0
    const-string/jumbo v6, "starred"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 164
    const-string/jumbo v6, "starred"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    move v9, v6

    .line 165
    :goto_1
    const-string/jumbo v6, "pinned"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "pinned"

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 168
    :goto_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 169
    const-string/jumbo v6, "aggregation_data"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 170
    const-string/jumbo v6, "aggregation_data"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 172
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_6

    .line 173
    invoke-virtual {v11, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 174
    const-string/jumbo v15, "contact_ids"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 176
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_4

    .line 177
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 178
    const-string/jumbo v7, "There should be two contacts for each aggregation."

    .line 177
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :catch_0
    move-exception v6

    .line 238
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "JSON Exception."

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 162
    :cond_1
    const/4 v6, 0x0

    move v13, v6

    goto :goto_0

    .line 164
    :cond_2
    const/4 v6, 0x0

    move v9, v6

    goto :goto_1

    .line 165
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 180
    :cond_4
    const/16 v16, 0x0

    :try_start_1
    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    .line 181
    invoke-static/range {v16 .. v16}, Lcom/android/providers/contacts/MetadataEntryParser;->parseUniqueContact(Lorg/json/JSONObject;)Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    move-result-object v16

    .line 182
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 183
    invoke-static {v15}, Lcom/android/providers/contacts/MetadataEntryParser;->parseUniqueContact(Lorg/json/JSONObject;)Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    move-result-object v15

    .line 184
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 185
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 186
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Aggregation type cannot be empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_5
    new-instance v17, Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15, v14}, Lcom/android/providers/contacts/MetadataEntryParser$AggregationData;-><init>(Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 196
    :cond_6
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 197
    const-string/jumbo v6, "field_data"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 198
    const-string/jumbo v6, "field_data"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 200
    const/4 v6, 0x0

    move v8, v6

    :goto_4
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v8, v6, :cond_a

    .line 201
    invoke-virtual {v14, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 202
    const-string/jumbo v15, "field_data_id"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 203
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 204
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Field data hash id cannot be empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 206
    :cond_7
    const-string/jumbo v16, "field_data_prefs"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 207
    const-string/jumbo v17, "is_primary"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 208
    const-string/jumbo v18, "is_super_primary"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 210
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 211
    const-string/jumbo v19, "usage_stats"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 212
    const-string/jumbo v19, "usage_stats"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 213
    const/4 v6, 0x0

    :goto_5
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v6, v0, :cond_9

    .line 214
    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v20

    .line 215
    const-string/jumbo v21, "usage_type"

    invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 216
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 217
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Usage type cannot be empty."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 219
    :cond_8
    const-string/jumbo v22, "last_time_used"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 220
    const-string/jumbo v24, "usage_count"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v20

    .line 222
    new-instance v24, Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/MetadataEntryParser$UsageStats;-><init>(Ljava/lang/String;JI)V

    .line 224
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 228
    :cond_9
    new-instance v6, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;

    move/from16 v0, v17

    move/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v6, v15, v0, v1, v2}, Lcom/android/providers/contacts/MetadataEntryParser$FieldData;-><init>(Ljava/lang/String;ZZLjava/util/ArrayList;)V

    .line 230
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto/16 :goto_4

    .line 233
    :cond_a
    new-instance v6, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;

    .line 234
    if-eqz v13, :cond_b

    const/4 v8, 0x1

    :goto_6
    if-eqz v9, :cond_c

    const/4 v9, 0x1

    .line 233
    :goto_7
    invoke-direct/range {v6 .. v12}, Lcom/android/providers/contacts/MetadataEntryParser$MetadataEntry;-><init>(Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;IIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    return-object v6

    .line 234
    :cond_b
    const/4 v8, 0x0

    goto :goto_6

    :cond_c
    const/4 v9, 0x0

    goto :goto_7
.end method

.method private static parseUniqueContact(Lorg/json/JSONObject;)Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;
    .locals 6

    .prologue
    .line 244
    :try_start_0
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    const-string/jumbo v0, "account_name"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string/jumbo v0, "account_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    const-string/jumbo v1, "GOOGLE_ACCOUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const-string/jumbo v0, "com.google"

    .line 255
    :goto_0
    const/4 v1, 0x0

    .line 256
    const-string/jumbo v4, "data_set"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "GOOGLE_PLUS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 258
    const-string/jumbo v1, "plus"

    .line 264
    :cond_0
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 264
    if-eqz v4, :cond_5

    .line 266
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 267
    const-string/jumbo v1, "Contact backup id, account type, account name cannot be empty."

    .line 266
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "JSON Exception."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 249
    :cond_2
    :try_start_1
    const-string/jumbo v1, "CUSTOM_ACCOUNT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 250
    const-string/jumbo v0, "custom_account_type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown account type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_4
    const-string/jumbo v5, "CUSTOM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 261
    const-string/jumbo v1, "custom_data_set"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 269
    :cond_5
    new-instance v4, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;

    invoke-direct {v4, v2, v0, v3, v1}, Lcom/android/providers/contacts/MetadataEntryParser$RawContactInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 271
    return-object v4
.end method
