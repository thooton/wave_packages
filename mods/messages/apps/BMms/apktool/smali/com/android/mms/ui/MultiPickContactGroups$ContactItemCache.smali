.class final Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;
.super Ljava/lang/Object;
.source "MultiPickContactGroups.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MultiPickContactGroups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactItemCache"
.end annotation


# instance fields
.field group_count:Ljava/lang/String;

.field group_id:J

.field group_title:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/ui/MultiPickContactGroups;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/MultiPickContactGroups;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;->this$0:Lcom/android/mms/ui/MultiPickContactGroups;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/MultiPickContactGroups;Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiPickContactGroups$ContactItemCache;-><init>(Lcom/android/mms/ui/MultiPickContactGroups;)V

    return-void
.end method
