.class Lcom/android/providers/contacts/ContactsDatabaseHelper$2;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;->validateContentValues(Ljava/lang/String;Landroid/content/ContentValues;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/content/ContentValues;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object p2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;->val$values:Landroid/content/ContentValues;

    .line 5057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5060
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;->val$values:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5061
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$2;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->-wrap0(Lcom/android/providers/contacts/ContactsDatabaseHelper;)Lcom/android/providers/contacts/sqlite/SqlChecker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/providers/contacts/sqlite/SqlChecker;->ensureSingleTokenOnly(Ljava/lang/String;)V

    goto :goto_0

    .line 5063
    :cond_0
    return-void
.end method
