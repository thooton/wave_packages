.class interface abstract Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LowRes"
.end annotation


# static fields
.field public static final TEMPLATE_LAST_TIME_USED:Ljava/lang/String;

.field public static final TEMPLATE_TIMES_USED:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 956
    const-string/jumbo v0, "cast(ifnull((case when (XX) <= 0 then 0 when (XX) < (YY) then (XX) else (cast((XX) as int) / (YY)) * (YY) end), 0) as int)"

    .line 959
    const-string/jumbo v1, "YY"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 956
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 955
    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->TEMPLATE_TIMES_USED:Ljava/lang/String;

    .line 967
    const-string/jumbo v0, "cast((cast((XX) as int) / (YY)) * (YY) as int)"

    .line 968
    const-string/jumbo v1, "YY"

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 967
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 966
    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->TEMPLATE_LAST_TIME_USED:Ljava/lang/String;

    .line 935
    return-void
.end method

.method public static getLastTimeUsedExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 983
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->TEMPLATE_LAST_TIME_USED:Ljava/lang/String;

    const-string/jumbo v1, "XX"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimesUsedExpression(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 975
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$LowRes;->TEMPLATE_TIMES_USED:Ljava/lang/String;

    const-string/jumbo v1, "XX"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
