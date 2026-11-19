.class Lcom/android/providers/contacts/ContactsDatabaseHelper$3;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;->validateProjection(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field final synthetic val$projection:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object p2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;->val$projection:[Ljava/lang/String;

    .line 5073
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5076
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;->val$projection:[Ljava/lang/String;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 5077
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$3;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->-wrap0(Lcom/android/providers/contacts/ContactsDatabaseHelper;)Lcom/android/providers/contacts/sqlite/SqlChecker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/providers/contacts/sqlite/SqlChecker;->ensureSingleTokenOnly(Ljava/lang/String;)V

    .line 5076
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5079
    :cond_0
    return-void
.end method
