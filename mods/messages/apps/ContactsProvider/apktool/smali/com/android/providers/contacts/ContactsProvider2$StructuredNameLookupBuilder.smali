.class Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;
.super Lcom/android/providers/contacts/NameLookupBuilder;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StructuredNameLookupBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/ContactsProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 0

    .prologue
    .line 9523
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    .line 9524
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/NameLookupBuilder;-><init>(Lcom/android/providers/contacts/NameSplitter;)V

    .line 9525
    return-void
.end method


# virtual methods
.method protected getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 9535
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->-get0(Lcom/android/providers/contacts/ContactsProvider2;)Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/aggregation/util/CommonNicknameCache;->getCommonNicknameClusters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected insertNameLookup(JJILjava/lang/String;)V
    .locals 9

    .prologue
    .line 9530
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$StructuredNameLookupBuilder;->this$0:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-static {v0}, Lcom/android/providers/contacts/ContactsProvider2;->-get2(Lcom/android/providers/contacts/ContactsProvider2;)Ljava/lang/ThreadLocal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 9531
    return-void
.end method
