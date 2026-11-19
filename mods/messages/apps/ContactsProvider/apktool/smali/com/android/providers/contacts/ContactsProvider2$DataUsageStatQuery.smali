.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$DataUsageStatQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataUsageStatQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9966
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "stat_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DataUsageStatQuery;->COLUMNS:[Ljava/lang/String;

    .line 9964
    return-void
.end method
