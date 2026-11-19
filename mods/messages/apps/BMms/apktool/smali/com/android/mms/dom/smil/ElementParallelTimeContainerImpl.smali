.class public abstract Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.super Lcom/android/mms/dom/smil/ElementTimeContainerImpl;
.source "ElementParallelTimeContainerImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/ElementParallelTimeContainer;


# direct methods
.method constructor <init>(Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    .line 47
    return-void
.end method


# virtual methods
.method public getActiveChildrenAt(F)Lorg/w3c/dom/NodeList;
    .locals 18

    .prologue
    .line 115
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 117
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 118
    const/4 v2, 0x0

    move v9, v2

    :goto_0
    if-ge v9, v12, :cond_5

    .line 119
    const-wide/16 v6, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/ElementTime;

    .line 123
    invoke-interface {v2}, Lorg/w3c/dom/smil/ElementTime;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v13

    .line 124
    invoke-interface {v13}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v14

    .line 125
    const/4 v3, 0x0

    move v8, v3

    move v3, v4

    :goto_1
    if-ge v8, v14, :cond_1

    .line 126
    invoke-interface {v13, v8}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 127
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 128
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v16

    .line 129
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v15, v4, v16

    if-gtz v15, :cond_0

    cmpl-double v15, v4, v6

    if-ltz v15, :cond_0

    .line 131
    const/4 v3, 0x1

    .line 125
    :goto_2
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-wide v6, v4

    goto :goto_1

    :cond_0
    move-wide v4, v6

    .line 129
    goto :goto_2

    .line 136
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v13

    .line 137
    invoke-interface {v13}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v14

    .line 138
    const/4 v4, 0x0

    move v8, v4

    :goto_3
    if-ge v8, v14, :cond_3

    .line 139
    invoke-interface {v13, v8}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v4

    .line 140
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 141
    invoke-interface {v4}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v4

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v4, v4, v16

    .line 142
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v16, v0

    cmpg-double v15, v4, v16

    if-gtz v15, :cond_2

    cmpl-double v15, v4, v6

    if-ltz v15, :cond_2

    .line 144
    const/4 v3, 0x0

    .line 138
    :goto_4
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move-wide v6, v4

    goto :goto_3

    :cond_2
    move-wide v4, v6

    .line 142
    goto :goto_4

    .line 149
    :cond_3
    if-eqz v3, :cond_4

    .line 150
    check-cast v2, Lorg/w3c/dom/Node;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_4
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_0

    .line 153
    :cond_5
    new-instance v2, Lcom/android/mms/dom/NodeListImpl;

    invoke-direct {v2, v10}, Lcom/android/mms/dom/NodeListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v2

    :cond_6
    move-wide v4, v6

    goto :goto_4

    :cond_7
    move-wide v4, v6

    goto :goto_2
.end method

.method public getDur()F
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementTimeContainerImpl;->getDur()F

    move-result v0

    .line 79
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getImplicitDuration()F

    move-result v0

    .line 82
    :cond_0
    return v0
.end method

.method public getEndSync()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "endsync"

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 52
    :cond_0
    const-string/jumbo v0, "last"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "last"

    return-object v0

    .line 55
    :cond_1
    const-string/jumbo v1, "first"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "last"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 56
    const-string/jumbo v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-nez v1, :cond_2

    .line 56
    const-string/jumbo v1, "media"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 57
    :cond_2
    return-object v0

    .line 62
    :cond_3
    const-string/jumbo v0, "last"

    invoke-virtual {p0, v0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->setEndSync(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "last"

    return-object v0
.end method

.method public getImplicitDuration()F
    .locals 10

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v2, 0x0

    .line 87
    const-string/jumbo v0, "last"

    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getEndSync()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getTimeChildren()Lorg/w3c/dom/NodeList;

    move-result-object v6

    move v1, v2

    move v3, v4

    .line 89
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 90
    invoke-interface {v6, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/ElementTime;

    .line 91
    invoke-interface {v0}, Lorg/w3c/dom/smil/ElementTime;->getEnd()Lorg/w3c/dom/smil/TimeList;

    move-result-object v7

    move v0, v2

    .line 92
    :goto_1
    invoke-interface {v7}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 93
    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v5

    .line 94
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getTimeType()S

    move-result v8

    if-nez v8, :cond_0

    .line 96
    return v4

    .line 98
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolved()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 99
    invoke-interface {v5}, Lorg/w3c/dom/smil/Time;->getResolvedOffset()D

    move-result-wide v8

    double-to-float v5, v8

    .line 100
    cmpl-float v8, v5, v3

    if-lez v8, :cond_1

    move v3, v5

    .line 92
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v3, v4

    .line 106
    :cond_4
    return v3
.end method

.method public setEndSync(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 67
    const-string/jumbo v0, "first"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "last"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "all"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    const-string/jumbo v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    const-string/jumbo v1, "endsync"

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 71
    :cond_1
    new-instance v0, Lorg/w3c/dom/DOMException;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported endsync value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method
