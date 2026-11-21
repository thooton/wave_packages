.class Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;
.super Ljava/lang/Object;
.source "IMEMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/flext9_OEM/input/IMEMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImeMenu"
.end annotation


# static fields
.field static final GRID:I = 0x2

.field static final LINK:I = 0x1

.field static final MENU:I = 0x3


# instance fields
.field language:Ljava/lang/String;

.field menuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;


# direct methods
.method static synthetic -wrap0(Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->executeMenuItem(Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;)V

    return-void
.end method

.method constructor <init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V
    .locals 1

    .prologue
    .line 135
    iput-object p1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    .line 137
    return-void
.end method

.method private clearAllItems()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    return-void
.end method

.method private executeGridTask(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "%symbols%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;

    iget-object v1, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v1}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get3(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v2}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get1(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 225
    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/HardKeySymbolWindow;->showWindow()V

    .line 227
    :cond_0
    return-void
.end method

.method private executeLinkTask(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method private executeMenuItem(Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;)V
    .locals 1

    .prologue
    .line 202
    iget v0, p1, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->eventType:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->executeLinkTask(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->executeGridTask(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :pswitch_2
    iget-object v0, p1, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->value:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->executeMenuTask(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private executeMenuTask(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "%languages%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get2(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->showLanguageMenuWrap()V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string/jumbo v1, "%options%"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get2(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Lcom/nuance/flext9_OEM/input/IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/flext9_OEM/input/IME;->showOptionMenuWrap()V

    goto :goto_0
.end method


# virtual methods
.method public getCharSequenceforAll()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 191
    new-array v3, v2, [Ljava/lang/CharSequence;

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;

    iget-object v0, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->itemText:Ljava/lang/String;

    aput-object v0, v3, v1

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_0
    return-object v3
.end method

.method public readImeItems(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v1, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 146
    iget-object v0, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-static {v0}, Lcom/nuance/flext9_OEM/input/IMEMenuView;->-get3(Lcom/nuance/flext9_OEM/input/IMEMenuView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    move-object v0, v1

    move v2, v3

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_7

    .line 151
    if-ne v6, v8, :cond_6

    .line 152
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 153
    const-string/jumbo v7, "menu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 154
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v2, v4

    .line 155
    goto :goto_0

    .line 158
    :cond_1
    const-string/jumbo v7, "item"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    .line 159
    new-instance v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;

    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->this$0:Lcom/nuance/flext9_OEM/input/IMEMenuView;

    invoke-direct {v0, v6}, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;-><init>(Lcom/nuance/flext9_OEM/input/IMEMenuView;)V

    .line 160
    invoke-interface {v5, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->value:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    const-string/jumbo v7, "event"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 163
    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v5, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    .line 166
    const-string/jumbo v7, "Link"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 167
    iput v4, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->eventType:I

    .line 173
    :cond_3
    :goto_1
    invoke-interface {v5, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->itemText:Ljava/lang/String;

    .line 174
    iget-object v6, p0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenu;->menuItems:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 175
    goto :goto_0

    .line 168
    :cond_4
    const-string/jumbo v7, "Grid"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    iput v8, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->eventType:I

    goto :goto_1

    .line 170
    :cond_5
    const-string/jumbo v7, "Menu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 171
    iput v9, v0, Lcom/nuance/flext9_OEM/input/IMEMenuView$ImeMenuItem;->eventType:I

    goto :goto_1

    .line 179
    :cond_6
    if-ne v6, v9, :cond_0

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "menu"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    if-eqz v2, :cond_0

    .line 182
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    .line 183
    return-void

    .line 187
    :cond_7
    return-void
.end method
