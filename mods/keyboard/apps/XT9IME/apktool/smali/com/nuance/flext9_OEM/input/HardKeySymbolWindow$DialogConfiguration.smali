.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;
.super Ljava/lang/Object;
.source "HardKeySymbolWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;
    }
.end annotation


# instance fields
.field banJiaoStatus:I

.field banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

.field banjiaoSymbolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

.field quanjiaoSymbolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field screenWidth:I

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

.field titleBackColor:I

.field titleBottomMargin:I

.field titleIcon:Landroid/graphics/drawable/BitmapDrawable;

.field titleLeftMargin:I

.field titleRightMargin:I

.field titleText:Ljava/lang/String;

.field titleTextColor:I

.field titleTextSize:F

.field titleTopMargin:I

.field workModeName:Ljava/lang/String;

.field workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

.field workingSymbolList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 768
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 770
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->setScreenWidth()V

    .line 772
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 773
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    invoke-direct {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;)V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 774
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    .line 776
    invoke-virtual {p0, p2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->readUIConfiguration(Landroid/content/Context;)Z

    .line 777
    invoke-direct {p0, p2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->readKeys(Landroid/content/Context;)V

    .line 778
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    if-eqz v0, :cond_0

    .line 779
    const/4 v0, 0x2

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banJiaoStatus:I

    .line 780
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 781
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 782
    const-string/jumbo v0, "banjiao"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    .line 802
    :goto_0
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->changeWidthAndHeightAsScreen()V

    .line 803
    invoke-direct {p0, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->autoAdjustSKTextSize(Z)V

    .line 804
    invoke-direct {p0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->autoAdjustSKTextSize(Z)V

    .line 806
    return-void

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    xor-int/lit8 v0, v0, 0x1

    .line 783
    if-eqz v0, :cond_1

    .line 785
    iput v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banJiaoStatus:I

    .line 786
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 787
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 788
    const-string/jumbo v0, "banjiao"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    goto :goto_0

    .line 789
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    if-nez v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-boolean v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    .line 789
    if-eqz v0, :cond_2

    .line 791
    iput v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banJiaoStatus:I

    .line 792
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 793
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoSymbolList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 794
    const-string/jumbo v0, "quanjiao"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    goto :goto_0

    .line 796
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banJiaoStatus:I

    .line 797
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 798
    iput-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 799
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    goto :goto_0
.end method

.method private autoAdjustSKTextSize(Z)V
    .locals 8

    .prologue
    const v7, 0x3e4ccccd    # 0.2f

    const v6, 0x3dcccccd    # 0.1f

    .line 1206
    if-eqz p1, :cond_1

    .line 1207
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 1208
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    .line 1214
    :goto_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 1215
    iget v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1216
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1217
    const-string/jumbo v1, ""

    .line 1221
    if-eqz p1, :cond_2

    .line 1222
    const-string/jumbo v1, "#"

    .line 1228
    :goto_1
    const/4 v2, 0x0

    .line 1230
    :cond_0
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    .line 1231
    iget v5, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 1232
    cmpg-float v5, v3, v7

    if-gez v5, :cond_3

    cmpl-float v5, v3, v6

    if-lez v5, :cond_3

    .line 1244
    :goto_2
    if-eqz p1, :cond_6

    .line 1245
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    .line 1255
    :goto_3
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x41200000    # 10.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutSize:F

    .line 1256
    return-void

    .line 1210
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 1211
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoSymbolList:Ljava/util/ArrayList;

    goto :goto_0

    .line 1224
    :cond_2
    const-string/jumbo v1, "\ufffd\ufffd"

    goto :goto_1

    .line 1234
    :cond_3
    cmpl-float v5, v3, v7

    if-lez v5, :cond_5

    .line 1235
    const/high16 v3, -0x40800000    # -1.0f

    .line 1239
    :cond_4
    :goto_4
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    add-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1240
    add-int/lit8 v2, v2, 0x1

    .line 1241
    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 1236
    :cond_5
    cmpg-float v5, v3, v6

    if-gez v5, :cond_4

    .line 1237
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_4

    .line 1247
    :cond_6
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    goto :goto_3
.end method

.method private constructColorFromLine(Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 826
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 827
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 828
    const/4 v0, -0x1

    return v0

    .line 829
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 830
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 831
    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 832
    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private readKeys(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    .line 1124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoSymbolList:Ljava/util/ArrayList;

    .line 1126
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1127
    const v1, 0x7f050004

    .line 1126
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 1130
    :try_start_0
    const-string/jumbo v0, ""

    move-object v0, v2

    .line 1131
    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    .line 1132
    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 1133
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1134
    const-string/jumbo v4, "Keys"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1135
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v4

    const/16 v5, 0x12

    if-lt v4, v5, :cond_0

    .line 1137
    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 1138
    const-string/jumbo v5, "keyCategory"

    .line 1137
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1141
    const/16 v0, 0x11

    invoke-interface {v3, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1143
    const-string/jumbo v4, "banjiao"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1144
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    .line 1153
    :cond_1
    :goto_1
    const-string/jumbo v4, "Key"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    const/4 v1, 0x0

    invoke-interface {v3, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 1155
    const-string/jumbo v4, "0x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 1157
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1156
    invoke-interface {v3, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    .line 1158
    int-to-char v1, v1

    .line 1159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1170
    return-void

    .line 1145
    :cond_3
    :try_start_1
    const-string/jumbo v4, "quanjiao"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoSymbolList:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 1149
    goto/16 :goto_0

    .line 1173
    :cond_5
    return-void
.end method

.method private setScreenWidth()V
    .locals 1

    .prologue
    .line 762
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 763
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 765
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->screenWidth:I

    .line 766
    return-void
.end method


# virtual methods
.method public changeWidthAndHeightAsScreen()V
    .locals 3

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1180
    invoke-direct {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->setScreenWidth()V

    .line 1182
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1183
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 1184
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 1183
    div-int/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 1185
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 1186
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 1185
    div-int/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 1193
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    .line 1194
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    .line 1197
    :cond_0
    return-void

    .line 1188
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 1189
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRowLandscape:I

    .line 1188
    div-int/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 1190
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->screenWidth:I

    mul-int/lit8 v1, v1, 0x9

    div-int/lit8 v1, v1, 0xa

    .line 1191
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRowLandscape:I

    .line 1190
    div-int/2addr v1, v2

    iput v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    goto :goto_0
.end method

.method public readUIConfiguration(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 837
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 838
    const v1, 0x7f050004

    .line 837
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 842
    :try_start_0
    const-string/jumbo v0, ""

    .line 843
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_25

    .line 844
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 845
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 846
    const-string/jumbo v0, "Keys"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 847
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    const/16 v3, 0x12

    if-lt v0, v3, :cond_0

    .line 849
    const/16 v0, 0x11

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    const-string/jumbo v3, "keyCategory"

    .line 849
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    const/16 v0, 0x11

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string/jumbo v3, "banjiao"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 856
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 863
    :goto_1
    iget-boolean v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    if-nez v3, :cond_1

    .line 864
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->updated:Z

    .line 868
    :cond_1
    const-string/jumbo v3, ""

    .line 869
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyWidth"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 870
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 871
    const-string/jumbo v4, "dip"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 872
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 873
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 876
    :cond_2
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyHeight"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 877
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 878
    const-string/jumbo v4, "dip"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 879
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 880
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    .line 885
    :cond_3
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keysInRow"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 887
    const/4 v3, 0x2

    const/4 v4, 0x7

    .line 886
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    .line 891
    :goto_2
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 892
    const-string/jumbo v4, "keyBackgroundColor"

    .line 891
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 893
    const/4 v3, 0x3

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 894
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 895
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 896
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyBackgroundColor:I

    .line 899
    :cond_4
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 900
    const-string/jumbo v4, "keyPressedColor"

    .line 899
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 901
    const/4 v3, 0x4

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 902
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 903
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 904
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyPressedColor:I

    .line 907
    :cond_5
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 908
    const-string/jumbo v4, "keyFocusedColor"

    .line 907
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 909
    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 910
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 911
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 912
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyFocusedColor:I

    .line 915
    :cond_6
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 916
    const-string/jumbo v4, "rowFocusedColor"

    .line 915
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 917
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 918
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 919
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 920
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->rowFocusedColor:I

    .line 923
    :cond_7
    const/4 v3, 0x7

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyFont"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 925
    const/4 v3, 0x7

    const/4 v4, 0x7

    .line 924
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyFont:I

    .line 928
    :cond_8
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 929
    const-string/jumbo v4, "keyTextSize"

    .line 928
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 930
    const/16 v3, 0x8

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 931
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 932
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 933
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    .line 939
    :cond_9
    :goto_3
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 940
    const-string/jumbo v4, "keyTextColor"

    .line 939
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 941
    const/16 v3, 0x9

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 942
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 943
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 944
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextColor:I

    .line 947
    :cond_a
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 948
    const-string/jumbo v4, "keyShortcutSize"

    .line 947
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 949
    const/16 v3, 0xa

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 950
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 951
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 952
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutSize:F

    .line 958
    :cond_b
    :goto_4
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 959
    const-string/jumbo v4, "keyShortcutColor"

    .line 958
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 960
    const/16 v3, 0xb

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 961
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 962
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 963
    invoke-direct {p0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutColor:I

    .line 966
    :cond_c
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 967
    const-string/jumbo v4, "keyTextScale"

    .line 966
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 968
    const/16 v3, 0xc

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 969
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 970
    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 971
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextScale:F

    .line 978
    :cond_d
    :goto_5
    const/16 v3, 0xd

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 979
    const-string/jumbo v4, "keyLeftGap"

    .line 978
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 981
    const/16 v3, 0xd

    const/4 v4, 0x3

    .line 980
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyLeftGap:I

    .line 984
    :cond_e
    const/16 v3, 0xe

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 985
    const-string/jumbo v4, "keyRighttGap"

    .line 984
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 987
    const/16 v3, 0xe

    const/4 v4, 0x3

    .line 986
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyRighttGap:I

    .line 990
    :cond_f
    const/16 v3, 0xf

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyUpGap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 992
    const/16 v3, 0xf

    const/4 v4, 0x3

    .line 991
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyUpGap:I

    .line 995
    :cond_10
    const/16 v3, 0x10

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 996
    const-string/jumbo v4, "keyDownGap"

    .line 995
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 998
    const/16 v3, 0x10

    const/4 v4, 0x3

    .line 997
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyDownGap:I

    .line 1001
    :cond_11
    const/16 v3, 0x12

    invoke-interface {v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1002
    const-string/jumbo v4, "keysInRowLandscape"

    .line 1001
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1004
    const/16 v3, 0x12

    const/4 v4, 0x5

    .line 1003
    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v3

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRowLandscape:I

    .line 1007
    :cond_12
    const-string/jumbo v0, "Title"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    const-string/jumbo v0, ""

    .line 1010
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1011
    const-string/jumbo v2, "titleTextColor"

    .line 1010
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1012
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1013
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1014
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1015
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextColor:I

    .line 1018
    :cond_13
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1019
    const-string/jumbo v2, "titleBackColor"

    .line 1018
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1020
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1022
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 1023
    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->constructColorFromLine(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBackColor:I

    .line 1026
    :cond_14
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1027
    const-string/jumbo v2, "titleTextSize"

    .line 1026
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1028
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1030
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 1031
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextSize:F

    .line 1036
    :cond_15
    :goto_6
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1037
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.nuance.flext9_OEM.input:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1043
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1039
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1044
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 1050
    :cond_16
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1051
    const/4 v0, 0x4

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1053
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "com.nuance.flext9_OEM.input:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1053
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1058
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleText:Ljava/lang/String;

    .line 1064
    :cond_17
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1065
    const-string/jumbo v2, "titleLeftMargin"

    .line 1064
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1066
    const/4 v0, 0x5

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1068
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1069
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleLeftMargin:I

    .line 1074
    :cond_18
    :goto_7
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    const-string/jumbo v2, "titleRightMargin"

    .line 1074
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1076
    const/4 v0, 0x6

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1077
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1078
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1079
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleRightMargin:I

    .line 1084
    :cond_19
    :goto_8
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1085
    const-string/jumbo v2, "titleBottomMargin"

    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1086
    const/4 v0, 0x7

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1088
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBottomMargin:I

    .line 1094
    :cond_1a
    :goto_9
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 1095
    const-string/jumbo v2, "titleTopMargin"

    .line 1094
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    const/16 v0, 0x8

    invoke-interface {v1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1097
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1098
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1099
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTopMargin:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1110
    return v7

    .line 857
    :cond_1b
    :try_start_1
    const-string/jumbo v3, "quanjiao"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    goto/16 :goto_1

    .line 889
    :cond_1c
    const/4 v3, -0x1

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keysInRow:I

    goto/16 :goto_2

    .line 936
    :cond_1d
    const/high16 v3, 0x41400000    # 12.0f

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    goto/16 :goto_3

    .line 955
    :cond_1e
    const/high16 v3, 0x40c00000    # 6.0f

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutSize:F

    goto/16 :goto_4

    .line 974
    :cond_1f
    const/high16 v3, 0x40000000    # 2.0f

    iput v3, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextScale:F

    goto/16 :goto_5

    .line 1033
    :cond_20
    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTextSize:F

    goto/16 :goto_6

    .line 1071
    :cond_21
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleLeftMargin:I

    goto/16 :goto_7

    .line 1081
    :cond_22
    const/4 v0, 0x3

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleRightMargin:I

    goto/16 :goto_8

    .line 1091
    :cond_23
    const/4 v0, 0x5

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleBottomMargin:I

    goto :goto_9

    .line 1101
    :cond_24
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->titleTopMargin:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1113
    :cond_25
    return v6
.end method

.method public switchJiaoMode(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 809
    if-nez p1, :cond_0

    .line 810
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 811
    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 812
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    .line 822
    :goto_0
    return-void

    .line 813
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoSymbolList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 815
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->banjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 816
    const-string/jumbo v0, "banjiao"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    goto :goto_0

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoSymbolList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingSymbolList:Ljava/util/ArrayList;

    .line 819
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->quanjiaoKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    .line 820
    const-string/jumbo v0, "quanjiao"

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    goto :goto_0
.end method
