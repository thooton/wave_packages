.class public Lcom/android/providers/contacts/ShadowCallLogProvider;
.super Lcom/android/providers/contacts/CallLogProvider;
.source "ShadowCallLogProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/providers/contacts/CallLogProvider;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDatabaseHelper(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;
    .locals 1

    .prologue
    .line 23
    invoke-static {p1}, Lcom/android/providers/contacts/CallLogDatabaseHelper;->getInstanceForShadow(Landroid/content/Context;)Lcom/android/providers/contacts/CallLogDatabaseHelper;

    move-result-object v0

    return-object v0
.end method

.method protected isShadow()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
