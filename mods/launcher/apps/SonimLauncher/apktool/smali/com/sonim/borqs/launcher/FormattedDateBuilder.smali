.class public Lcom/sonim/borqs/launcher/FormattedDateBuilder;
.super Ljava/lang/Object;
.source "FormattedDateBuilder.java"


# instance fields
.field private final dateFormatter:Ljava/util/Formatter;

.field private final mContext:Landroid/content/Context;

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    .line 25
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    .line 26
    return-void
.end method

.method private formatDateTime(JI)Ljava/lang/CharSequence;
    .locals 7

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 57
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->dateFormatter:Ljava/util/Formatter;

    move-wide v2, p1

    move-wide v4, p1

    move v6, p3

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    .line 58
    iget-object v0, p0, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isCurrentYear(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 50
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 51
    invoke-virtual {v2, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 52
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public formatShortDateTime(J)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 39
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->formatDateTime(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 41
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->isCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    const v0, 0x10010

    invoke-direct {p0, p1, p2, v0}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->formatDateTime(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 44
    :cond_1
    const v0, 0x20010

    invoke-direct {p0, p1, p2, v0}, Lcom/sonim/borqs/launcher/FormattedDateBuilder;->formatDateTime(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
