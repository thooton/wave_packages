.class public final Lcom/nuance/flext9_OEM/input/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final ENABLED_BIGRAM_SETTING:Z = false

.field public static final ENABLED_HARDKEYBOARD_SUPPORT:Z = true

.field public static final ENABLED_PERFORMANCE_PROFILING:Z

.field public static final ENABLED_SINGLE_TAP_RESELECTION_SETTING:Z

.field public static final ENABLED_TRACE_FILTER_SETTING:Z

.field public static final SHOW_CENTER_KEY_POSITION:Z

.field public static final SUPPORT_HARDKEYBOARD_ONLY:Z

.field public static final USER_STUDY_LOG:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public static trace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method
