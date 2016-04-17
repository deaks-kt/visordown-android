.class public Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;
.super Ljava/lang/Object;
.source "RSSReaderApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/immediate/mobile/visordown/RSSReaderApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RSSReaderService"
.end annotation


# instance fields
.field private categories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/Creative;",
            ">;"
        }
    .end annotation
.end field

.field private feedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Luk/co/immediate/mobile/visordown/RSSReaderApplication;


# direct methods
.method public constructor <init>(Luk/co/immediate/mobile/visordown/RSSReaderApplication;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->this$0:Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "e"    # Lorg/w3c/dom/Element;

    .prologue
    .line 278
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 279
    .local v2, "child":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/CharacterData;

    if-eqz v3, :cond_0

    .line 280
    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/CharacterData;

    move-object v1, v0

    .line 281
    .local v1, "cd":Lorg/w3c/dom/CharacterData;
    invoke-interface {v1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 285
    .end local v1    # "cd":Lorg/w3c/dom/CharacterData;
    .end local v2    # "child":Lorg/w3c/dom/Node;
    :goto_0
    return-object v3

    .line 283
    :catch_0
    move-exception v3

    .line 285
    :cond_0
    const-string v3, ""

    goto :goto_0
.end method

.method private getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "thumbnailUrl"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 258
    .local v0, "galleryBitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 259
    .local v1, "in2":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 264
    .end local v1    # "in2":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 261
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->feedItems:Ljava/util/List;

    .line 56
    iput-object v0, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->categories:Ljava/util/Map;

    .line 57
    return-void
.end method

.method public getCategories()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->categories:Ljava/util/Map;

    if-nez v9, :cond_0

    .line 61
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->categories:Ljava/util/Map;

    .line 66
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 67
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v8, Ljava/net/URL;

    const-string v9, "http://www.visordown.com/resources/site/article/getcategories.aspx"

    invoke-direct {v8, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, "u":Ljava/net/URL;
    invoke-virtual {v8}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 71
    .local v3, "doc":Lorg/w3c/dom/Document;
    const-string v9, "category"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 73
    .local v7, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lt v6, v9, :cond_1

    .line 90
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i":I
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "u":Ljava/net/URL;
    :cond_0
    :goto_1
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->categories:Ljava/util/Map;

    return-object v9

    .line 75
    .restart local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "i":I
    .restart local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v8    # "u":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Element;

    .line 76
    .local v5, "element":Lorg/w3c/dom/Element;
    new-instance v1, Ljava/lang/Integer;

    const-string v9, "categoryid"

    invoke-virtual {p0, v5, v9}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 77
    .local v1, "categoryId":Ljava/lang/Integer;
    const-string v9, "name"

    invoke-virtual {p0, v5, v9}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "categoryName":Ljava/lang/String;
    const-string v9, "Motorcycle news : "

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v9, "Motorcycle news: "

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 81
    const-string v9, "Motorcycle racing news: "

    const-string v10, ""

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 83
    iget-object v9, p0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->categories:Ljava/util/Map;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "categoryId":Ljava/lang/Integer;
    .end local v2    # "categoryName":Ljava/lang/String;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "element":Lorg/w3c/dom/Element;
    .end local v6    # "i":I
    .end local v7    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v8    # "u":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 86
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getCreatives()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/Creative;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->creatives:Ljava/util/List;

    if-nez v15, :cond_0

    .line 183
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->creatives:Ljava/util/List;

    .line 188
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v15

    invoke-virtual {v15}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 189
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Ljava/net/URL;

    const-string v15, "http://ad1.emediate.dk/eas?cu=18937;cre=mu;js=n;target=_blank"

    invoke-direct {v13, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 191
    .local v13, "u":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 193
    .local v4, "doc":Lorg/w3c/dom/Document;
    const-string v15, "creative"

    invoke-interface {v4, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 195
    .local v12, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-lt v8, v15, :cond_1

    .line 250
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v13    # "u":Ljava/net/URL;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->creatives:Ljava/util/List;

    return-object v15

    .line 197
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v8    # "i":I
    .restart local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "u":Ljava/net/URL;
    :cond_1
    :try_start_1
    invoke-interface {v12, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 198
    .local v6, "element":Lorg/w3c/dom/Element;
    const-string v15, "image_src"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, "imageSrc":Ljava/lang/String;
    new-instance v14, Ljava/lang/Integer;

    const-string v15, "width"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 200
    .local v14, "width":Ljava/lang/Integer;
    new-instance v7, Ljava/lang/Integer;

    const-string v15, "height"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v7, v15}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 201
    .local v7, "height":Ljava/lang/Integer;
    const-string v15, "landing_page"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v15}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, "landingPage":Ljava/lang/String;
    new-instance v3, Luk/co/immediate/mobile/visordown/Creative;

    invoke-direct {v3}, Luk/co/immediate/mobile/visordown/Creative;-><init>()V

    .line 204
    .local v3, "creative":Luk/co/immediate/mobile/visordown/Creative;
    iput-object v9, v3, Luk/co/immediate/mobile/visordown/Creative;->imageSrc:Ljava/lang/String;

    .line 205
    iput-object v11, v3, Luk/co/immediate/mobile/visordown/Creative;->landingPage:Ljava/lang/String;

    .line 206
    iput-object v7, v3, Luk/co/immediate/mobile/visordown/Creative;->height:Ljava/lang/Integer;

    .line 207
    iput-object v14, v3, Luk/co/immediate/mobile/visordown/Creative;->width:Ljava/lang/Integer;

    .line 209
    iget-object v15, v3, Luk/co/immediate/mobile/visordown/Creative;->width:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v15

    sparse-switch v15, :sswitch_data_0

    .line 230
    :goto_2
    :try_start_2
    new-instance v15, Ljava/net/URL;

    iget-object v0, v3, Luk/co/immediate/mobile/visordown/Creative;->imageSrc:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v10

    .line 232
    .local v10, "in":Ljava/io/InputStream;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 233
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iput-object v1, v3, Luk/co/immediate/mobile/visordown/Creative;->bitmap:Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 243
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v10    # "in":Ljava/io/InputStream;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->creatives:Ljava/util/List;

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 212
    :sswitch_0
    const/16 v15, 0x140

    iput v15, v3, Luk/co/immediate/mobile/visordown/Creative;->density:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 245
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "creative":Luk/co/immediate/mobile/visordown/Creative;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "element":Lorg/w3c/dom/Element;
    .end local v7    # "height":Ljava/lang/Integer;
    .end local v8    # "i":I
    .end local v9    # "imageSrc":Ljava/lang/String;
    .end local v11    # "landingPage":Ljava/lang/String;
    .end local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v13    # "u":Ljava/net/URL;
    .end local v14    # "width":Ljava/lang/Integer;
    :catch_0
    move-exception v5

    .line 246
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 216
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "creative":Luk/co/immediate/mobile/visordown/Creative;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "element":Lorg/w3c/dom/Element;
    .restart local v7    # "height":Ljava/lang/Integer;
    .restart local v8    # "i":I
    .restart local v9    # "imageSrc":Ljava/lang/String;
    .restart local v11    # "landingPage":Ljava/lang/String;
    .restart local v12    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v13    # "u":Ljava/net/URL;
    .restart local v14    # "width":Ljava/lang/Integer;
    :sswitch_1
    const/16 v15, 0xf0

    :try_start_4
    iput v15, v3, Luk/co/immediate/mobile/visordown/Creative;->density:I

    goto :goto_2

    .line 220
    :sswitch_2
    const/16 v15, 0xa0

    iput v15, v3, Luk/co/immediate/mobile/visordown/Creative;->density:I

    goto :goto_2

    .line 224
    :sswitch_3
    const/16 v15, 0x78

    iput v15, v3, Luk/co/immediate/mobile/visordown/Creative;->density:I

    goto :goto_2

    .line 235
    :catch_1
    move-exception v5

    .line 237
    .local v5, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_3

    .line 238
    .end local v5    # "e":Ljava/net/MalformedURLException;
    :catch_2
    move-exception v5

    .line 240
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 209
    :sswitch_data_0
    .sparse-switch
        0x1aa -> :sswitch_3
        0x1d6 -> :sswitch_2
        0x280 -> :sswitch_1
        0x3c0 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    return-object v0
.end method

.method protected getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parent"    # Lorg/w3c/dom/Element;
    .param p2, "label"    # Ljava/lang/String;

    .prologue
    .line 268
    .line 269
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 268
    invoke-direct {p0, v0}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getCharacterDataFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeedItemByUrl(Ljava/lang/String;)Luk/co/immediate/mobile/visordown/FeedItem;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 41
    const/4 v1, 0x0

    .line 43
    .local v1, "foundFeedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    invoke-virtual {p0}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getFeedItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Luk/co/immediate/mobile/visordown/FeedItem;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    return-object v1

    .line 44
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Luk/co/immediate/mobile/visordown/FeedItem;

    .line 46
    .local v0, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    iget-object v3, v0, Luk/co/immediate/mobile/visordown/FeedItem;->url:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 47
    move-object v1, v0

    goto :goto_0
.end method

.method public getFeedItems()Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Luk/co/immediate/mobile/visordown/FeedItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->this$0:Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 98
    .local v15, "settings":Landroid/content/SharedPreferences;
    const-string v18, "pref_news_categories"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "categoryList":Ljava/lang/String;
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 102
    invoke-virtual/range {p0 .. p0}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getCategories()Ljava/util/Map;

    move-result-object v4

    .line 104
    .local v4, "categories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_3

    .line 118
    .end local v4    # "categories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v12    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->feedItems:Ljava/util/List;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 119
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->feedItems:Ljava/util/List;

    .line 123
    :try_start_0
    const-string v16, "medium"

    .line 125
    .local v16, "thumbnailSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->this$0:Luk/co/immediate/mobile/visordown/RSSReaderApplication;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Luk/co/immediate/mobile/visordown/RSSReaderApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0xf

    .line 127
    const/16 v19, 0x4

    .line 125
    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 129
    const-string v16, "large"

    .line 133
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 134
    .local v3, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v17, Ljava/net/URL;

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "http://www.visordown.com/feeds/rss/articles/content/true/thumbnailsize/"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/take/20/categories/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v17, "u":Ljava/net/URL;
    invoke-virtual/range {v17 .. v17}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 138
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string v18, "item"

    move-object/from16 v0, v18

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 140
    .local v14, "nodes":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v0, v18

    if-lt v11, v0, :cond_5

    .line 176
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "i":I
    .end local v14    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v16    # "thumbnailSize":Ljava/lang/String;
    .end local v17    # "u":Ljava/net/URL;
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->feedItems:Ljava/util/List;

    move-object/from16 v18, v0

    return-object v18

    .line 105
    .restart local v4    # "categories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v12    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 107
    .local v5, "categoryId":Ljava/lang/Integer;
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 109
    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 111
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 114
    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 142
    .end local v4    # "categories":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v5    # "categoryId":Ljava/lang/Integer;
    .end local v12    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "i":I
    .restart local v14    # "nodes":Lorg/w3c/dom/NodeList;
    .restart local v16    # "thumbnailSize":Ljava/lang/String;
    .restart local v17    # "u":Ljava/net/URL;
    :cond_5
    :try_start_1
    new-instance v10, Luk/co/immediate/mobile/visordown/FeedItem;

    invoke-direct {v10}, Luk/co/immediate/mobile/visordown/FeedItem;-><init>()V

    .line 144
    .local v10, "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    invoke-interface {v14, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 145
    .local v9, "element":Lorg/w3c/dom/Element;
    const-string v18, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->title:Ljava/lang/String;

    .line 146
    const-string v18, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->description:Ljava/lang/String;

    .line 147
    const-string v18, "link"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->url:Ljava/lang/String;

    .line 148
    const-string v18, "pubDate"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->datePosted:Ljava/lang/String;

    .line 149
    const-string v18, "content:encoded"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElementValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->body:Ljava/lang/String;

    .line 150
    const-string v18, "media:thumbnail"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getElement(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    const-string v19, "url"

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

### hack to deal with invalid RSS feed

    const-string v19, "original"

    const-string v20, "tinycropped"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

###

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailUrl:Ljava/lang/String;

    .line 151
    new-instance v18, Ljava/net/URL;

    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    .line 152
    .local v13, "in":Ljava/io/InputStream;
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 153
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iput-object v2, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 155
    const/16 v18, 0x3

    move/from16 v0, v18

    if-gt v11, v0, :cond_7

    .line 157
    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tinycropped"

    const-string v20, "large"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_6

    .line 160
    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tinycropped"

    const-string v20, "productimage"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    .line 162
    :cond_6
    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 164
    iget-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->thumbnailUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "tinycropped"

    const-string v20, "medium"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->getImageBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v10, Luk/co/immediate/mobile/visordown/FeedItem;->galleryBitmap:Landroid/graphics/Bitmap;

    .line 168
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Luk/co/immediate/mobile/visordown/RSSReaderApplication$RSSReaderService;->feedItems:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 170
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "element":Lorg/w3c/dom/Element;
    .end local v10    # "feedItem":Luk/co/immediate/mobile/visordown/FeedItem;
    .end local v11    # "i":I
    .end local v13    # "in":Ljava/io/InputStream;
    .end local v14    # "nodes":Lorg/w3c/dom/NodeList;
    .end local v16    # "thumbnailSize":Ljava/lang/String;
    .end local v17    # "u":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 171
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method
