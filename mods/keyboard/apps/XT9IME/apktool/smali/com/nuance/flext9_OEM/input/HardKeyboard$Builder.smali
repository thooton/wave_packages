.class public Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;
.super Ljava/lang/Object;
.source "HardKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/HardKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final synthetic -com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I = null

.field private static final Attr_Class_Bookmark:Ljava/lang/String; = "bookmark"

.field private static final Attr_Class_Character:Ljava/lang/String; = "character"

.field private static final Attr_Class_Index:Ljava/lang/String; = "index"

.field private static final Attr_Class_Language:Ljava/lang/String; = "language"

.field private static final Attr_Class_Link:Ljava/lang/String; = "link"

.field private static final Attr_Class_String:Ljava/lang/String; = "string"

.field private static final Attr_Class_Virtual:Ljava/lang/String; = "virtual"

.field private static final Attr_Type_Hold:Ljava/lang/String; = "hold"

.field private static final Attr_Type_Press:Ljava/lang/String; = "press"

.field private static final Attr_Type_Release:Ljava/lang/String; = "release"

.field private static final Attr_Value_False:Ljava/lang/String; = "false"

.field private static final Attr_Value_True:Ljava/lang/String; = "true"

.field private static final Attribute_Class:Ljava/lang/String; = "class"

.field private static final Attribute_Code:Ljava/lang/String; = "code"

.field private static final Attribute_Default:Ljava/lang/String; = "default"

.field private static final Attribute_Delay:Ljava/lang/String; = "delay"

.field private static final Attribute_KdbId:Ljava/lang/String; = "kdbid"

.field private static final Attribute_LanguageId:Ljava/lang/String; = "languageid"

.field private static final Attribute_LayoutId:Ljava/lang/String; = "layoutid"

.field private static final Attribute_Mode:Ljava/lang/String; = "mode"

.field private static final Attribute_Multitap:Ljava/lang/String; = "multitap"

.field private static final Attribute_Name:Ljava/lang/String; = "name"

.field private static final Attribute_PopupCharacters:Ljava/lang/String; = "popupcharacters"

.field private static final Attribute_PopupKeyboard:Ljava/lang/String; = "popupkeyboard"

.field private static final Attribute_Repeat:Ljava/lang/String; = "repeat"

.field private static final Attribute_ShiftState:Ljava/lang/String; = "shiftstate"

.field private static final Attribute_Shiftable:Ljava/lang/String; = "shiftable"

.field private static final Attribute_Type:Ljava/lang/String; = "type"

.field private static final Attribute_Value:Ljava/lang/String; = "value"

.field private static final ELEMENT_Combo:Ljava/lang/String; = "combo"

.field private static final ELEMENT_Event:Ljava/lang/String; = "event"

.field private static final ELEMENT_HardKeyboard:Ljava/lang/String; = "hardkeyboard"

.field private static final ELEMENT_Key:Ljava/lang/String; = "key"

.field private static final ELEMENT_Keyboard:Ljava/lang/String; = "keyboard"

.field private static final ELEMENT_Page:Ljava/lang/String; = "page"

.field private static final Virtual_Value_Backspace:Ljava/lang/String; = "backspace"

.field private static final Virtual_Value_Capslock:Ljava/lang/String; = "capslock"

.field private static final Virtual_Value_Clear:Ljava/lang/String; = "clear"

.field private static final Virtual_Value_Delete:Ljava/lang/String; = "delete"

.field private static final Virtual_Value_Down:Ljava/lang/String; = "down"

.field private static final Virtual_Value_End:Ljava/lang/String; = "end"

.field private static final Virtual_Value_Enter:Ljava/lang/String; = "enter"

.field private static final Virtual_Value_Escape:Ljava/lang/String; = "escape"

.field private static final Virtual_Value_Function:Ljava/lang/String; = "function"

.field private static final Virtual_Value_Home:Ljava/lang/String; = "home"

.field private static final Virtual_Value_Left:Ljava/lang/String; = "left"

.field private static final Virtual_Value_Right:Ljava/lang/String; = "right"

.field private static final Virtual_Value_Shift:Ljava/lang/String; = "shift"

.field private static final Virtual_Value_Shiftcycle:Ljava/lang/String; = "shiftcycle"

.field private static final Virtual_Value_Space:Ljava/lang/String; = "space"

.field private static final Virtual_Value_Symbol:Ljava/lang/String; = "symbol"

.field private static final Virtual_Value_Tab:Ljava/lang/String; = "tab"

.field private static final Virtual_Value_Up:Ljava/lang/String; = "up"


# instance fields
.field private mCombineKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private static synthetic -getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->values()[Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    :try_start_4
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Popup:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v1, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    invoke-virtual {v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    sput-object v0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->-com-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1

    :catch_7
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mContext:Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mContext:Landroid/content/Context;

    .line 180
    return-void
.end method

.method private parseEvent(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 510
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v9

    .line 512
    const/4 v0, 0x2

    if-eq v9, v0, :cond_0

    .line 513
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    const/4 v0, 0x0

    return-object v0

    .line 522
    :cond_1
    const/4 v7, 0x0

    .line 523
    const/4 v6, 0x0

    .line 524
    const/4 v4, -0x1

    .line 525
    const/4 v3, 0x1

    .line 526
    sget v2, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_SHIFTABLE:I

    .line 527
    const/4 v1, 0x0

    .line 528
    const/4 v0, 0x0

    .line 530
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v8

    .line 531
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v8, :cond_9

    .line 532
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 533
    const-string/jumbo v11, "type"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 534
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 531
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 536
    :cond_3
    const-string/jumbo v11, "class"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 537
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 539
    :cond_4
    const-string/jumbo v11, "value"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v4, v5

    .line 540
    goto :goto_1

    .line 542
    :cond_5
    const-string/jumbo v11, "multitap"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 543
    const/4 v1, 0x0

    invoke-interface {p1, v5, v1}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    goto :goto_1

    .line 545
    :cond_6
    const-string/jumbo v11, "shiftable"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 546
    const/4 v3, 0x1

    invoke-interface {p1, v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v3

    goto :goto_1

    .line 548
    :cond_7
    const-string/jumbo v11, "shiftstate"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 549
    sget v2, Lcom/nuance/flext9_OEM/input/HardKeyboard;->SHIFT_STATE_SHIFTABLE:I

    invoke-interface {p1, v5, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v2

    goto :goto_1

    .line 551
    :cond_8
    const-string/jumbo v11, "delay"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 552
    const/4 v0, 0x0

    invoke-interface {p1, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v0

    goto :goto_1

    .line 556
    :cond_9
    if-eqz v7, :cond_a

    if-nez v6, :cond_b

    .line 558
    :cond_a
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 559
    const/4 v0, 0x0

    return-object v0

    .line 556
    :cond_b
    if-ltz v4, :cond_a

    .line 562
    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_None:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 563
    sget-object v8, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Character:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 565
    const-string/jumbo v10, "press"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 566
    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Press:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    .line 575
    :cond_c
    :goto_2
    const-string/jumbo v6, "virtual"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 576
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Virtual:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    .line 595
    :goto_3
    const/4 v7, 0x0

    .line 596
    invoke-static {}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->-getcom-nuance-flext9_OEM-input-HardKeyboard$EventClassSwitchesValues()[I

    move-result-object v8

    invoke-virtual {v6}, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_0

    move-object v4, v7

    .line 673
    :goto_4
    if-eqz v4, :cond_24

    .line 674
    invoke-virtual {v4, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->setMultitap(Z)V

    .line 675
    invoke-virtual {v4, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->setShiftable(Z)V

    .line 676
    invoke-virtual {v4, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->setShiftState(I)V

    .line 677
    invoke-virtual {v4, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->setDelay(Z)V

    move v0, v9

    .line 680
    :cond_d
    :goto_5
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 682
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 684
    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 689
    :cond_e
    return-object v4

    .line 568
    :cond_f
    const-string/jumbo v10, "hold"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 569
    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Hold:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    goto :goto_2

    .line 571
    :cond_10
    const-string/jumbo v10, "release"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 572
    sget-object v5, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;->EventType_Release:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    goto :goto_2

    .line 578
    :cond_11
    const-string/jumbo v6, "language"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 579
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Language:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    goto :goto_3

    .line 581
    :cond_12
    const-string/jumbo v6, "index"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 582
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Index:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    goto :goto_3

    .line 584
    :cond_13
    const-string/jumbo v6, "link"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 585
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Link:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    goto :goto_3

    .line 587
    :cond_14
    const-string/jumbo v6, "string"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 588
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_String:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    goto :goto_3

    .line 590
    :cond_15
    const-string/jumbo v6, "bookmark"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 591
    sget-object v6, Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;->EventClass_Bookmark:Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;

    goto/16 :goto_3

    .line 600
    :pswitch_0
    new-instance v7, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    const/4 v8, 0x0

    invoke-interface {p1, v4, v8}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v4

    invoke-direct {v7, v5, v6, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;I)V

    move-object v4, v7

    .line 601
    goto/16 :goto_4

    .line 605
    :pswitch_1
    new-instance v7, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-interface {p1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v5, v6, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;Ljava/lang/String;)V

    move-object v4, v7

    .line 606
    goto/16 :goto_4

    .line 608
    :pswitch_2
    invoke-interface {p1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 610
    const-string/jumbo v8, "backspace"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 611
    const/4 v4, 0x4

    .line 668
    :goto_6
    new-instance v7, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    invoke-direct {v7, v5, v6, v4}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;-><init>(Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventClass;I)V

    move-object v4, v7

    .line 670
    goto/16 :goto_4

    .line 613
    :cond_16
    const-string/jumbo v8, "tab"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 614
    const/16 v4, 0x3d

    goto :goto_6

    .line 616
    :cond_17
    const-string/jumbo v8, "clear"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 617
    const/16 v4, 0x1c

    goto :goto_6

    .line 619
    :cond_18
    const-string/jumbo v8, "enter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 620
    const/16 v4, 0x42

    goto :goto_6

    .line 622
    :cond_19
    const-string/jumbo v8, "shift"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 623
    const/16 v4, 0x3b

    goto :goto_6

    .line 629
    :cond_1a
    const-string/jumbo v8, "shiftcycle"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 630
    const/4 v4, 0x0

    goto :goto_6

    .line 632
    :cond_1b
    const-string/jumbo v8, "space"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 633
    const/16 v4, 0x3e

    goto :goto_6

    .line 635
    :cond_1c
    const-string/jumbo v8, "left"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 636
    const/16 v4, 0x15

    goto :goto_6

    .line 638
    :cond_1d
    const-string/jumbo v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 639
    const/16 v4, 0x16

    goto :goto_6

    .line 641
    :cond_1e
    const-string/jumbo v8, "up"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 642
    const/16 v4, 0x13

    goto :goto_6

    .line 644
    :cond_1f
    const-string/jumbo v8, "down"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 645
    const/16 v4, 0x14

    goto :goto_6

    .line 647
    :cond_20
    const-string/jumbo v8, "delete"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    .line 648
    const/16 v4, 0x43

    goto/16 :goto_6

    .line 650
    :cond_21
    const-string/jumbo v8, "function"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_22

    .line 651
    const/16 v4, 0x39

    goto/16 :goto_6

    .line 653
    :cond_22
    const-string/jumbo v8, "symbol"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 654
    const/16 v4, 0x3f

    goto/16 :goto_6

    .line 666
    :cond_23
    const/4 v7, 0x0

    invoke-interface {p1, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v4

    goto/16 :goto_6

    :cond_24
    move v0, v9

    goto/16 :goto_5

    :cond_25
    move-object v6, v8

    goto/16 :goto_3

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseHardKeyboard(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboard;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x900

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 228
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    .line 230
    if-eq v2, v10, :cond_0

    .line 231
    return-object v9

    .line 234
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 235
    const-string/jumbo v1, "keyboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    return-object v9

    .line 242
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v6

    move v3, v4

    move v0, v4

    move v1, v5

    .line 243
    :goto_0
    if-ge v3, v6, :cond_4

    .line 244
    invoke-interface {p1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    const-string/jumbo v8, "layoutid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 246
    invoke-interface {p1, v3, v5}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v1

    .line 243
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    :cond_3
    const-string/jumbo v8, "languageid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    invoke-interface {p1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v0

    goto :goto_1

    .line 254
    :cond_4
    new-instance v3, Lcom/nuance/flext9_OEM/input/HardKeyboard;

    invoke-direct {v3, v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboard;-><init>(II)V

    .line 255
    if-nez v3, :cond_8

    .line 256
    return-object v9

    .line 267
    :cond_5
    if-ne v0, v10, :cond_6

    .line 268
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parsePage(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    move-result-object v1

    .line 270
    if-eqz v1, :cond_6

    .line 271
    invoke-static {v3, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->-wrap0(Lcom/nuance/flext9_OEM/input/HardKeyboard;Lcom/nuance/flext9_OEM/input/HardKeyboardPage;)V

    .line 260
    :cond_6
    :goto_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 262
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 264
    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "keyboard"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 276
    :cond_7
    return-object v3

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method private parseKey(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardKey;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 351
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    .line 353
    if-eq v5, v12, :cond_0

    .line 354
    return-object v7

    .line 357
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 359
    return-object v7

    .line 368
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    move v6, v4

    move-object v0, v7

    move v1, v4

    move v2, v8

    move v3, v4

    .line 369
    :goto_0
    if-ge v6, v9, :cond_6

    .line 370
    invoke-interface {p1, v6}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 371
    const-string/jumbo v11, "code"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 372
    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v3

    .line 369
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 374
    :cond_3
    const-string/jumbo v11, "repeat"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 375
    invoke-interface {p1, v6, v8}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v2

    goto :goto_1

    .line 377
    :cond_4
    const-string/jumbo v11, "popupkeyboard"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 378
    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v1

    goto :goto_1

    .line 380
    :cond_5
    const-string/jumbo v11, "popupcharacters"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 381
    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v10

    .line 382
    if-eqz v10, :cond_2

    .line 383
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 388
    :cond_6
    if-nez v3, :cond_7

    .line 390
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 391
    return-object v7

    .line 395
    :cond_7
    new-instance v6, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    invoke-direct {v6, v3, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;-><init>(IZ)V

    .line 396
    if-nez v6, :cond_8

    .line 397
    return-object v7

    .line 400
    :cond_8
    if-eqz v1, :cond_9

    .line 401
    invoke-virtual {v6, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setPopupKeyboard(I)V

    .line 404
    :cond_9
    if-eqz v0, :cond_1e

    .line 405
    invoke-virtual {v6, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->setPopupCharacters(Ljava/lang/CharSequence;)V

    move v0, v5

    .line 409
    :cond_a
    :goto_2
    if-eq v0, v8, :cond_b

    .line 411
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    .line 413
    if-ne v3, v13, :cond_c

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 505
    :cond_b
    return-object v6

    .line 416
    :cond_c
    if-ne v3, v12, :cond_1b

    .line 417
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 420
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parseEvent(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_1b

    .line 423
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventType()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    move-result-object v1

    invoke-virtual {v6, v4, v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->addKeyEvent(ILcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V

    move v0, v3

    goto :goto_2

    .line 426
    :cond_d
    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 428
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    move v0, v4

    .line 430
    :goto_3
    if-ge v0, v1, :cond_1d

    .line 431
    invoke-interface {p1, v0}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 432
    const-string/jumbo v5, "code"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 433
    invoke-interface {p1, v0, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v0

    move v1, v0

    :goto_4
    move v2, v4

    .line 439
    :goto_5
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_e

    .line 440
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    .line 445
    :cond_e
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_1c

    .line 446
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v3

    .line 449
    :cond_f
    :goto_6
    if-eq v0, v8, :cond_a

    .line 451
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 453
    if-ne v0, v13, :cond_10

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "key"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 456
    :cond_10
    if-ne v0, v12, :cond_f

    .line 457
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parseEvent(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    move-result-object v2

    .line 459
    if-eqz v2, :cond_f

    .line 460
    invoke-virtual {v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventType()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    move-result-object v3

    invoke-virtual {v6, v1, v3, v2}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->addKeyEvent(ILcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V

    goto :goto_6

    .line 430
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 443
    :cond_12
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    .line 464
    :cond_13
    const-string/jumbo v1, "combo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 466
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    .line 467
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 468
    :goto_7
    if-eq v0, v8, :cond_a

    .line 470
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    .line 471
    if-ne v5, v13, :cond_14

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "combo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v5

    .line 472
    goto/16 :goto_2

    .line 474
    :cond_14
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    move v1, v4

    move v0, v4

    .line 476
    :goto_8
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_19

    .line 477
    invoke-interface {p1, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 478
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 479
    invoke-interface {p1, v1, v4}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v2

    .line 480
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    move v3, v4

    .line 483
    :goto_a
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_15

    .line 484
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 489
    :cond_15
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v3, v0, :cond_16

    .line 490
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_16
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_8

    .line 487
    :cond_17
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_a

    .line 493
    :cond_18
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 494
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parseEvent(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_19

    .line 496
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;->getEventType()Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardKey;->addKeyEvent(Ljava/util/List;Lcom/nuance/flext9_OEM/input/HardKeyboard$EventType;Lcom/nuance/flext9_OEM/input/HardKeyboardEvent;)V

    :cond_19
    move v0, v5

    goto/16 :goto_7

    :cond_1a
    move v2, v0

    goto :goto_9

    :cond_1b
    move v0, v3

    goto/16 :goto_2

    :cond_1c
    move v0, v3

    goto/16 :goto_6

    :cond_1d
    move v1, v4

    goto/16 :goto_4

    :cond_1e
    move v0, v5

    goto/16 :goto_2
.end method

.method private parsePage(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardPage;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v7, 0xffff

    const/4 v12, 0x2

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 281
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    .line 283
    if-eq v4, v12, :cond_0

    .line 284
    return-object v8

    .line 287
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string/jumbo v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    return-object v8

    .line 297
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v9

    move v5, v6

    move v0, v7

    move v1, v6

    move-object v2, v8

    move-object v3, v8

    .line 298
    :goto_0
    if-ge v5, v9, :cond_6

    .line 299
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v10

    .line 300
    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 301
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 298
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 303
    :cond_3
    const-string/jumbo v11, "mode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 304
    invoke-interface {p1, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 306
    :cond_4
    const-string/jumbo v11, "default"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 307
    invoke-interface {p1, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v1

    goto :goto_1

    .line 309
    :cond_5
    const-string/jumbo v11, "kdbid"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 310
    invoke-interface {p1, v5, v7}, Landroid/content/res/XmlResourceParser;->getAttributeUnsignedIntValue(II)I

    move-result v0

    goto :goto_1

    .line 314
    :cond_6
    if-eqz v3, :cond_7

    if-nez v2, :cond_8

    .line 316
    :cond_7
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    .line 317
    return-object v8

    .line 321
    :cond_8
    new-instance v5, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;

    invoke-direct {v5, v3, v2, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    if-nez v5, :cond_9

    .line 323
    return-object v8

    .line 325
    :cond_9
    invoke-virtual {v5, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->setDefault(Z)V

    .line 326
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    if-nez v0, :cond_d

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    move v0, v4

    .line 330
    :cond_a
    :goto_2
    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    .line 332
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 334
    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "page"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 345
    :cond_b
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mCombineKeys:Ljava/util/List;

    invoke-virtual {v5, v0}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->setCombineKeys(Ljava/util/List;)V

    .line 346
    return-object v5

    .line 337
    :cond_c
    if-ne v0, v12, :cond_a

    .line 338
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parseKey(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboardKey;

    move-result-object v1

    .line 340
    if-eqz v1, :cond_a

    .line 341
    invoke-virtual {v5, v1}, Lcom/nuance/flext9_OEM/input/HardKeyboardPage;->addKey(Lcom/nuance/flext9_OEM/input/HardKeyboardKey;)V

    goto :goto_2

    :cond_d
    move v0, v4

    goto :goto_2
.end method


# virtual methods
.method public parse(Landroid/content/res/XmlResourceParser;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nuance/flext9_OEM/input/HardKeyboard;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 186
    if-nez v0, :cond_3

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    :cond_0
    if-eq v0, v5, :cond_1

    .line 191
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 193
    if-ne v0, v6, :cond_0

    .line 194
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "hardkeyboard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 195
    return-object v4

    .line 204
    :cond_1
    :goto_0
    if-eq v0, v5, :cond_2

    .line 206
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    .line 208
    if-ne v0, v6, :cond_1

    .line 209
    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->parseHardKeyboard(Landroid/content/res/XmlResourceParser;)Lcom/nuance/flext9_OEM/input/HardKeyboard;

    move-result-object v2

    .line 210
    iget-object v3, p0, Lcom/nuance/flext9_OEM/input/HardKeyboard$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/nuance/flext9_OEM/input/HardKeyboard;->setContext(Landroid/content/Context;)V

    .line 212
    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 219
    return-object v1

    .line 223
    :cond_3
    return-object v4
.end method
