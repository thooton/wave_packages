.class public Lcom/android/mms/exif/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# static fields
.field public static final DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

.field public static final TAG_APERTURE_VALUE:I

.field public static final TAG_ARTIST:I

.field public static final TAG_BITS_PER_SAMPLE:I

.field public static final TAG_BRIGHTNESS_VALUE:I

.field public static final TAG_CFA_PATTERN:I

.field public static final TAG_COLOR_SPACE:I

.field public static final TAG_COMPONENTS_CONFIGURATION:I

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:I

.field public static final TAG_COMPRESSION:I

.field public static final TAG_CONTRAST:I

.field public static final TAG_COPYRIGHT:I

.field public static final TAG_CUSTOM_RENDERED:I

.field public static final TAG_DATE_TIME:I

.field public static final TAG_DATE_TIME_DIGITIZED:I

.field public static final TAG_DATE_TIME_ORIGINAL:I

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:I

.field public static final TAG_DIGITAL_ZOOM_RATIO:I

.field public static final TAG_EXIF_IFD:I

.field public static final TAG_EXIF_VERSION:I

.field public static final TAG_EXPOSURE_BIAS_VALUE:I

.field public static final TAG_EXPOSURE_INDEX:I

.field public static final TAG_EXPOSURE_MODE:I

.field public static final TAG_EXPOSURE_PROGRAM:I

.field public static final TAG_EXPOSURE_TIME:I

.field public static final TAG_FILE_SOURCE:I

.field public static final TAG_FLASH:I

.field public static final TAG_FLASHPIX_VERSION:I

.field public static final TAG_FLASH_ENERGY:I

.field public static final TAG_FOCAL_LENGTH:I

.field public static final TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:I

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:I

.field public static final TAG_F_NUMBER:I

.field public static final TAG_GAIN_CONTROL:I

.field public static final TAG_GPS_ALTITUDE:I

.field public static final TAG_GPS_ALTITUDE_REF:I

.field public static final TAG_GPS_AREA_INFORMATION:I

.field public static final TAG_GPS_DATE_STAMP:I

.field public static final TAG_GPS_DEST_BEARING:I

.field public static final TAG_GPS_DEST_BEARING_REF:I

.field public static final TAG_GPS_DEST_DISTANCE:I

.field public static final TAG_GPS_DEST_DISTANCE_REF:I

.field public static final TAG_GPS_DEST_LATITUDE:I

.field public static final TAG_GPS_DEST_LATITUDE_REF:I

.field public static final TAG_GPS_DEST_LONGITUDE:I

.field public static final TAG_GPS_DEST_LONGITUDE_REF:I

.field public static final TAG_GPS_DIFFERENTIAL:I

.field public static final TAG_GPS_DOP:I

.field public static final TAG_GPS_IFD:I

.field public static final TAG_GPS_IMG_DIRECTION:I

.field public static final TAG_GPS_IMG_DIRECTION_REF:I

.field public static final TAG_GPS_LATITUDE:I

.field public static final TAG_GPS_LATITUDE_REF:I

.field public static final TAG_GPS_LONGITUDE:I

.field public static final TAG_GPS_LONGITUDE_REF:I

.field public static final TAG_GPS_MAP_DATUM:I

.field public static final TAG_GPS_MEASURE_MODE:I

.field public static final TAG_GPS_PROCESSING_METHOD:I

.field public static final TAG_GPS_SATTELLITES:I

.field public static final TAG_GPS_SPEED:I

.field public static final TAG_GPS_SPEED_REF:I

.field public static final TAG_GPS_STATUS:I

.field public static final TAG_GPS_TIME_STAMP:I

.field public static final TAG_GPS_TRACK:I

.field public static final TAG_GPS_TRACK_REF:I

.field public static final TAG_GPS_VERSION_ID:I

.field public static final TAG_IMAGE_DESCRIPTION:I

.field public static final TAG_IMAGE_LENGTH:I

.field public static final TAG_IMAGE_UNIQUE_ID:I

.field public static final TAG_IMAGE_WIDTH:I

.field public static final TAG_INTEROPERABILITY_IFD:I

.field public static final TAG_INTEROPERABILITY_INDEX:I

.field public static final TAG_ISO_SPEED_RATINGS:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:I

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

.field public static final TAG_LIGHT_SOURCE:I

.field public static final TAG_MAKE:I

.field public static final TAG_MAKER_NOTE:I

.field public static final TAG_MAX_APERTURE_VALUE:I

.field public static final TAG_METERING_MODE:I

.field public static final TAG_MODEL:I

.field public static final TAG_OECF:I

.field public static final TAG_ORIENTATION:I

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:I

.field public static final TAG_PIXEL_X_DIMENSION:I

.field public static final TAG_PIXEL_Y_DIMENSION:I

.field public static final TAG_PLANAR_CONFIGURATION:I

.field public static final TAG_PRIMARY_CHROMATICITIES:I

.field public static final TAG_REFERENCE_BLACK_WHITE:I

.field public static final TAG_RELATED_SOUND_FILE:I

.field public static final TAG_RESOLUTION_UNIT:I

.field public static final TAG_ROWS_PER_STRIP:I

.field public static final TAG_SAMPLES_PER_PIXEL:I

.field public static final TAG_SATURATION:I

.field public static final TAG_SCENE_CAPTURE_TYPE:I

.field public static final TAG_SCENE_TYPE:I

.field public static final TAG_SENSING_METHOD:I

.field public static final TAG_SHARPNESS:I

.field public static final TAG_SHUTTER_SPEED_VALUE:I

.field public static final TAG_SOFTWARE:I

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:I

.field public static final TAG_SPECTRAL_SENSITIVITY:I

.field public static final TAG_STRIP_BYTE_COUNTS:I

.field public static final TAG_STRIP_OFFSETS:I

.field public static final TAG_SUBJECT_AREA:I

.field public static final TAG_SUBJECT_DISTANCE:I

.field public static final TAG_SUBJECT_DISTANCE_RANGE:I

.field public static final TAG_SUBJECT_LOCATION:I

.field public static final TAG_SUB_SEC_TIME:I

.field public static final TAG_SUB_SEC_TIME_DIGITIZED:I

.field public static final TAG_SUB_SEC_TIME_ORIGINAL:I

.field public static final TAG_TRANSFER_FUNCTION:I

.field public static final TAG_USER_COMMENT:I

.field public static final TAG_WHITE_BALANCE:I

.field public static final TAG_WHITE_POINT:I

.field public static final TAG_X_RESOLUTION:I

.field public static final TAG_Y_CB_CR_COEFFICIENTS:I

.field public static final TAG_Y_CB_CR_POSITIONING:I

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:I

.field public static final TAG_Y_RESOLUTION:I

.field protected static sBannedDefines:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private static sOffsetTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mData:Lcom/android/mms/exif/ExifData;

.field private final mDateTimeStampFormat:Ljava/text/DateFormat;

.field private final mGPSDateStampFormat:Ljava/text/DateFormat;

.field private final mGPSTimeStampCalendar:Ljava/util/Calendar;

.field private mTagInfo:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 75
    const/16 v0, 0x100

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 74
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 77
    const/16 v0, 0x101

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 76
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 79
    const/16 v0, 0x102

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 78
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 81
    const/16 v0, 0x103

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 80
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 83
    const/16 v0, 0x106

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 82
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 85
    const/16 v0, 0x10e

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 84
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 87
    const/16 v0, 0x10f

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 86
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    .line 89
    const/16 v0, 0x110

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 88
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    .line 91
    const/16 v0, 0x111

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 90
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 93
    const/16 v0, 0x112

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 92
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    .line 95
    const/16 v0, 0x115

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 94
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 97
    const/16 v0, 0x116

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 96
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 99
    const/16 v0, 0x117

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 98
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 101
    const/16 v0, 0x11a

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 100
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 103
    const/16 v0, 0x11b

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 102
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 105
    const/16 v0, 0x11c

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 104
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 107
    const/16 v0, 0x128

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 106
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 109
    const/16 v0, 0x12d

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 108
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 111
    const/16 v0, 0x131

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 110
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 113
    const/16 v0, 0x132

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 112
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 115
    const/16 v0, 0x13b

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 114
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    .line 117
    const/16 v0, 0x13e

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 116
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 119
    const/16 v0, 0x13f

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 118
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 121
    const/16 v0, 0x211

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 120
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 123
    const/16 v0, 0x212

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 122
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 125
    const/16 v0, 0x213

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 124
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 127
    const/16 v0, 0x214

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 126
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 129
    const/16 v0, -0x7d68

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 128
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 131
    const/16 v0, -0x7897

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 130
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 133
    const/16 v0, -0x77db

    invoke-static {v3, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 132
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 136
    const/16 v0, 0x201

    invoke-static {v4, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 135
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 138
    const/16 v0, 0x202

    invoke-static {v4, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 137
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 141
    const/16 v0, -0x7d66

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 140
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 143
    const/16 v0, -0x7d63

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 142
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 145
    const/16 v0, -0x77de

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 144
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 147
    const/16 v0, -0x77dc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 146
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 149
    const/16 v0, -0x77d9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 148
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 151
    const/16 v0, -0x77d8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 150
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    .line 153
    const/16 v0, -0x7000

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 152
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 155
    const/16 v0, -0x6ffd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 154
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 157
    const/16 v0, -0x6ffc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 156
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 159
    const/16 v0, -0x6eff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 158
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 161
    const/16 v0, -0x6efe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 160
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 163
    const/16 v0, -0x6dff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 162
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 165
    const/16 v0, -0x6dfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 164
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 167
    const/16 v0, -0x6dfd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 166
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 169
    const/16 v0, -0x6dfc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 168
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 171
    const/16 v0, -0x6dfb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 170
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 173
    const/16 v0, -0x6dfa

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 172
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 175
    const/16 v0, -0x6df9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 174
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 177
    const/16 v0, -0x6df8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 176
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 179
    const/16 v0, -0x6df7

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 178
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    .line 181
    const/16 v0, -0x6df6

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 180
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 183
    const/16 v0, -0x6dec

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 182
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 185
    const/16 v0, -0x6d84

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 184
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 187
    const/16 v0, -0x6d7a

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 186
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 189
    const/16 v0, -0x6d70

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 188
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 191
    const/16 v0, -0x6d6f

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 190
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 193
    const/16 v0, -0x6d6e

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 192
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 195
    const/16 v0, -0x6000

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 194
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 197
    const/16 v0, -0x5fff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 196
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 199
    const/16 v0, -0x5ffe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 198
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 201
    const/16 v0, -0x5ffd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 200
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 203
    const/16 v0, -0x5ffc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 202
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 205
    const/16 v0, -0x5ffb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 204
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    .line 207
    const/16 v0, -0x5df5

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 206
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 209
    const/16 v0, -0x5df4

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 208
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 211
    const/16 v0, -0x5df2

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 210
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 213
    const/16 v0, -0x5df1

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 212
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 215
    const/16 v0, -0x5df0

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 214
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 217
    const/16 v0, -0x5dec

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 216
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 219
    const/16 v0, -0x5deb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 218
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 221
    const/16 v0, -0x5de9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 220
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 223
    const/16 v0, -0x5d00

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 222
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 225
    const/16 v0, -0x5cff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 224
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 227
    const/16 v0, -0x5cfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 226
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 229
    const/16 v0, -0x5bff

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 228
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 231
    const/16 v0, -0x5bfe

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 230
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 233
    const/16 v0, -0x5bfd

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 232
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 235
    const/16 v0, -0x5bfc

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 234
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 237
    const/16 v0, -0x5bfb

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 236
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 239
    const/16 v0, -0x5bfa

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 238
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 241
    const/16 v0, -0x5bf9

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 240
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 243
    const/16 v0, -0x5bf8

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 242
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    .line 245
    const/16 v0, -0x5bf7

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 244
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    .line 247
    const/16 v0, -0x5bf6

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 246
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 249
    const/16 v0, -0x5bf5

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 248
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 251
    const/16 v0, -0x5bf4

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 250
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 253
    const/16 v0, -0x5be0

    invoke-static {v1, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 252
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 256
    invoke-static {v2, v3}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 255
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 258
    invoke-static {v2, v4}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 257
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 260
    invoke-static {v2, v1}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 259
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 262
    invoke-static {v2, v5}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 261
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 264
    invoke-static {v2, v2}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 263
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 266
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 265
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 268
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 267
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 270
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 269
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 272
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 271
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 274
    const/16 v0, 0x9

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 273
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 276
    const/16 v0, 0xa

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 275
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 278
    const/16 v0, 0xb

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 277
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 280
    const/16 v0, 0xc

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 279
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 282
    const/16 v0, 0xd

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 281
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 284
    const/16 v0, 0xe

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 283
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 286
    const/16 v0, 0xf

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 285
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 288
    const/16 v0, 0x10

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 287
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 290
    const/16 v0, 0x11

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 289
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 292
    const/16 v0, 0x12

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 291
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 294
    const/16 v0, 0x13

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 293
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 296
    const/16 v0, 0x14

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 295
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 298
    const/16 v0, 0x15

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 297
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE_REF:I

    .line 300
    const/16 v0, 0x16

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 299
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LONGITUDE:I

    .line 302
    const/16 v0, 0x17

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 301
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 304
    const/16 v0, 0x18

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 303
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 306
    const/16 v0, 0x19

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 305
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 308
    const/16 v0, 0x1a

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 307
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 310
    const/16 v0, 0x1b

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 309
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 312
    const/16 v0, 0x1c

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 311
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 314
    const/16 v0, 0x1d

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 313
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 316
    const/16 v0, 0x1e

    invoke-static {v2, v0}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 315
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 319
    invoke-static {v5, v4}, Lcom/android/mms/exif/ExifInterface;->defineTag(IS)I

    move-result v0

    .line 318
    sput v0, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    .line 325
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    .line 327
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 328
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 329
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    .line 339
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 340
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sBannedDefines:Ljava/util/HashSet;

    sget v1, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    invoke-static {v1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 711
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    sput-object v0, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    new-instance v0, Lcom/android/mms/exif/ExifData;

    sget-object v1, Lcom/android/mms/exif/ExifInterface;->DEFAULT_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {v0, v1}, Lcom/android/mms/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    .line 1949
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mDateTimeStampFormat:Ljava/text/DateFormat;

    .line 1950
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy:MM:dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    .line 1952
    const-string/jumbo v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1951
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSTimeStampCalendar:Ljava/util/Calendar;

    .line 2062
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 714
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mGPSDateStampFormat:Ljava/text/DateFormat;

    const-string/jumbo v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 715
    return-void
.end method

.method public static defineTag(IS)I
    .locals 2

    .prologue
    .line 348
    const v0, 0xffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method protected static getAllowedIfdFlagsFromInfo(I)I
    .locals 1

    .prologue
    .line 2347
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method protected static getFlagsFromAllowedIfds([I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 2383
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 2384
    :cond_0
    return v2

    .line 2387
    :cond_1
    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v4

    move v3, v2

    move v0, v2

    .line 2388
    :goto_0
    const/4 v1, 0x5

    if-ge v3, v1, :cond_4

    .line 2389
    array-length v5, p0

    move v1, v2

    :goto_1
    if-ge v1, v5, :cond_2

    aget v6, p0, v1

    .line 2390
    aget v7, v4, v3

    if-ne v7, v6, :cond_3

    .line 2391
    const/4 v1, 0x1

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    .line 2388
    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    .line 2389
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2396
    :cond_4
    return v0
.end method

.method public static getRotationForOrientationValue(S)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1883
    packed-switch p0, :pswitch_data_0

    .line 1893
    :pswitch_0
    return v0

    .line 1885
    :pswitch_1
    return v0

    .line 1887
    :pswitch_2
    const/16 v0, 0x5a

    return v0

    .line 1889
    :pswitch_3
    const/16 v0, 0xb4

    return v0

    .line 1891
    :pswitch_4
    const/16 v0, 0x10e

    return v0

    .line 1883
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public static getTrueIfd(I)I
    .locals 1

    .prologue
    .line 363
    ushr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static getTrueTagKey(I)S
    .locals 1

    .prologue
    .line 356
    int-to-short v0, p0

    return v0
.end method

.method private initTagInfo()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000

    const/high16 v7, 0x70000

    const/high16 v6, 0x50000

    const/high16 v5, 0x30000

    const/high16 v4, 0x20000

    .line 2081
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2080
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 2083
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2084
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    .line 2085
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2084
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2086
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_WIDTH:I

    .line 2087
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2086
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2088
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_LENGTH:I

    .line 2089
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2088
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2090
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_BITS_PER_SAMPLE:I

    .line 2091
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x3

    .line 2090
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2092
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSION:I

    .line 2093
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2092
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2094
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PHOTOMETRIC_INTERPRETATION:I

    .line 2095
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2094
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2096
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ORIENTATION:I

    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2098
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SAMPLES_PER_PIXEL:I

    .line 2099
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2098
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2100
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PLANAR_CONFIGURATION:I

    .line 2101
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2100
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2102
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_SUB_SAMPLING:I

    .line 2103
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    .line 2102
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2104
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_POSITIONING:I

    .line 2105
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2104
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2106
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_X_RESOLUTION:I

    .line 2107
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2106
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2108
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_RESOLUTION:I

    .line 2109
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2108
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2110
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_RESOLUTION_UNIT:I

    .line 2111
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2110
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2112
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_OFFSETS:I

    .line 2113
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    .line 2112
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2114
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ROWS_PER_STRIP:I

    .line 2115
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2114
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2116
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I

    .line 2117
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x0

    .line 2116
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2118
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_TRANSFER_FUNCTION:I

    .line 2119
    or-int v3, v0, v5

    or-int/lit16 v3, v3, 0x300

    .line 2118
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2120
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_POINT:I

    .line 2121
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x2

    .line 2120
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2122
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PRIMARY_CHROMATICITIES:I

    .line 2123
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    .line 2122
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2124
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_Y_CB_CR_COEFFICIENTS:I

    .line 2125
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    .line 2124
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2126
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_REFERENCE_BLACK_WHITE:I

    .line 2127
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x6

    .line 2126
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2128
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME:I

    .line 2129
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2128
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2130
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_DESCRIPTION:I

    .line 2131
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2130
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2132
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKE:I

    .line 2133
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2132
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2134
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MODEL:I

    .line 2135
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2134
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2136
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SOFTWARE:I

    .line 2137
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2136
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2138
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ARTIST:I

    .line 2139
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2138
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2140
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COPYRIGHT:I

    .line 2141
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2140
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2142
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_IFD:I

    .line 2143
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2142
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2144
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IFD:I

    .line 2145
    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    .line 2144
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2147
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2148
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2150
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2151
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I

    .line 2152
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2151
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2153
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I

    .line 2154
    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    .line 2153
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2156
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2157
    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2159
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2160
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXIF_VERSION:I

    .line 2161
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2160
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2162
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASHPIX_VERSION:I

    .line 2163
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2162
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2164
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COLOR_SPACE:I

    .line 2165
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2164
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2166
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPONENTS_CONFIGURATION:I

    .line 2167
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x4

    .line 2166
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2168
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_COMPRESSED_BITS_PER_PIXEL:I

    .line 2169
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2168
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2170
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 2171
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2170
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2172
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 2173
    or-int v3, v0, v8

    or-int/lit8 v3, v3, 0x1

    .line 2172
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2174
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAKER_NOTE:I

    .line 2175
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2174
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2176
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_USER_COMMENT:I

    .line 2177
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2176
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2178
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_RELATED_SOUND_FILE:I

    .line 2179
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xd

    .line 2178
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2180
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_ORIGINAL:I

    .line 2181
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2180
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2182
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DATE_TIME_DIGITIZED:I

    .line 2183
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x14

    .line 2182
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2184
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME:I

    .line 2185
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2184
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2186
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_ORIGINAL:I

    .line 2187
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2186
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2188
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUB_SEC_TIME_DIGITIZED:I

    .line 2189
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2188
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2190
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_IMAGE_UNIQUE_ID:I

    .line 2191
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x21

    .line 2190
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2192
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_TIME:I

    .line 2193
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2192
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2194
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_F_NUMBER:I

    .line 2195
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2194
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2196
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_PROGRAM:I

    .line 2197
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2196
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2198
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SPECTRAL_SENSITIVITY:I

    .line 2199
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2198
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2200
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_ISO_SPEED_RATINGS:I

    .line 2201
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    .line 2200
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2202
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_OECF:I

    .line 2203
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2202
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2204
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SHUTTER_SPEED_VALUE:I

    .line 2205
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2204
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2206
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_APERTURE_VALUE:I

    .line 2207
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2206
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2208
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_BRIGHTNESS_VALUE:I

    .line 2209
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2208
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2210
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_BIAS_VALUE:I

    .line 2211
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2210
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2212
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_MAX_APERTURE_VALUE:I

    .line 2213
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2212
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2214
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE:I

    .line 2215
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2214
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2216
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_METERING_MODE:I

    .line 2217
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2216
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2218
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_LIGHT_SOURCE:I

    .line 2219
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2218
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2220
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH:I

    .line 2221
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2220
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2222
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH:I

    .line 2223
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2222
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2224
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_AREA:I

    .line 2225
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x0

    .line 2224
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2226
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FLASH_ENERGY:I

    .line 2227
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2226
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2228
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SPATIAL_FREQUENCY_RESPONSE:I

    .line 2229
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2228
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2230
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_X_RESOLUTION:I

    .line 2231
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2230
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2232
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_Y_RESOLUTION:I

    .line 2233
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2232
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2234
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_PLANE_RESOLUTION_UNIT:I

    .line 2235
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2234
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2236
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_LOCATION:I

    .line 2237
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x2

    .line 2236
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2238
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_INDEX:I

    .line 2239
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2238
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2240
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SENSING_METHOD:I

    .line 2241
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2240
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2242
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FILE_SOURCE:I

    .line 2243
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    .line 2242
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2244
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_TYPE:I

    .line 2245
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x1

    .line 2244
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2246
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CFA_PATTERN:I

    .line 2247
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2246
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2248
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CUSTOM_RENDERED:I

    .line 2249
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2248
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2250
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_EXPOSURE_MODE:I

    .line 2251
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2250
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2252
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_WHITE_BALANCE:I

    .line 2253
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2252
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2254
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DIGITAL_ZOOM_RATIO:I

    .line 2255
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2254
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2256
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_FOCAL_LENGTH_IN_35_MM_FILE:I

    .line 2257
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2256
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2258
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SCENE_CAPTURE_TYPE:I

    .line 2259
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2258
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2260
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GAIN_CONTROL:I

    .line 2261
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2260
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2262
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_CONTRAST:I

    .line 2263
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2262
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2264
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SATURATION:I

    .line 2265
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2264
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2266
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SHARPNESS:I

    .line 2267
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2266
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2268
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_DEVICE_SETTING_DESCRIPTION:I

    .line 2269
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2268
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2270
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_SUBJECT_DISTANCE_RANGE:I

    .line 2271
    or-int v3, v0, v5

    or-int/lit8 v3, v3, 0x1

    .line 2270
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2272
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I

    or-int/2addr v0, v8

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2275
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2276
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2278
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2279
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_VERSION_ID:I

    .line 2280
    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x4

    .line 2279
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2281
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE_REF:I

    .line 2282
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2281
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2283
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE_REF:I

    .line 2284
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2283
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2285
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LATITUDE:I

    .line 2286
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    .line 2285
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2287
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_LONGITUDE:I

    .line 2288
    const/high16 v3, 0xa0000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x3

    .line 2287
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2289
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE_REF:I

    .line 2290
    const/high16 v3, 0x10000

    or-int/2addr v3, v0

    or-int/lit8 v3, v3, 0x1

    .line 2289
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2291
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_ALTITUDE:I

    .line 2292
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2291
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2293
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TIME_STAMP:I

    .line 2294
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x3

    .line 2293
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2295
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SATTELLITES:I

    .line 2296
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2295
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2297
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_STATUS:I

    .line 2298
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2297
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2299
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MEASURE_MODE:I

    .line 2300
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2299
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2301
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DOP:I

    .line 2302
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2301
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2303
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED_REF:I

    .line 2304
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2303
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2305
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_SPEED:I

    .line 2306
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2305
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2307
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK_REF:I

    .line 2308
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2307
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2309
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_TRACK:I

    .line 2310
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2309
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2311
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    .line 2312
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2311
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2313
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    .line 2314
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2313
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_MAP_DATUM:I

    .line 2316
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x0

    .line 2315
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2317
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE_REF:I

    .line 2318
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2317
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2319
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_LATITUDE:I

    .line 2320
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2319
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2321
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING_REF:I

    .line 2322
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2321
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2323
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_BEARING:I

    .line 2324
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2323
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2325
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE_REF:I

    .line 2326
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0x2

    .line 2325
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2327
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DEST_DISTANCE:I

    .line 2328
    or-int v3, v0, v6

    or-int/lit8 v3, v3, 0x1

    .line 2327
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2329
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_PROCESSING_METHOD:I

    .line 2330
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2329
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2331
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_AREA_INFORMATION:I

    .line 2332
    or-int v3, v0, v7

    or-int/lit8 v3, v3, 0x0

    .line 2331
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2333
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DATE_STAMP:I

    .line 2334
    or-int v3, v0, v4

    or-int/lit8 v3, v3, 0xb

    .line 2333
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 2335
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_GPS_DIFFERENTIAL:I

    .line 2336
    or-int/2addr v0, v5

    or-int/lit8 v0, v0, 0xb

    .line 2335
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2338
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2339
    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2341
    invoke-static {v0}, Lcom/android/mms/exif/ExifInterface;->getFlagsFromAllowedIfds([I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 2342
    iget-object v1, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    sget v2, Lcom/android/mms/exif/ExifInterface;->TAG_INTEROPERABILITY_INDEX:I

    or-int/2addr v0, v4

    or-int/lit8 v0, v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2344
    return-void
.end method

.method protected static isIfdAllowed(II)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2372
    invoke-static {}, Lcom/android/mms/exif/IfdData;->getIfds()[I

    move-result-object v2

    .line 2373
    invoke-static {p0}, Lcom/android/mms/exif/ExifInterface;->getAllowedIfdFlagsFromInfo(I)I

    move-result v3

    move v0, v1

    .line 2374
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 2375
    aget v4, v2, v0

    if-ne p1, v4, :cond_0

    shr-int v4, v3, v0

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_0

    .line 2376
    return v5

    .line 2374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2379
    :cond_1
    return v1
.end method

.method protected static isOffsetTag(S)Z
    .locals 2

    .prologue
    .line 1483
    sget-object v0, Lcom/android/mms/exif/ExifInterface;->sOffsetTags:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getDefinedTagDefaultIfd(I)I
    .locals 1

    .prologue
    .line 1449
    invoke-virtual {p0}, Lcom/android/mms/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1450
    if-nez v0, :cond_0

    .line 1451
    const/4 v0, -0x1

    return v0

    .line 1453
    :cond_0
    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueIfd(I)I

    move-result v0

    return v0
.end method

.method public getTag(II)Lcom/android/mms/exif/ExifTag;
    .locals 2

    .prologue
    .line 1177
    invoke-static {p2}, Lcom/android/mms/exif/ExifTag;->isValidIfd(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    const/4 v0, 0x0

    return-object v0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    invoke-static {p1}, Lcom/android/mms/exif/ExifInterface;->getTrueTagKey(I)S

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/mms/exif/ExifData;->getTag(SI)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    return-object v0
.end method

.method protected getTagInfo()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 2066
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    .line 2067
    invoke-direct {p0}, Lcom/android/mms/exif/ExifInterface;->initTagInfo()V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mTagInfo:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getTagIntValue(I)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1276
    invoke-virtual {p0, p1}, Lcom/android/mms/exif/ExifInterface;->getDefinedTagDefaultIfd(I)I

    move-result v0

    .line 1277
    invoke-virtual {p0, p1, v0}, Lcom/android/mms/exif/ExifInterface;->getTagIntValue(II)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTagIntValue(II)Ljava/lang/Integer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1265
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTagIntValues(II)[I

    move-result-object v0

    .line 1266
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 1267
    :cond_0
    return-object v3

    .line 1269
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    aget v0, v0, v2

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method public getTagIntValues(II)[I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/exif/ExifInterface;->getTag(II)Lcom/android/mms/exif/ExifTag;

    move-result-object v0

    .line 1342
    if-nez v0, :cond_0

    .line 1343
    return-object v1

    .line 1345
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/exif/ExifTag;->getValueAsInts()[I

    move-result-object v0

    return-object v0
.end method

.method public readExif(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 736
    if-nez p1, :cond_0

    .line 737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/mms/exif/ExifReader;

    invoke-direct {v0, p0}, Lcom/android/mms/exif/ExifReader;-><init>(Lcom/android/mms/exif/ExifInterface;)V

    invoke-virtual {v0, p1}, Lcom/android/mms/exif/ExifReader;->read(Ljava/io/InputStream;)Lcom/android/mms/exif/ExifData;
    :try_end_0
    .catch Lcom/android/mms/exif/ExifInvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 745
    iput-object v0, p0, Lcom/android/mms/exif/ExifInterface;->mData:Lcom/android/mms/exif/ExifData;

    .line 746
    return-void

    .line 742
    :catch_0
    move-exception v0

    .line 743
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid exif format : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
