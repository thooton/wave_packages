.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field static final FORWARD_PROJECTION:[Ljava/lang/String;

.field static final MAILBOX_PROJECTION:[Ljava/lang/String;

.field public static final MAILBOX_PROJECTION_DEFAULT:[Ljava/lang/String;

.field public static final MAILBOX_PROJECTION_RCS:[Ljava/lang/String;

.field static final PROJECTION:[Ljava/lang/String;

.field static final PROJECTION_DEFAULT:[Ljava/lang/String;

.field static final PROJECTION_RCS:[Ljava/lang/String;


# instance fields
.field private final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mGroupId:J

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsGroupConversation:Z

.field private mIsMsimIccCardActived:Z

.field private final mListView:Landroid/widget/ListView;

.field private mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

.field private final mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

.field private mMsgListItemHandler:Landroid/os/Handler;

.field private mMultiChoiceMode:Z

.field private mMultiManageMode:I

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mRcsIsStopDown:Z

.field private mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    .line 67
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 68
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v5

    .line 70
    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    .line 71
    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    .line 72
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 73
    const-string/jumbo v1, "date"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 74
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 75
    const-string/jumbo v1, "read"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 76
    const-string/jumbo v1, "type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 77
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 78
    const-string/jumbo v1, "locked"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "error_code"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    const-string/jumbo v1, "sub"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 82
    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 83
    const-string/jumbo v1, "date"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 84
    const-string/jumbo v1, "date_sent"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 85
    const-string/jumbo v1, "read"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 86
    const-string/jumbo v1, "m_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 87
    const-string/jumbo v1, "msg_box"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 88
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 89
    const-string/jumbo v1, "rr"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 90
    const-string/jumbo v1, "err_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 91
    const-string/jumbo v1, "locked"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 92
    const-string/jumbo v1, "st"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 93
    const-string/jumbo v1, "text_only"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 94
    const-string/jumbo v1, "sub_id"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 95
    const-string/jumbo v1, "recipient_ids"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 64
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_DEFAULT:[Ljava/lang/String;

    .line 98
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    .line 101
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 102
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v5

    .line 104
    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    .line 105
    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    .line 106
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 107
    const-string/jumbo v1, "date"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 108
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 109
    const-string/jumbo v1, "read"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 110
    const-string/jumbo v1, "type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 111
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "locked"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 113
    const-string/jumbo v1, "error_code"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 115
    const-string/jumbo v1, "sub"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 116
    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 117
    const-string/jumbo v1, "date"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 118
    const-string/jumbo v1, "date_sent"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 119
    const-string/jumbo v1, "read"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 120
    const-string/jumbo v1, "m_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 121
    const-string/jumbo v1, "msg_box"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 122
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 123
    const-string/jumbo v1, "rr"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 124
    const-string/jumbo v1, "err_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "locked"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "st"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "text_only"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "sub_id"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "recipient_ids"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 98
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION_DEFAULT:[Ljava/lang/String;

    .line 132
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    .line 134
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 135
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v5

    .line 137
    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    .line 138
    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    .line 139
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "date"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "read"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "locked"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "error_code"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 148
    const-string/jumbo v1, "sub"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 149
    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 150
    const-string/jumbo v1, "date"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 151
    const-string/jumbo v1, "date_sent"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 152
    const-string/jumbo v1, "read"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 153
    const-string/jumbo v1, "m_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 154
    const-string/jumbo v1, "msg_box"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 155
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 156
    const-string/jumbo v1, "rr"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 157
    const-string/jumbo v1, "err_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 158
    const-string/jumbo v1, "locked"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 159
    const-string/jumbo v1, "st"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "text_only"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "sub_id"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "recipient_ids"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "rcs_file_name"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "rcs_thumb_path"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "rcs_msg_type"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "rcs_burn"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "rcs_is_download"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "rcs_msg_state"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "rcs_mime_type"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "favourite"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "rcs_file_size"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "rcs_message_id"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "rcs_chat_type"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 132
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_RCS:[Ljava/lang/String;

    .line 176
    const/16 v0, 0x27

    new-array v0, v0, [Ljava/lang/String;

    .line 178
    const-string/jumbo v1, "transport_type"

    aput-object v1, v0, v3

    .line 179
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 180
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v5

    .line 182
    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    .line 183
    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    .line 184
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "date"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "date_sent"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "read"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "status"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "locked"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "error_code"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "sub"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "sub_cs"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "date"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "date_sent"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "read"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "m_type"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "msg_box"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "d_rpt"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "rr"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "err_type"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "locked"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "st"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "text_only"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "sub_id"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "recipient_ids"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "rcs_file_name"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "rcs_thumb_path"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "rcs_msg_type"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "rcs_burn"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "rcs_is_download"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "rcs_msg_state"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "rcs_mime_type"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "favourite"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "rcs_file_size"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "rcs_message_id"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "rcs_chat_type"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 176
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION_RCS:[Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_RCS:[Ljava/lang/String;

    .line 221
    :goto_0
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 224
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION_RCS:[Ljava/lang/String;

    .line 224
    :goto_1
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION:[Ljava/lang/String;

    .line 227
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    .line 228
    const-string/jumbo v1, "\'sms\' AS transport_type"

    aput-object v1, v0, v3

    .line 229
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    .line 230
    const-string/jumbo v1, "thread_id"

    aput-object v1, v0, v5

    .line 231
    const-string/jumbo v1, "address"

    aput-object v1, v0, v6

    .line 232
    const-string/jumbo v1, "body"

    aput-object v1, v0, v7

    .line 233
    const-string/jumbo v1, "sub_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "rcs_file_name"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 235
    const-string/jumbo v1, "rcs_thumb_path"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 236
    const-string/jumbo v1, "rcs_msg_type"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 237
    const-string/jumbo v1, "rcs_burn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 238
    const-string/jumbo v1, "rcs_is_download"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 239
    const-string/jumbo v1, "rcs_msg_state"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 240
    const-string/jumbo v1, "rcs_mime_type"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 241
    const-string/jumbo v1, "favourite"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "rcs_file_size"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "rcs_message_id"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 244
    const-string/jumbo v1, "rcs_chat_type"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 245
    const-string/jumbo v1, "date"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 246
    const-string/jumbo v1, "date_sent"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "read"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "type"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "status"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "locked"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "error_code"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 227
    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->FORWARD_PROJECTION:[Ljava/lang/String;

    .line 60
    return-void

    .line 222
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_DEFAULT:[Ljava/lang/String;

    goto/16 :goto_0

    .line 225
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MessageListAdapter;->MAILBOX_PROJECTION_DEFAULT:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 336
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 314
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMultiChoiceMode:Z

    .line 315
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMsimIccCardActived:Z

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMultiManageMode:I

    .line 319
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    .line 326
    iput-boolean v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mRcsIsStopDown:Z

    .line 337
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 338
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 341
    const-string/jumbo v0, "layout_inflater"

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    # PERF(mms rows): rows' TextViews without street-address linking (no WebView start)
    invoke-static {v0}, Lcom/android/mms/ui/WaveComposePerf;->rowInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 342
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    .line 343
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 345
    if-eqz p4, :cond_0

    .line 346
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 351
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;)V

    invoke-virtual {p3, v0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 361
    return-void

    .line 348
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method private getItemViewType(Landroid/database/Cursor;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v2, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnRcsMsgType:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 553
    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 554
    const/4 v0, 0x4

    return v0

    .line 557
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v2, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    const-string/jumbo v3, "sms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v2, v2, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 562
    if-eq v2, v0, :cond_1

    .line 563
    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 562
    :cond_2
    return v0

    .line 566
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    # PERF(inline text rows): the SMS row pool uses the same layouts without the MMS stub.
    invoke-static {p1}, Lcom/android/mms/ui/WaveTextMms;->hasInlineText(Landroid/database/Cursor;)Z
    move-result v2
    if-eqz v2, :wave_attachment_pool
    if-eq v1, v0, :wave_received_text
    if-nez v1, :wave_sent_text
    :wave_received_text
    const/4 v0, 0x0
    :wave_sent_text
    return v0

    :wave_attachment_pool
    .line 568
    if-eq v1, v0, :cond_4

    if-nez v1, :cond_5

    .line 569
    :cond_4
    const/4 v0, 0x2

    .line 568
    :goto_0
    return v0

    .line 569
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 3

    .prologue
    .line 516
    const-string/jumbo v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    neg-long v0, p1

    return-wide v0

    .line 519
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1

    .prologue
    .line 509
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 512
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 6

    .prologue
    .line 369
    instance-of v0, p1, Lcom/android/mms/ui/MessageListItem;

    if-eqz v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 372
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->markAsSelected(Z)V

    .line 377
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 380
    invoke-virtual {p0, v0, v2, v3, p3}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    .line 381
    if-eqz v1, :cond_2

    move-object v0, p1

    .line 382
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    .line 383
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 384
    iget v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMultiManageMode:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 385
    iget v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMultiManageMode:I

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setManageSelectMode(I)V

    .line 387
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMsimIccCardActived:Z

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setIsMsimIccCardActived(Z)V

    .line 388
    iget-boolean v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    iget-wide v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;ZIJ)V

    .line 389
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 394
    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v0, p1

    .line 375
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListItem;->markAsSelected(Z)V

    goto :goto_0

    .line 391
    :cond_4
    instance-of v0, p1, Lcom/android/mms/rcs/RcsNotificationMessageListItem;

    if-eqz v0, :cond_2

    .line 392
    check-cast p1, Lcom/android/mms/rcs/RcsNotificationMessageListItem;

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-virtual {p1, p3, v0}, Lcom/android/mms/rcs/RcsNotificationMessageListItem;->bind(Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V

    goto :goto_1
.end method

.method public cancelBackgroundLoading()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 433
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 8

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/mms/ui/MessageItem;

    .line 496
    if-nez v6, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    iget-wide v4, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v2, v4, v5}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    .line 504
    :cond_0
    :goto_0
    return-object v6

    .line 500
    :catch_0
    move-exception v0

    .line 501
    :goto_1
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "getCachedMessageItem: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 500
    :catch_1
    move-exception v1

    move-object v6, v0

    move-object v0, v1

    goto :goto_1
.end method

.method public getCursorForItem(Lcom/android/mms/ui/MessageItem;)Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 592
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 593
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    :cond_0
    iget v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mRowIDColumn:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 597
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v1, v1, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 598
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 599
    return-object v0

    .line 601
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    :cond_2
    return-object v6
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 400
    int-to-long v0, p1

    return-wide v0

    .line 402
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 546
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v0

    return v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 539
    const/4 v0, 0x5

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 468
    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(Landroid/database/Cursor;)I

    move-result v2

    .line 470
    invoke-static {}, Lcom/android/mms/MmsConfig;->isRcsVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne v2, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004a

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 491
    :goto_0
    return-object v1

    .line 474
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMultiChoiceMode:Z

    if-eqz v0, :cond_5

    .line 475
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_1

    .line 476
    if-ne v2, v4, :cond_4

    .line 477
    :cond_1
    const v0, 0x7f04002e

    .line 475
    :goto_1
    invoke-virtual {v1, v0, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 485
    :goto_2
    if-eq v2, v4, :cond_2

    const/4 v0, 0x3

    if-ne v2, v0, :cond_3

    .line 487
    :cond_2
    const v0, 0x7f0f0033

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    move-object v0, v1

    .line 489
    check-cast v0, Lcom/android/mms/ui/MessageListItem;

    iget-object v2, p0, Lcom/android/mms/ui/MessageListAdapter;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessageListItem;->setMMSAudioPlayer(Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;)V

    goto :goto_0

    .line 477
    :cond_4
    const v0, 0x7f04002f

    goto :goto_1

    .line 480
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-eqz v2, :cond_6

    .line 481
    if-ne v2, v4, :cond_7

    .line 482
    :cond_6
    const v0, 0x7f04002c

    .line 480
    :goto_3
    invoke-static {v1, v0, p3}, Lcom/android/mms/ui/WaveRowPool;->obtainMessageRow(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_2

    .line 482
    :cond_7
    const v0, 0x7f04002d

    goto :goto_3
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 445
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 450
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter$MessageItemCache;->evictAll()V

    .line 452
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 455
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 464
    :cond_0
    return-void
.end method

.method public setIsGroupConversation(Z)V
    .locals 0

    .prologue
    .line 423
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsGroupConversation:Z

    .line 424
    return-void
.end method

.method public setIsMsimIccCardActived(Z)V
    .locals 0

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMsimIccCardActived:Z

    .line 365
    return-void
.end method

.method public setMMSAudioPlayer(Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMMSAudioPlayer:Lcom/android/mms/ui/ComposeMessageActivity$IMMSAudioPlayer;

    .line 407
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 420
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 416
    return-void
.end method

.method public setRcsGroupId(J)V
    .locals 1

    .prologue
    .line 426
    iput-wide p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mGroupId:J

    .line 427
    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .prologue
    .line 934
    iput p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mTextSize:F

    .line 935
    return-void
.end method
