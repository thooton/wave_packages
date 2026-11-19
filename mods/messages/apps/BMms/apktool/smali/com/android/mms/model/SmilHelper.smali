.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    const-string/jumbo v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 416
    const-string/jumbo v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 417
    const-string/jumbo v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 418
    const-string/jumbo v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 419
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "par"

    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 151
    const/high16 v1, 0x41000000    # 8.0f

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 152
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 153
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    const-string/jumbo v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 426
    const-string/jumbo v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 427
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2

    .prologue
    .line 159
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 160
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 161
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 14

    .prologue
    const/high16 v13, 0x447a0000    # 1000.0f

    const/4 v6, 0x0

    .line 265
    new-instance v8, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v8}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 268
    const-string/jumbo v0, "smil"

    invoke-interface {v8, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 269
    invoke-interface {v8, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 272
    const-string/jumbo v1, "head"

    invoke-interface {v8, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 273
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 277
    const-string/jumbo v2, "layout"

    invoke-interface {v8, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 276
    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 278
    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 282
    const-string/jumbo v1, "root-layout"

    invoke-interface {v8, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 284
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 285
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v4

    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 286
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 288
    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 290
    :cond_0
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 293
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v1

    .line 294
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 295
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 296
    const-string/jumbo v3, "region"

    invoke-interface {v8, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 297
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 299
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 300
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 301
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 302
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 307
    :cond_1
    const-string/jumbo v1, "body"

    invoke-interface {v8, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 308
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 310
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 315
    invoke-static {v8}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v3

    .line 316
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v13

    invoke-interface {v3, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    move-object v1, v3

    .line 318
    check-cast v1, Lorg/w3c/dom/events/EventTarget;

    invoke-static {v1, v0}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 321
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move v5, v6

    move v7, v6

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 323
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 324
    instance-of v1, v0, Lcom/android/mms/model/TextModel;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 325
    check-cast v1, Lcom/android/mms/model/TextModel;

    .line 326
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v0, v5

    move v1, v7

    :goto_2
    move v5, v0

    move v7, v1

    goto :goto_1

    .line 332
    :cond_3
    const-string/jumbo v1, "text"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    .line 333
    check-cast v1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 336
    const-string/jumbo v12, "Text"

    .line 333
    invoke-static {v1, v9, v2, v12, v7}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v7

    move-object v1, v4

    .line 364
    :goto_3
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result v4

    .line 365
    if-eqz v4, :cond_4

    .line 366
    const-string/jumbo v12, "begin"

    div-int/lit16 v4, v4, 0x3e8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v12, v4}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    .line 369
    if-eqz v4, :cond_5

    .line 370
    int-to-float v4, v4

    div-float/2addr v4, v13

    invoke-interface {v1, v4}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 372
    :cond_5
    invoke-interface {v3, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 374
    check-cast v1, Lorg/w3c/dom/events/EventTarget;

    invoke-static {v1, v0}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move v0, v5

    move v1, v7

    goto :goto_2

    .line 338
    :cond_6
    instance-of v1, v0, Lcom/android/mms/model/ImageModel;

    if-eqz v1, :cond_7

    .line 339
    const-string/jumbo v1, "img"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    .line 340
    check-cast v1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 343
    const-string/jumbo v12, "Image"

    .line 340
    invoke-static {v1, v9, v2, v12, v5}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v5

    move-object v1, v4

    goto :goto_3

    .line 345
    :cond_7
    instance-of v1, v0, Lcom/android/mms/model/VideoModel;

    if-eqz v1, :cond_8

    .line 346
    const-string/jumbo v1, "video"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    .line 347
    check-cast v1, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    .line 350
    const-string/jumbo v12, "Image"

    .line 347
    invoke-static {v1, v9, v2, v12, v5}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v5

    move-object v1, v4

    goto :goto_3

    .line 352
    :cond_8
    instance-of v1, v0, Lcom/android/mms/model/AudioModel;

    if-eqz v1, :cond_9

    .line 353
    const-string/jumbo v1, "audio"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    goto :goto_3

    .line 354
    :cond_9
    instance-of v1, v0, Lcom/android/mms/model/VcardModel;

    if-eqz v1, :cond_a

    .line 355
    const-string/jumbo v1, "ref"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    goto :goto_3

    .line 356
    :cond_a
    instance-of v1, v0, Lcom/android/mms/model/VcalModel;

    if-eqz v1, :cond_b

    .line 357
    const-string/jumbo v1, "ref"

    invoke-static {v1, v8, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    move-object v1, v4

    goto :goto_3

    .line 359
    :cond_b
    const-string/jumbo v1, "Mms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupport media: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    move v1, v7

    .line 360
    goto/16 :goto_2

    .line 384
    :cond_c
    return-object v8
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 177
    new-instance v7, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v7}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 181
    const-string/jumbo v0, "smil"

    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 182
    const-string/jumbo v1, "xmlns"

    const-string/jumbo v2, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-interface {v7, v0}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 186
    const-string/jumbo v1, "head"

    invoke-interface {v7, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 187
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 189
    const-string/jumbo v2, "layout"

    invoke-interface {v7, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 190
    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    const-string/jumbo v1, "body"

    invoke-interface {v7, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 194
    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 195
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v2

    .line 198
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 199
    if-nez v8, :cond_0

    .line 200
    return-object v7

    .line 203
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/MmsApp;->getDrmManagerClient()Landroid/drm/DrmManagerClient;

    move-result-object v9

    move v6, v3

    move v0, v3

    move v1, v3

    .line 207
    :goto_0
    if-ge v6, v8, :cond_b

    .line 209
    if-eqz v2, :cond_1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 210
    :cond_1
    invoke-static {v7}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v0

    move v1, v3

    move-object v2, v0

    move v0, v3

    .line 215
    :cond_2
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v10

    .line 216
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/lang/String;-><init>([B)V

    .line 218
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 219
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 222
    :cond_3
    const-string/jumbo v11, "text/plain"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 223
    const-string/jumbo v11, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 222
    if-nez v11, :cond_4

    .line 224
    const-string/jumbo v11, "text/html"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 222
    if-eqz v11, :cond_6

    .line 226
    :cond_4
    const-string/jumbo v1, "text"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 225
    invoke-static {v1, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v1

    .line 227
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v1, v5

    .line 207
    :cond_5
    :goto_1
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_0

    .line 229
    :cond_6
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 231
    const-string/jumbo v0, "img"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 230
    invoke-static {v0, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 232
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 233
    goto :goto_1

    .line 234
    :cond_7
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 236
    const-string/jumbo v0, "video"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 235
    invoke-static {v0, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 237
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 238
    goto :goto_1

    .line 239
    :cond_8
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 241
    const-string/jumbo v0, "audio"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 240
    invoke-static {v0, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 242
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 243
    goto :goto_1

    .line 244
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "text/x-vCard"

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 246
    const-string/jumbo v0, "ref"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-static {v0, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 247
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 248
    goto :goto_1

    .line 249
    :cond_a
    const-string/jumbo v11, "text/x-vCalendar"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 251
    const-string/jumbo v0, "ref"

    invoke-virtual {v10}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v4

    .line 250
    invoke-static {v0, v7, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 252
    invoke-interface {v2, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    .line 253
    goto :goto_1

    .line 257
    :cond_b
    return-object v7
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 165
    const-string/jumbo v0, "&"

    const-string/jumbo v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "<"

    const-string/jumbo v2, "&lt;"

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    const-string/jumbo v1, ">"

    const-string/jumbo v2, "&gt;"

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "\""

    const-string/jumbo v2, "&quot;"

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const-string/jumbo v1, "\'"

    const-string/jumbo v2, "&apos;"

    .line 165
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 389
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 390
    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    return-object v0

    .line 394
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v1

    .line 104
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    .line 107
    const-string/jumbo v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 106
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    return-object v2

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_0

    .line 82
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 85
    :cond_0
    if-nez v0, :cond_1

    .line 87
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 90
    :cond_1
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 134
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 135
    new-instance v0, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 136
    invoke-static {v0}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 138
    :catch_2
    move-exception v0

    .line 139
    const-string/jumbo v1, "Mms"

    const-string/jumbo v2, "Failed to parse SMIL document."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 402
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 403
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 404
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 405
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 406
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0

    .prologue
    .line 117
    return-object p0
.end method
