.class Lcom/android/providers/contacts/ContactsDatabaseHelper$1;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;->validateSql(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field final synthetic val$sqlPiece:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object p2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;->val$sqlPiece:Ljava/lang/String;

    .line 5044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5047
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;->this$0:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->-wrap0(Lcom/android/providers/contacts/ContactsDatabaseHelper;)Lcom/android/providers/contacts/sqlite/SqlChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper$1;->val$sqlPiece:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/sqlite/SqlChecker;->ensureNoInvalidTokens(Ljava/lang/String;)V

    .line 5048
    return-void
.end method
