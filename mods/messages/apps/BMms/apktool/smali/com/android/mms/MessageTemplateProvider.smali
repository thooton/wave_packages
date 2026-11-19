.class public Lcom/android/mms/MessageTemplateProvider;
.super Landroid/content/ContentProvider;
.source "MessageTemplateProvider.java"


# static fields
.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mLanguageTemplateFile:Ljava/io/File;

.field private mLocale:Ljava/lang/String;

.field private preDefineNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 104
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 105
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.mms.MessageTemplateProvider"

    const-string/jumbo v2, "messages"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v1, "com.android.mms.MessageTemplateProvider"

    const-string/jumbo v2, "messages/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 91
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    .line 111
    return-void
.end method

.method private createMessageTemplateXML(Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 571
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    const-string/jumbo v4, "/Templates"

    .line 571
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    .line 573
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "message_template.xml"

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 576
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 583
    :goto_0
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    .line 584
    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    .line 586
    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 588
    const-string/jumbo v1, "UTF-8"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v5, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 595
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 596
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 597
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 598
    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 600
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 603
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 602
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v8

    .line 605
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 604
    invoke-static {v1}, Lcom/android/mms/MmsConfig;->isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v9

    move v1, v2

    .line 607
    :goto_1
    if-eq v0, v12, :cond_2

    .line 609
    const/4 v10, 0x2

    if-ne v0, v10, :cond_3

    .line 610
    :try_start_4
    const-string/jumbo v0, ""

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "message"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 612
    if-eqz v8, :cond_1

    .line 613
    const-string/jumbo v0, ""

    const-string/jumbo v10, "rank"

    .line 614
    const-string/jumbo v11, "0"

    .line 613
    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 638
    :cond_0
    :goto_2
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result v0

    goto :goto_1

    .line 577
    :catch_0
    move-exception v0

    .line 579
    :try_start_5
    const-string/jumbo v1, "MessageTemplateProvider"

    const-string/jumbo v5, "Open message template file exception!"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v3

    goto :goto_0

    .line 615
    :cond_1
    if-eqz v9, :cond_0

    .line 616
    :try_start_6
    const-string/jumbo v0, ""

    const-string/jumbo v10, "timestamp"

    .line 617
    const-string/jumbo v11, "0"

    .line 616
    invoke-interface {v5, v0, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 640
    :catch_1
    move-exception v0

    .line 641
    :goto_3
    :try_start_7
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 643
    :cond_2
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 644
    iput v1, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 647
    :try_start_8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 653
    :goto_4
    :try_start_9
    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 654
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 660
    :goto_5
    iget-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->updateLanguageTemplatesFile(Ljava/io/File;)V

    .line 661
    return-void

    .line 620
    :cond_3
    const/4 v10, 0x3

    if-ne v0, v10, :cond_5

    .line 622
    :try_start_a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "MessageTemplate"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 624
    :goto_6
    if-ge v0, v1, :cond_0

    .line 625
    const-string/jumbo v10, ""

    const-string/jumbo v11, "preDefineNumState"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    const-string/jumbo v10, ""

    const-string/jumbo v11, "preDefineNumState"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 631
    :cond_4
    const-string/jumbo v0, ""

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v0, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 655
    :catch_2
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 658
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 634
    :cond_5
    const/4 v10, 0x4

    if-ne v0, v10, :cond_0

    .line 635
    :try_start_b
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 636
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 648
    :catch_3
    move-exception v0

    .line 649
    :try_start_c
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 651
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-object v0, v3

    goto :goto_4

    .line 640
    :catch_4
    move-exception v0

    move v1, v2

    goto/16 :goto_3
.end method

.method private getTimeInSeconds()Ljava/lang/String;
    .locals 2

    .prologue
    .line 681
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 683
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private reorderTemplatesRank(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v2

    .line 688
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 689
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 690
    new-instance v4, Lcom/android/mms/ext/util/TemplateNodes;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v5

    .line 691
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string/jumbo v6, "rank"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 690
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 692
    const-wide/16 v6, -0x1

    .line 690
    invoke-direct {v4, v5, v3, v6, v7}, Lcom/android/mms/ext/util/TemplateNodes;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 694
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 695
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 696
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ext/util/TemplateNodes;

    move v4, v2

    move v3, v1

    .line 697
    :goto_2
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v4, v1, :cond_2

    .line 698
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 699
    invoke-virtual {v0}, Lcom/android/mms/ext/util/TemplateNodes;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 700
    check-cast v1, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "rank"

    .line 701
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 700
    invoke-interface {v1, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    add-int/lit8 v3, v3, -0x1

    .line 697
    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1

    .line 707
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 709
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "update: save XML file failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v0, -0x1

    return v0

    .line 712
    :cond_4
    return v2
.end method

.method private updateLanguageTemplatesFile(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 665
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "message_template.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 666
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 667
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 668
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 669
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 677
    :goto_1
    return-void

    .line 672
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private updateXML()V
    .locals 10

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 348
    const v1, 0x7f060001

    .line 347
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 350
    if-nez v2, :cond_0

    .line 352
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "query: get XML documnet failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 355
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 356
    const-string/jumbo v0, "message"

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 358
    const-string/jumbo v4, "preDefineNumState"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 359
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 360
    const/4 v0, 0x0

    :goto_0
    iget v6, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    if-ge v0, v6, :cond_3

    if-ge v0, v5, :cond_3

    .line 361
    const-string/jumbo v6, "message"

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 362
    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 363
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "modify"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 364
    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 365
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 366
    aget-object v7, v1, v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 368
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 370
    const-string/jumbo v6, "MessageTemplateProvider"

    const-string/jumbo v7, "update: save XML file failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 373
    :cond_3
    return-void
.end method


# virtual methods
.method CreateMessageTemplateXML(Ljava/io/File;)Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 499
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 500
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 503
    :try_start_0
    invoke-interface {v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 505
    const-string/jumbo v0, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 507
    const-string/jumbo v0, ""

    const-string/jumbo v4, "MessageTemplate"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 510
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 511
    const v4, 0x7f060001

    .line 510
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 513
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v5

    .line 516
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/android/mms/MmsConfig;->isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v6

    move v0, v1

    .line 518
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 519
    const-string/jumbo v7, ""

    const-string/jumbo v8, "message"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 520
    if-eqz v5, :cond_1

    .line 521
    const-string/jumbo v7, ""

    const-string/jumbo v8, "rank"

    .line 522
    const-string/jumbo v9, "0"

    .line 521
    invoke-interface {v2, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    :cond_0
    :goto_1
    aget-object v7, v4, v0

    invoke-interface {v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 528
    const-string/jumbo v7, ""

    const-string/jumbo v8, "message"

    invoke-interface {v2, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    :cond_1
    if-eqz v6, :cond_0

    .line 524
    const-string/jumbo v7, ""

    const-string/jumbo v8, "timestamp"

    .line 525
    const-string/jumbo v9, "0"

    .line 524
    invoke-interface {v2, v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 539
    :catch_0
    move-exception v0

    .line 541
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v1

    :cond_2
    move v0, v1

    .line 531
    :goto_2
    :try_start_1
    iget v4, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    if-ge v0, v4, :cond_3

    .line 532
    const-string/jumbo v4, ""

    const-string/jumbo v5, "preDefineNumState"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 533
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 534
    const-string/jumbo v4, ""

    const-string/jumbo v5, "preDefineNumState"

    invoke-interface {v2, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 537
    :cond_3
    const-string/jumbo v0, ""

    const-string/jumbo v4, "MessageTemplate"

    invoke-interface {v2, v0, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 538
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 547
    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 557
    :try_start_3
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 558
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 566
    return v10

    .line 548
    :catch_1
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 552
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v1

    .line 559
    :catch_2
    move-exception v0

    .line 561
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 563
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v2, "CreateMessageTemplateXML occurs exception!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    return v1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 116
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 118
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete: Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not match!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v8

    .line 121
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    const-string/jumbo v0, "Emmet"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v2

    .line 125
    if-nez v2, :cond_1

    .line 127
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "delete: Get XML Document failded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v8

    .line 130
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 132
    const-string/jumbo v0, "message"

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 133
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    if-gez v1, :cond_3

    .line 135
    :cond_2
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nodelist length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v8

    .line 138
    :cond_3
    iget v0, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    if-ge v1, v0, :cond_5

    .line 140
    const-string/jumbo v0, "preDefineNumState"

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move v0, v1

    .line 141
    :goto_0
    iget v6, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_4

    .line 142
    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 143
    add-int/lit8 v7, v0, 0x1

    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 144
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_4
    iget v0, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 147
    const-string/jumbo v5, "modify"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 149
    :cond_5
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 152
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "delete: save xml file error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v8

    .line 155
    :cond_6
    return v9
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method getXMLDoc()Lorg/w3c/dom/Document;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 381
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 383
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "message_template.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 392
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 398
    const-string/jumbo v3, "MessageTemplateProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "init template file at: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0, v1}, Lcom/android/mms/MessageTemplateProvider;->CreateMessageTemplateXML(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 400
    return-object v7

    .line 384
    :catch_0
    move-exception v0

    .line 387
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Generate DOM builder failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-object v7

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 406
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 407
    const-string/jumbo v5, "/Templates"

    .line 406
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 407
    iget-object v5, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    .line 406
    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 410
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 417
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/mms/MessageTemplateProvider;->updateLanguageTemplatesFile(Ljava/io/File;)V

    .line 419
    :cond_2
    iput-object v2, p0, Lcom/android/mms/MessageTemplateProvider;->mLocale:Ljava/lang/String;

    .line 420
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    const-string/jumbo v5, "/Templates"

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    .line 422
    iget-object v3, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 423
    invoke-direct {p0, v2}, Lcom/android/mms/MessageTemplateProvider;->createMessageTemplateXML(Ljava/lang/String;)V

    .line 431
    :cond_3
    :goto_1
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 441
    :try_start_3
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 451
    if-nez v0, :cond_5

    .line 453
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Cannot parse the message template file!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-object v7

    .line 411
    :catch_1
    move-exception v4

    .line 413
    const-string/jumbo v5, "MessageTemplateProvider"

    const-string/jumbo v6, "Open file exception!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 425
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/MessageTemplateProvider;->updateXML()V

    goto :goto_1

    .line 432
    :catch_2
    move-exception v0

    .line 435
    const-string/jumbo v1, "MessageTemplateProvider"

    const-string/jumbo v2, "Open message template file exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 437
    return-object v7

    .line 446
    :catch_3
    move-exception v0

    .line 448
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 449
    return-object v7

    .line 442
    :catch_4
    move-exception v0

    .line 444
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 445
    return-object v7

    .line 456
    :cond_5
    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 166
    if-eqz p2, :cond_0

    const-string/jumbo v0, "fromQRCode"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "insert: values received through intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const-string/jumbo v0, "fromQRCode"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->createMessageTemplateXML(Ljava/lang/String;)V

    .line 170
    return-object v5

    .line 173
    :cond_0
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 175
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insert: Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not match!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v5

    .line 179
    :cond_1
    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "insert: values not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v5

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 186
    if-nez v0, :cond_3

    .line 188
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "insert: Get XML Document failded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-object v5

    .line 191
    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "message"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 193
    const-string/jumbo v3, "message"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setTextContent(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isMostlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    const-string/jumbo v3, "rank"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_4
    :goto_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 201
    invoke-virtual {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 203
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Save XML Document failded!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-object v5

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isMostRecentlyUsedTemplatesEnable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    const-string/jumbo v3, "timestamp"

    const-string/jumbo v4, "0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 206
    :cond_6
    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 212
    const v1, 0x7f060001

    .line 211
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 220
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 222
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query: Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not match!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    return-object v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v0

    .line 227
    if-nez v0, :cond_1

    .line 229
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "query: get XML documnet failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 233
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 234
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 236
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string/jumbo v2, "message"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 237
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 239
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 241
    if-eqz p5, :cond_5

    .line 242
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 243
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 244
    const-string/jumbo v5, "rank"

    if-ne p5, v5, :cond_3

    .line 245
    new-instance v5, Lcom/android/mms/ext/util/TemplateNodes;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 246
    const-string/jumbo v7, "rank"

    .line 245
    invoke-interface {v4, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 247
    const-wide/16 v8, -0x1

    .line 245
    invoke-direct {v5, v6, v4, v8, v9}, Lcom/android/mms/ext/util/TemplateNodes;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_3
    const-string/jumbo v5, "timestamp"

    if-ne p5, v5, :cond_2

    .line 249
    new-instance v5, Lcom/android/mms/ext/util/TemplateNodes;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 251
    const-string/jumbo v7, "timestamp"

    .line 250
    invoke-interface {v4, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 249
    const/4 v4, -0x1

    invoke-direct {v5, v6, v4, v8, v9}, Lcom/android/mms/ext/util/TemplateNodes;-><init>(Ljava/lang/String;IJ)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_4
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 255
    const/4 v0, 0x0

    .line 256
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ext/util/TemplateNodes;

    .line 257
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0}, Lcom/android/mms/ext/util/TemplateNodes;->getContent()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    aput-object v0, v4, v5

    .line 258
    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 259
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 262
    :cond_5
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 263
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 264
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 265
    invoke-virtual {v2, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 268
    :cond_6
    return-object v2
.end method

.method saveXMLDoc(Lorg/w3c/dom/Document;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 460
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 463
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 471
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 475
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "message_template.xml"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 483
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 485
    :try_start_2
    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 492
    iget-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/android/mms/MessageTemplateProvider;->mLanguageTemplateFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/mms/MessageTemplateProvider;->updateLanguageTemplatesFile(Ljava/io/File;)V

    .line 495
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 464
    :catch_0
    move-exception v0

    .line 467
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Generate transFormer failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v5

    .line 476
    :catch_1
    move-exception v0

    .line 479
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Open message template file failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return v5

    .line 486
    :catch_2
    move-exception v0

    .line 489
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "Transform XML File failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    return v5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 274
    sget-object v0, Lcom/android/mms/MessageTemplateProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 276
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update: Uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not match!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v9

    .line 280
    :cond_0
    const-string/jumbo v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    :cond_1
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "update: values not valid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v9

    .line 286
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/MessageTemplateProvider;->getXMLDoc()Lorg/w3c/dom/Document;

    move-result-object v4

    .line 287
    if-nez v4, :cond_3

    .line 289
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "update: get XML documnet failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v9

    .line 293
    :cond_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    .line 294
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 295
    const-string/jumbo v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 296
    const-string/jumbo v3, "message"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    if-ltz v1, :cond_4

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 300
    :cond_4
    const-string/jumbo v0, "MessageTemplateProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " nodelist length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return v9

    .line 304
    :cond_5
    const-string/jumbo v3, "edited"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 305
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 306
    iget v7, p0, Lcom/android/mms/MessageTemplateProvider;->preDefineNum:I

    if-ge v1, v7, :cond_6

    .line 308
    const-string/jumbo v7, "preDefineNumState"

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 309
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 310
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 311
    const-string/jumbo v1, "modify"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    .line 314
    :cond_6
    invoke-interface {v3, v6}, Lorg/w3c/dom/Node;->setTextContent(Ljava/lang/String;)V

    :cond_7
    move v1, v2

    move v3, v2

    .line 318
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_a

    .line 319
    invoke-interface {v5, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 320
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 321
    const-string/jumbo v7, "rank"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 322
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .line 323
    const-string/jumbo v7, "rank"

    .line 322
    invoke-interface {v3, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 324
    add-int/lit8 v3, v3, 0x1

    .line 325
    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "rank"

    .line 326
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 325
    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_8
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 327
    :cond_9
    const-string/jumbo v7, "timestamp"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 328
    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v7, "timestamp"

    .line 329
    invoke-direct {p0}, Lcom/android/mms/MessageTemplateProvider;->getTimeInSeconds()Ljava/lang/String;

    move-result-object v8

    .line 328
    invoke-interface {v0, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 334
    :cond_a
    invoke-virtual {p0, v4}, Lcom/android/mms/MessageTemplateProvider;->saveXMLDoc(Lorg/w3c/dom/Document;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 336
    const-string/jumbo v0, "MessageTemplateProvider"

    const-string/jumbo v1, "update: save XML file failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v9

    .line 340
    :cond_b
    const v0, 0xea60

    if-le v3, v0, :cond_c

    .line 341
    invoke-direct {p0, v5, v4}, Lcom/android/mms/MessageTemplateProvider;->reorderTemplatesRank(Lorg/w3c/dom/NodeList;Lorg/w3c/dom/Document;)I

    move-result v0

    return v0

    .line 343
    :cond_c
    return v2
.end method
