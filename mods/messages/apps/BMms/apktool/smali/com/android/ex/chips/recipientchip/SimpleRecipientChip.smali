.class Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;
.super Ljava/lang/Object;
.source "SimpleRecipientChip.java"

# interfaces
.implements Lcom/android/ex/chips/recipientchip/BaseRecipientChip;


# instance fields
.field private final mContactId:J

.field private final mDataId:J

.field private final mDirectoryId:Ljava/lang/Long;

.field private final mDisplay:Ljava/lang/CharSequence;

.field private final mEntry:Lcom/android/ex/chips/RecipientEntry;

.field private final mLookupKey:Ljava/lang/String;

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mSelected:Z

.field private final mValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/RecipientEntry;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mSelected:Z

    .line 43
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mDisplay:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mValue:Ljava/lang/CharSequence;

    .line 45
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mContactId:J

    .line 46
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDirectoryId()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mDirectoryId:Ljava/lang/Long;

    .line 47
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mLookupKey:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/android/ex/chips/RecipientEntry;->getDataId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mDataId:J

    .line 49
    iput-object p1, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    .line 50
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mContactId:J

    return-wide v0
.end method

.method public getEntry()Lcom/android/ex/chips/RecipientEntry;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    return-object v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mEntry:Lcom/android/ex/chips/RecipientEntry;

    invoke-virtual {v0}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mSelected:Z

    return v0
.end method

.method public setOriginalText(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iput-object p1, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mOriginalText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mSelected:Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mDisplay:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/ex/chips/recipientchip/SimpleRecipientChip;->mValue:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
