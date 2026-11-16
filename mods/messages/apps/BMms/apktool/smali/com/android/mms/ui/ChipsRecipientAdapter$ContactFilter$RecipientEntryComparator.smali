.class Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;
.super Ljava/lang/Object;
.source "ChipsRecipientAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecipientEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/ex/chips/RecipientEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;)V
    .locals 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;->this$1:Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;->mCollator:Ljava/text/Collator;

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;->mCollator:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 177
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 186
    invoke-static {p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->isSendToDestinationContact(Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v0

    .line 188
    invoke-static {p1}, Lcom/android/mms/util/ContactRecipientEntryUtils;->isSendToDestinationContact(Lcom/android/ex/chips/RecipientEntry;)Z

    move-result v4

    .line 190
    if-eq v0, v4, :cond_1

    .line 191
    if-eqz v0, :cond_0

    .line 192
    return v1

    .line 193
    :cond_0
    if-eqz v4, :cond_1

    .line 194
    return v3

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 198
    invoke-virtual {v0, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 200
    if-eqz v0, :cond_2

    .line 201
    return v0

    .line 206
    :cond_2
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v4

    .line 207
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v6

    .line 208
    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v1

    .line 210
    :goto_0
    if-eqz v0, :cond_5

    .line 211
    return v0

    .line 209
    :cond_3
    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    .line 216
    :cond_5
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    return v1

    .line 218
    :cond_6
    invoke-virtual {p2}, Lcom/android/ex/chips/RecipientEntry;->isFirstLevel()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    return v3

    .line 221
    :cond_7
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 179
    check-cast p1, Lcom/android/ex/chips/RecipientEntry;

    check-cast p2, Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/ui/ChipsRecipientAdapter$ContactFilter$RecipientEntryComparator;->compare(Lcom/android/ex/chips/RecipientEntry;Lcom/android/ex/chips/RecipientEntry;)I

    move-result v0

    return v0
.end method
