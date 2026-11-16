.class Lcom/android/mms/ui/RecipientsEditor$1;
.super Ljava/lang/Object;
.source "RecipientsEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RecipientsEditor;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAffected:[Landroid/text/Annotation;

.field final synthetic this$0:Lcom/android/mms/ui/RecipientsEditor;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RecipientsEditor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 137
    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iput-object v4, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 141
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 114
    check-cast p1, Landroid/text/Spanned;

    add-int v0, p2, p3

    .line 115
    const-class v1, Landroid/text/Annotation;

    .line 114
    invoke-interface {p1, p2, v0, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Annotation;

    iput-object v0, p0, Lcom/android/mms/ui/RecipientsEditor$1;->mAffected:[Landroid/text/Annotation;

    .line 116
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    .prologue
    .line 122
    if-nez p3, :cond_1

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 123
    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 124
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 125
    const/16 v1, 0x2c

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/RecipientsEditor$1;->this$0:Lcom/android/mms/ui/RecipientsEditor;

    invoke-static {v1, v0}, Lcom/android/mms/ui/RecipientsEditor;->-set0(Lcom/android/mms/ui/RecipientsEditor;C)C

    .line 131
    :cond_1
    return-void
.end method
