.class Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;
.super Landroid/view/View;
.source "HardKeySymbolWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SymbolKey"
.end annotation


# instance fields
.field private keyFocused:Z

.field private mKeytext:Ljava/lang/String;

.field private paint:Landroid/graphics/Paint;

.field private pressed:Z

.field private row:I

.field private rowFocused:Z

.field private shortCutNum:I

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;


# direct methods
.method static synthetic -get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->row:I

    return v0
.end method

.method static synthetic -get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)I
    .locals 1

    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    return v0
.end method

.method static synthetic -set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->keyFocused:Z

    return p1
.end method

.method static synthetic -set1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    return p1
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 1322
    invoke-direct {p0, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1323
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1325
    return-void
.end method

.method public constructor <init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x3

    .line 1280
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 1281
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1282
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1284
    iput v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    .line 1285
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->rowFocused:Z

    .line 1286
    iput v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->row:I

    .line 1288
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    .line 1289
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->keyFocused:Z

    .line 1290
    iput-object p3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    .line 1291
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setPadding(IIII)V

    .line 1292
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setFocusable(Z)V

    .line 1293
    invoke-virtual {p0, v4}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setFocusableInTouchMode(Z)V

    .line 1295
    return-void
.end method


# virtual methods
.method public dealWithKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1389
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-direct {v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;-><init>(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)V

    .line 1390
    iget v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1391
    return v4

    .line 1394
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1430
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 1399
    :pswitch_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1400
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1401
    iget v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    iput v2, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->shortCutNum:I

    .line 1402
    iget v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->row:I

    iput v2, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->row:I

    .line 1403
    iput p1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$KeyLocation;->keyCode:I

    .line 1404
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1405
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1406
    return v3

    .line 1408
    :pswitch_1
    iput-boolean v4, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    .line 1409
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 1410
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1411
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get3(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1412
    iput v3, v0, Landroid/os/Message;->what:I

    .line 1413
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1414
    return v3

    .line 1394
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRow()I
    .locals 1

    .prologue
    .line 1306
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->row:I

    return v0
.end method

.method public getShortCutNum()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1445
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->rowFocused:Z

    if-nez v0, :cond_2

    .line 1446
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1447
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    if-eqz v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyPressedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1453
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    .line 1454
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    .line 1452
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1456
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->keyFocused:Z

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyFocusedColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1458
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    int-to-float v3, v0

    .line 1459
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, v8

    move v2, v8

    .line 1458
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1464
    :cond_1
    iget-boolean v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->rowFocused:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1465
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1466
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyShortcutSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1467
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1468
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    const-string/jumbo v1, "%d"

    new-array v2, v7, [Ljava/lang/Object;

    .line 1469
    iget v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 1468
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 1475
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1476
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1477
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    const-string/jumbo v1, "quanjiao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1478
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1483
    :goto_1
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1484
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1485
    const v1, 0x7f020093

    .line 1484
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1486
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1488
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1490
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1491
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1492
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1491
    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1493
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1528
    :goto_2
    return-void

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->rowFocusedColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 1481
    :cond_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    .line 1495
    :cond_4
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    .line 1496
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1497
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    .line 1496
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    .line 1498
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1495
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1501
    :cond_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1502
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1503
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workModeName:Ljava/lang/String;

    const-string/jumbo v1, "quanjiao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1504
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    invoke-static {v1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1509
    :goto_3
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1510
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get2(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1511
    const v1, 0x7f020093

    .line 1510
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1512
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1514
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1516
    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1517
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1518
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 1517
    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1519
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    .line 1507
    :cond_6
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3

    .line 1521
    :cond_7
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    .line 1522
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1523
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    .line 1522
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v9

    .line 1524
    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v2

    iget-object v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v2, v2, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->paint:Landroid/graphics/Paint;

    .line 1521
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1362
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1363
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 1368
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    const/4 v0, 0x1

    return v0

    .line 1373
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->dealWithKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    .line 1380
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1, p1, p2, v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-wrap0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;ILandroid/view/KeyEvent;Lcom/nuance/flext9_OEM/input/HardKeyboard$HardKeyEventListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    const/4 v0, 0x1

    return v0

    .line 1385
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v0, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyWidth:I

    .line 1439
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get1(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration;->workingKeyProperty:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;

    iget v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$DialogConfiguration$KeyProperty;->keyHeight:I

    .line 1438
    invoke-virtual {p0, v0, v1}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->setMeasuredDimension(II)V

    .line 1440
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1355
    :goto_0
    return v2

    .line 1333
    :pswitch_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    .line 1335
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-get0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    .line 1336
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0, v3}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    goto :goto_0

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    invoke-static {v0, p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->-set0(Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;)Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;

    .line 1340
    iput-boolean v2, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->pressed:Z

    .line 1341
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    goto :goto_0

    .line 1344
    :pswitch_1
    invoke-virtual {p0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->invalidate()V

    goto :goto_0

    .line 1348
    :pswitch_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1349
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->mKeytext:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1350
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1351
    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->this$0:Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, v1, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setKeyFocused(Z)V
    .locals 0

    .prologue
    .line 1298
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->keyFocused:Z

    .line 1299
    return-void
.end method

.method public setRow(I)V
    .locals 0

    .prologue
    .line 1310
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->row:I

    .line 1311
    return-void
.end method

.method public setRowFocused(Z)V
    .locals 0

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->rowFocused:Z

    .line 1303
    return-void
.end method

.method public setShortCutNum(I)V
    .locals 0

    .prologue
    .line 1318
    iput p1, p0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow$SymbolKey;->shortCutNum:I

    .line 1319
    return-void
.end method
