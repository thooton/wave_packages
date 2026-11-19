.class public Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirectoryInfo"
.end annotation


# instance fields
.field accountName:Ljava/lang/String;

.field accountType:Ljava/lang/String;

.field authority:Ljava/lang/String;

.field displayName:Ljava/lang/String;

.field exportSupport:I

.field id:J

.field packageName:Ljava/lang/String;

.field photoSupport:I

.field shortcutSupport:I

.field typeResourceId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->exportSupport:I

    .line 70
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->shortcutSupport:I

    .line 71
    iput v0, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->photoSupport:I

    .line 61
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DirectoryInfo:id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-wide v2, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->id:J

    .line 74
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    const-string/jumbo v1, " packageName="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    const-string/jumbo v1, " authority="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->authority:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    const-string/jumbo v1, " accountName=***"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, " accountType="

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryInfo;->accountType:Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
