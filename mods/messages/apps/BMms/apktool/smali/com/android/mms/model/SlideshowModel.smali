.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lcom/android/mms/model/IModelChangedObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field private final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectSize:I

.field private mTotalMessageSize:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 88
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 98
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 99
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 101
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 102
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 103
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 104
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 105
    invoke-virtual {v0, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 107
    :cond_0
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v2, 0x0

    .line 120
    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    if-eqz v3, :cond_0

    move-object/from16 v2, p0

    .line 121
    check-cast v2, Lcom/android/mms/ui/BaseAttachmentViewActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/BaseAttachmentViewActivity;->getIAttachmentSelection()Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    move-result-object v3

    .line 122
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 125
    :cond_0
    if-eqz v2, :cond_4

    .line 126
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;

    move-object v11, v2

    .line 128
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v15

    .line 129
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static/range {p1 .. p1}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v13

    .line 131
    if-eqz v13, :cond_1

    .line 132
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    invoke-interface {v15}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v8

    .line 137
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v2

    .line 138
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v6

    .line 139
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v7

    .line 140
    if-eqz v6, :cond_2

    if-nez v7, :cond_3

    .line 141
    :cond_2
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v6

    .line 142
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v7

    .line 143
    invoke-interface {v2, v6}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 144
    invoke-interface {v2, v7}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 146
    :cond_3
    new-instance v2, Lcom/android/mms/model/RegionModel;

    .line 147
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 146
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 150
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 151
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 152
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 154
    const/4 v3, 0x0

    move v12, v3

    :goto_1
    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 155
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 156
    new-instance v3, Lcom/android/mms/model/RegionModel;

    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v6

    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v7

    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v8

    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v9

    .line 158
    invoke-interface {v10}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v10

    .line 156
    invoke-direct/range {v3 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 159
    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_1

    .line 126
    :cond_4
    const/4 v2, 0x0

    move-object v11, v2

    goto/16 :goto_0

    .line 161
    :cond_5
    new-instance v3, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v3, v2, v14}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 164
    invoke-interface {v15}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v2

    .line 165
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 166
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    .line 168
    if-eqz v11, :cond_6

    .line 169
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->setInitialSlideSize(I)V

    .line 172
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    const/4 v2, 0x0

    .line 174
    const/4 v10, 0x0

    .line 175
    if-eqz v13, :cond_1a

    .line 176
    const/4 v5, 0x0

    move v14, v5

    move v5, v2

    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_19

    .line 179
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILParElement;

    .line 181
    const/4 v9, 0x0

    .line 182
    const/4 v8, 0x0

    .line 183
    const/4 v7, 0x0

    .line 186
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 187
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    .line 188
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    const/4 v6, 0x0

    move v13, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v5

    :goto_3
    move/from16 v0, v20

    if-ge v13, v0, :cond_11

    .line 193
    :try_start_0
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILMediaElement;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v5, v3, v1}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v22

    .line 204
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/mms/model/MediaModelFactory;->findPart(Lcom/google/android/mms/pdu/PduBody;Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v12

    .line 205
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 206
    const/4 v8, 0x1

    .line 207
    :cond_7
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 208
    const/4 v7, 0x1

    .line 209
    :cond_8
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 210
    const/4 v6, 0x1

    .line 211
    :cond_9
    if-eqz v12, :cond_a

    .line 212
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    xor-int/lit8 v23, v23, 0x1

    .line 211
    if-eqz v23, :cond_a

    .line 213
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSlideDurationEnabled()Z

    move-result v12

    if-nez v12, :cond_d

    .line 221
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v12

    .line 222
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v23

    .line 223
    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-nez v24, :cond_b

    .line 224
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v12

    mul-int/lit16 v12, v12, 0x3e8

    .line 225
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 228
    :cond_b
    div-int/lit16 v0, v12, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v24, v24, v23

    if-eqz v24, :cond_d

    .line 229
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v24

    .line 231
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 232
    const-string/jumbo v25, "video"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    .line 231
    if-nez v25, :cond_c

    .line 233
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v25

    .line 231
    if-nez v25, :cond_c

    .line 234
    const-string/jumbo v25, "audio"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 231
    if-eqz v24, :cond_e

    .line 240
    :cond_c
    int-to-float v12, v12

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v12, v12, v23

    const/high16 v23, 0x3f800000    # 1.0f

    add-float v12, v12, v23

    invoke-interface {v2, v12}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 261
    :cond_d
    :goto_4
    check-cast v5, Lorg/w3c/dom/events/EventTarget;

    .line 260
    move-object/from16 v0, v22

    invoke-static {v5, v0}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 262
    invoke-virtual/range {v21 .. v22}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/MediaModel;->getMediaSize()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v5

    add-int/2addr v5, v10

    move/from16 v26, v9

    move v9, v5

    move/from16 v5, v26

    .line 190
    :goto_5
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    move v10, v9

    move v9, v5

    goto/16 :goto_3

    .line 194
    :catch_0
    move-exception v5

    .line 197
    const/4 v9, 0x1

    .line 198
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    move v9, v10

    .line 199
    goto :goto_5

    .line 248
    :cond_e
    :try_start_2
    div-int/lit16 v0, v12, 0x3e8

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v24, v24, v23

    if-gez v24, :cond_f

    .line 249
    move/from16 v0, v23

    float-to-int v12, v0

    mul-int/lit16 v12, v12, 0x3e8

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_4

    .line 264
    :catch_1
    move-exception v5

    .line 265
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v12, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v9

    move v9, v10

    goto :goto_5

    .line 251
    :cond_f
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v24, v0

    if-eqz v24, :cond_10

    .line 252
    move/from16 v0, v23

    float-to-int v12, v0

    mul-int/lit16 v12, v12, 0x3e8

    :try_start_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Lcom/android/mms/model/MediaModel;->setDuration(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    .line 266
    :catch_2
    move-exception v5

    .line 267
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v12, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v9

    move v9, v10

    goto :goto_5

    .line 254
    :cond_10
    int-to-float v12, v12

    const/high16 v23, 0x447a0000    # 1000.0f

    div-float v12, v12, v23

    :try_start_4
    invoke-interface {v2, v12}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    .line 268
    :catch_3
    move-exception v5

    .line 269
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v12, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v9

    move v9, v10

    goto :goto_5

    .line 274
    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v19

    .line 276
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 275
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v5, v1, v9}, Lcom/android/mms/model/SlideshowModel;->needAddUnrecognizedPart(IIIZ)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 277
    const/4 v5, 0x0

    move v13, v5

    :goto_6
    move/from16 v0, v19

    if-ge v13, v0, :cond_14

    .line 278
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v20

    .line 279
    new-instance v5, Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 280
    const-string/jumbo v12, "application/oct-stream"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 281
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v12

    .line 282
    if-nez v12, :cond_12

    .line 283
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v12

    .line 285
    :cond_12
    if-eqz v12, :cond_13

    .line 288
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([B)V

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->convertToVcardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 291
    :cond_13
    const-string/jumbo v12, "text/x-vCard"

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 292
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    .line 294
    if-eqz v20, :cond_14

    .line 295
    :try_start_5
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 294
    if-eqz v5, :cond_14

    .line 297
    const-string/jumbo v5, "ref"

    .line 298
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v12

    .line 296
    invoke-static {v5, v15, v12}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v5

    .line 299
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v5, v3, v1}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 301
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v5

    add-int/2addr v10, v5

    .line 303
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 304
    const/4 v8, 0x1

    .line 319
    :cond_14
    :goto_7
    new-instance v12, Lcom/android/mms/model/SlideModel;

    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v5

    const/high16 v13, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v13

    float-to-int v5, v5

    move-object/from16 v0, v21

    invoke-direct {v12, v5, v0}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 320
    invoke-interface {v2}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v5

    invoke-virtual {v12, v5}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 323
    if-eqz v8, :cond_17

    if-eqz v7, :cond_17

    if-eqz v6, :cond_17

    .line 324
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 325
    :cond_15
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 326
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/model/MediaModel;

    .line 327
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 328
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_8

    .line 312
    :catch_4
    move-exception v5

    .line 313
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 310
    :catch_5
    move-exception v5

    .line 311
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Lcom/android/mms/UnsupportContentTypeException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 308
    :catch_6
    move-exception v5

    .line 309
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 306
    :catch_7
    move-exception v5

    .line 307
    const-string/jumbo v12, "Mms"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 277
    :cond_16
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto/16 :goto_6

    .line 332
    :cond_17
    check-cast v2, Lorg/w3c/dom/events/EventTarget;

    invoke-static {v2, v12}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 333
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    if-eqz v11, :cond_18

    .line 336
    invoke-interface {v11, v12, v14}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onDataUpdate(Lcom/android/mms/model/SlideModel;I)V

    .line 176
    :cond_18
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v5, v10

    move v10, v9

    goto/16 :goto_2

    :cond_19
    move v2, v5

    .line 341
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v10

    .line 342
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v10, v5, :cond_22

    .line 343
    const/4 v5, 0x0

    move v9, v5

    move v8, v2

    :goto_9
    if-ge v9, v10, :cond_23

    .line 349
    :try_start_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v12

    .line 350
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 351
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-static {v15}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v7

    .line 358
    new-instance v13, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v13, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 359
    const-string/jumbo v5, "text/plain"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 361
    const-string/jumbo v5, "application/vnd.wap.xhtml+xml"

    .line 360
    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 359
    if-nez v5, :cond_1b

    .line 362
    const-string/jumbo v5, "text/html"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 359
    if-eqz v5, :cond_1c

    .line 364
    :cond_1b
    const-string/jumbo v2, "text"

    .line 365
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v5

    .line 363
    invoke-static {v2, v15, v5}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 366
    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 388
    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v6, v3, v1}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 390
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 391
    move-object v0, v5

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object v2, v0

    .line 392
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 343
    :goto_b
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_9

    .line 367
    :cond_1c
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 369
    const-string/jumbo v2, "img"

    .line 370
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v5

    .line 368
    invoke-static {v2, v15, v5}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 371
    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    goto :goto_a

    .line 417
    :catch_8
    move-exception v2

    .line 418
    :goto_c
    const-string/jumbo v5, "Mms"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 372
    :cond_1d
    :try_start_7
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 374
    const-string/jumbo v2, "video"

    .line 375
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v5

    .line 373
    invoke-static {v2, v15, v5}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 376
    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    goto :goto_a

    .line 419
    :catch_9
    move-exception v2

    .line 420
    :goto_d
    const-string/jumbo v5, "Mms"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 377
    :cond_1e
    :try_start_8
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 379
    const-string/jumbo v2, "audio"

    .line 380
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-static {v2, v15, v5}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 381
    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_a

    .line 421
    :catch_a
    move-exception v2

    .line 422
    :goto_e
    const-string/jumbo v5, "Mms"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 384
    :cond_1f
    :try_start_9
    const-string/jumbo v2, "ref"

    .line 385
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v5

    .line 383
    invoke-static {v2, v15, v5}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v6

    .line 386
    invoke-interface {v7, v6}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_a

    .line 397
    :cond_20
    if-eqz v12, :cond_21

    .line 398
    invoke-virtual {v12}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_21
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v2, v0

    .line 401
    invoke-static {v2, v5}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 403
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaSize()I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    move-result v2

    add-int v5, v8, v2

    .line 405
    :try_start_a
    new-instance v6, Lcom/android/mms/model/SlideModel;

    .line 406
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v2

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 405
    invoke-direct {v6, v2, v13}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 407
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 409
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v2, v0

    .line 408
    invoke-static {v2, v6}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 410
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    if-eqz v11, :cond_24

    .line 413
    invoke-interface {v11, v6, v9}, Lcom/android/mms/ui/multipleviews/IAttachmentSelection;->onDataUpdate(Lcom/android/mms/model/SlideModel;I)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d

    move v2, v5

    :goto_f
    move v8, v2

    goto/16 :goto_b

    :cond_22
    move v8, v2

    .line 426
    :cond_23
    new-instance v2, Lcom/android/mms/model/SlideshowModel;

    move-object v5, v15

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 427
    iput v8, v2, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 428
    invoke-virtual {v2, v2}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 429
    return-object v2

    .line 417
    :catch_b
    move-exception v2

    move v8, v5

    goto/16 :goto_c

    .line 419
    :catch_c
    move-exception v2

    move v8, v5

    goto/16 :goto_d

    .line 421
    :catch_d
    move-exception v2

    move v8, v5

    goto :goto_e

    :cond_24
    move v2, v5

    goto :goto_f

    :cond_25
    move v2, v8

    goto :goto_f
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 573
    invoke-virtual {v0, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 575
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    .line 576
    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    .line 577
    const/16 v2, 0x84

    if-ne v1, v2, :cond_1

    .line 578
    :cond_0
    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0

    .line 580
    :cond_1
    new-instance v0, Lcom/google/android/mms/MmsException;

    invoke-direct {v0}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v0
.end method

.method private isSlideValid(Lcom/android/mms/model/SlideModel;)Z
    .locals 5

    .prologue
    .line 945
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    .line 946
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v1

    .line 947
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v2

    .line 948
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v3

    .line 949
    if-eqz v0, :cond_0

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    xor-int/lit8 v4, v3, 0x1

    if-nez v4, :cond_3

    .line 950
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    xor-int/lit8 v4, v3, 0x1

    .line 949
    if-nez v4, :cond_3

    .line 951
    :cond_1
    if-nez v0, :cond_2

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    xor-int/lit8 v4, v3, 0x1

    .line 949
    if-nez v4, :cond_3

    .line 952
    :cond_2
    if-nez v0, :cond_4

    xor-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_4

    xor-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_4

    .line 949
    if-eqz v3, :cond_4

    .line 953
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 955
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 454
    new-instance v3, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 457
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 458
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 459
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 461
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    .line 462
    check-cast v1, Lcom/android/mms/model/TextModel;

    .line 464
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 472
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 474
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 476
    const-string/jumbo v1, "cid:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    .line 477
    if-eqz v7, :cond_4

    .line 478
    const-string/jumbo v1, "cid:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 484
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 487
    if-eqz v7, :cond_5

    .line 489
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 498
    :goto_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 499
    check-cast v0, Lcom/android/mms/model/TextModel;

    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 517
    :cond_3
    :goto_3
    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_0

    :cond_4
    move-object v1, v2

    .line 480
    goto :goto_1

    .line 492
    :cond_5
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 493
    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    .line 495
    :goto_4
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_2

    .line 494
    :cond_6
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 500
    :cond_7
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-nez v1, :cond_8

    .line 501
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v1

    .line 500
    if-nez v1, :cond_8

    .line 501
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcal()Z

    move-result v1

    .line 500
    if-eqz v1, :cond_9

    .line 502
    :cond_8
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 503
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isVcard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 504
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    move-object v1, v0

    .line 505
    check-cast v1, Lcom/android/mms/model/VcardModel;

    invoke-virtual {v1}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 507
    check-cast v0, Lcom/android/mms/model/VcardModel;

    invoke-virtual {v0}, Lcom/android/mms/model/VcardModel;->getLookupUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 506
    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_3

    .line 511
    :cond_9
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 512
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 514
    :cond_a
    const-string/jumbo v1, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unsupport media: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 522
    :cond_b
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 523
    invoke-static {p1, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 524
    new-instance v1, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 525
    const-string/jumbo v2, "smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 526
    const-string/jumbo v2, "smil.xml"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 527
    const-string/jumbo v2, "application/smil"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 528
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 529
    invoke-virtual {v3, v9, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 531
    return-object v3
.end method

.method private static needAddUnrecognizedPart(IIIZ)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 434
    if-eq p0, v1, :cond_0

    .line 435
    return v0

    .line 438
    :cond_0
    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_2

    .line 440
    :cond_1
    return v1

    .line 442
    :cond_2
    return v0
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 2

    .prologue
    .line 758
    if-eqz p2, :cond_1

    .line 759
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 760
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 762
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 764
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 765
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/IModelChangedObserver;

    .line 766
    invoke-virtual {p2, v0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 768
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 770
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 757
    check-cast p2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 677
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 678
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 680
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 682
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 683
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/IModelChangedObserver;

    .line 684
    invoke-virtual {p1, v0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 686
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 687
    return v2

    .line 689
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 673
    check-cast p1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 693
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkMessageSize(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 902
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    .line 903
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 697
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 698
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 699
    invoke-virtual {v0, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 700
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 701
    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 704
    :cond_1
    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 705
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 706
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 708
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1

    .prologue
    .line 664
    if-lez p1, :cond_0

    .line 665
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 667
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 1

    .prologue
    .line 778
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 777
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachFileUri()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 892
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 893
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 894
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 897
    :cond_1
    return-object v1
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 600
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRemainMessageSize()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 620
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 621
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 622
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 625
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->setTotalMessageSize(I)V

    .line 628
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getSMILSize()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    .line 629
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mSubjectSize:I

    .line 628
    sub-int/2addr v0, v1

    .line 630
    const/16 v1, 0x400

    if-ge v0, v1, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/lit16 v2, v0, -0x400

    goto :goto_1
.end method

.method public getSMILSize()I
    .locals 2

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getSubjectSize()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mSubjectSize:I

    return v0
.end method

.method public getTotalMessageSize()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    return v0
.end method

.method public getTotalTextMessageSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 646
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 648
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_2

    .line 650
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->getMediaSize()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 654
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public increaseMessageSize(I)V
    .locals 1

    .prologue
    .line 658
    if-lez p1, :cond_0

    .line 659
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 661
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 914
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 915
    return v2

    .line 917
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 918
    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->isSlideValid(Lcom/android/mms/model/SlideModel;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 919
    return v2

    .line 922
    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    return v2

    .line 925
    :cond_2
    return v3
.end method

.method public isSimpleAudio()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 930
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 931
    return v2

    .line 933
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 936
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcard()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVcal()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 937
    return v3

    .line 940
    :cond_1
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 561
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 873
    if-eqz p2, :cond_0

    .line 874
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 875
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 877
    :cond_0
    return-void
.end method

.method public openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 537
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 538
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 539
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v4

    if-nez v4, :cond_1

    .line 542
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 545
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 546
    if-eqz v5, :cond_1

    .line 547
    if-nez v1, :cond_2

    .line 548
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v1, v0

    .line 550
    :cond_2
    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 552
    :catch_0
    move-exception v0

    .line 553
    const-string/jumbo v5, "Mms"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "openPartFiles couldn\'t open: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 557
    :cond_3
    return-object v1
.end method

.method public prepareForSend()V
    .locals 2

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 965
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 966
    if-eqz v0, :cond_0

    .line 967
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 970
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 2

    .prologue
    .line 846
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 848
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 849
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 851
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 799
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 801
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 802
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 804
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 797
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 727
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .line 729
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 730
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 731
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 732
    return v1

    .line 734
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 3

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 809
    if-eqz p2, :cond_0

    .line 810
    const/4 v1, 0x0

    .line 811
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    .line 812
    if-eqz v0, :cond_4

    .line 813
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 815
    :goto_0
    if-le v2, v0, :cond_2

    .line 816
    sub-int v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 817
    sub-int v0, v2, v0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 823
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 824
    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 828
    :cond_1
    if-eqz p2, :cond_3

    .line 829
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 830
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 831
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_2

    .line 819
    :cond_2
    sub-int/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_1

    .line 835
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 836
    return-object v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 807
    check-cast p2, Lcom/android/mms/model/SlideModel;

    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0

    .prologue
    .line 585
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 586
    return-void
.end method

.method public setSubjectSize(I)V
    .locals 0

    .prologue
    .line 611
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mSubjectSize:I

    .line 612
    return-void
.end method

.method public setTotalMessageSize(I)V
    .locals 0

    .prologue
    .line 589
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 590
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 4

    .prologue
    .line 880
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 881
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 882
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 883
    if-eqz v3, :cond_1

    .line 884
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 888
    :cond_2
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-nez v0, :cond_0

    .line 447
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 448
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 2

    .prologue
    .line 865
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 867
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 868
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 870
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 858
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 859
    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 861
    :cond_0
    return-void
.end method

.method public updateTotalMessageSize()V
    .locals 4

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1041
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1042
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_0

    .line 1045
    :cond_1
    const-string/jumbo v0, "Mms"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    const-string/jumbo v0, "Mms"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTotalMessageSize: message size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->setTotalMessageSize(I)V

    .line 1052
    return-void
.end method
