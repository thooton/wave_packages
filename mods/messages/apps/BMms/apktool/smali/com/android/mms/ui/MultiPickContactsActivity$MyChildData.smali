.class Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;
.super Ljava/lang/Object;
.source "MultiPickContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyChildData"
.end annotation


# instance fields
.field mChildPosition:I

.field mContactId:J

.field mCount:I

.field mMimeType:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactsActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/MultiPickContactsActivity;JI)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->this$0:Lcom/android/mms/ui/MultiPickContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iput-wide p2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    .line 499
    iput p4, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    .line 500
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 504
    instance-of v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    if-eqz v0, :cond_0

    .line 505
    check-cast p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;

    .line 506
    iget-wide v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    iget-wide v2, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mContactId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 507
    iget v0, p1, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    iget v1, p0, Lcom/android/mms/ui/MultiPickContactsActivity$MyChildData;->mChildPosition:I

    if-ne v0, v1, :cond_0

    .line 508
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
