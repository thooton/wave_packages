.class Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementTimeImpl;
.source "SmilMediaElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilMediaElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilMediaElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    .line 42
    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementTimeImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 1
    return-void
.end method

.method private createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 46
    const-string/jumbo v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 47
    invoke-interface {v0, p1, v2, v2}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 54
    return-object v0
.end method

.method private createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 60
    const-string/jumbo v1, "Event"

    invoke-interface {v0, v1}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/events/EventImpl;

    .line 61
    invoke-virtual {v0, p1, v2, v2, p2}, Lcom/android/mms/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZI)V

    .line 68
    return-object v0
.end method


# virtual methods
.method public beginElement()Z
    .locals 2

    .prologue
    .line 72
    const-string/jumbo v0, "SmilMediaStart"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public endElement()Z
    .locals 2

    .prologue
    .line 78
    const-string/jumbo v0, "SmilMediaEnd"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public getDur()F
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeImpl;->getDur()F

    move-result v0

    .line 101
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 104
    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 115
    :cond_1
    :goto_0
    return v0

    .line 108
    :cond_2
    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "img"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v1

    .line 110
    goto :goto_0

    .line 112
    :cond_4
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Unknown media type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lcom/android/mms/dom/smil/SmilParElementImpl;

    iget-object v0, v0, Lcom/android/mms/dom/smil/SmilParElementImpl;->mParTimeContainer:Lorg/w3c/dom/smil/ElementParallelTimeContainer;

    return-object v0

    .line 123
    :cond_0
    return-object v1
.end method

.method public pauseElement()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "SmilMediaPause"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 91
    return-void
.end method

.method public resumeElement()V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "SmilMediaStart"

    invoke-direct {p0, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 86
    return-void
.end method

.method public seekElement(F)V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "SmilMediaSeek"

    float-to-int v1, p1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->createEvent(Ljava/lang/String;I)Lorg/w3c/dom/events/Event;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/android/mms/dom/smil/SmilMediaElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilMediaElementImpl;

    invoke-virtual {v1, v0}, Lcom/android/mms/dom/smil/SmilMediaElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 96
    return-void
.end method
