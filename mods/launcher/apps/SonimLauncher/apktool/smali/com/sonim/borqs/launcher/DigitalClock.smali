.class public Lcom/sonim/borqs/launcher/DigitalClock;
.super Landroid/widget/RelativeLayout;
.source "DigitalClock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonim/borqs/launcher/DigitalClock$AmPm;,
        Lcom/sonim/borqs/launcher/DigitalClock$FormatChangeObserver;,
        Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;
    }
.end annotation


# instance fields
.field private mAmPm:Lcom/sonim/borqs/launcher/DigitalClock$AmPm;

.field private mCalendar:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime:Landroid/widget/TextView;

.field private mTimeZone:Ljava/lang/String;

.field private mdate:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonim/borqs/launcher/DigitalClock;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonim/borqs/launcher/DigitalClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonim/borqs/launcher/DigitalClock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonim/borqs/launcher/DigitalClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonim/borqs/launcher/DigitalClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonim/borqs/launcher/DigitalClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->setDateFormat()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonim/borqs/launcher/DigitalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mContext:Landroid/content/Context;

    .line 166
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    if-eqz p1, :cond_0

    .line 210
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    .line 214
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private getTimeFont()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 259
    return-object v0
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const-string/jumbo v0, "kk:mm"

    .line 250
    :goto_0
    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormat:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mAmPm:Lcom/sonim/borqs/launcher/DigitalClock$AmPm;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormat:Ljava/lang/String;

    const-string/jumbo v2, "hh:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->setShowAmPm(Z)V

    .line 253
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, "hh:mm"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 179
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 182
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/DigitalClock$TimeChangedReceiver;-><init>(Lcom/sonim/borqs/launcher/DigitalClock;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 184
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    const-string/jumbo v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string/jumbo v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Lcom/sonim/borqs/launcher/DigitalClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/sonim/borqs/launcher/DigitalClock$FormatChangeObserver;-><init>(Lcom/sonim/borqs/launcher/DigitalClock;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 197
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    .line 197
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonim/borqs/launcher/DigitalClock;->createTime(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->getTimeFont()Landroid/graphics/Typeface;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 203
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mdate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 204
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->updateTime()V

    .line 205
    invoke-virtual {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->updateDate()V

    .line 206
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 222
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 226
    :cond_1
    iput-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 227
    iput-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 228
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 171
    const v0, 0x7f0e0019

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTime:Landroid/widget/TextView;

    .line 172
    const v0, 0x7f0e001b

    invoke-virtual {p0, v0}, Lcom/sonim/borqs/launcher/DigitalClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mdate:Landroid/widget/TextView;

    .line 173
    new-instance v0, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;

    invoke-direct {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->getTimeFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mAmPm:Lcom/sonim/borqs/launcher/DigitalClock$AmPm;

    .line 174
    invoke-direct {p0}, Lcom/sonim/borqs/launcher/DigitalClock;->setDateFormat()V

    .line 175
    return-void
.end method

.method public updateDate()V
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mdate:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mdate:Landroid/widget/TextView;

    const-string/jumbo v1, "EE, MMMM d"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :cond_0
    return-void
.end method

.method public updateTime()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 236
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 237
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 238
    iget-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mTime:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v1, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mAmPm:Lcom/sonim/borqs/launcher/DigitalClock$AmPm;

    iget-object v2, p0, Lcom/sonim/borqs/launcher/DigitalClock;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sonim/borqs/launcher/DigitalClock$AmPm;->setIsMorning(Z)V

    .line 240
    return-void
.end method
