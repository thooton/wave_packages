.class interface abstract Lcom/android/providers/contacts/ContactsProvider2$AggregationExceptionQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AggregationExceptionQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5099
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 5100
    const-string/jumbo v1, "raw_contact_id1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 5101
    const-string/jumbo v1, "raw_contact_id2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5099
    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$AggregationExceptionQuery;->COLUMNS:[Ljava/lang/String;

    .line 5097
    return-void
.end method
