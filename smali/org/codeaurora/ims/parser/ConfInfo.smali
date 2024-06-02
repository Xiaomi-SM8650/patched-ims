.class public Lorg/codeaurora/ims/parser/ConfInfo;
.super Ljava/lang/Object;
.source "ConfInfo.java"


# static fields
.field public static final INDEX_DISPLAY_TEXT:I = 0x1

.field public static final INDEX_ENDPOINT:I = 0x2

.field public static final INDEX_STATUS:I = 0x3

.field public static final INDEX_USER:I = 0x0

.field public static final MAX_CONF_PARTICIPANT_INFO:I = 0x4

.field private static sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;


# instance fields
.field public LOGTAG:Ljava/lang/String;

.field private final STATE_DELETE:I

.field private final STATE_FULL:I

.field private final STATE_PARTIAL:I

.field private final VERSION_EQUAL:I

.field private final VERSION_GREATER:I

.field private final VERSION_INVALID:I

.field private final VERSION_lESSER:I

.field public allowedPartial:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private debug:Z

.field public mCachedElement:Lorg/codeaurora/ims/parser/Element;

.field public mNewElement:Lorg/codeaurora/ims/parser/Element;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_INVALID:I

    .line 34
    const/4 v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_EQUAL:I

    .line 35
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_GREATER:I

    .line 36
    const/4 v1, 0x3

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->VERSION_lESSER:I

    .line 37
    const/4 v1, 0x4

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_FULL:I

    .line 38
    const/4 v1, 0x5

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_PARTIAL:I

    .line 39
    const/4 v1, 0x6

    iput v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->STATE_DELETE:I

    .line 40
    const-string v1, "ConfInfo"

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    .line 42
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->debug:Z

    .line 56
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 57
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 58
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->preparePartialList()V

    .line 60
    return-void
.end method

.method private UpdateConfDesElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 570
    sget-object v0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method private UpdateConfInfoElement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 566
    sget-object v0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/SAXXMLHandler;->getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return-void
.end method

.method private checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 4
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 508
    const-string v0, "full"

    .line 510
    .local v0, "resultantState":Ljava/lang/String;
    const-string v1, "state"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "elementState":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 512
    move-object v0, v1

    .line 514
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notification state is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " element state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 515
    return-object v0
.end method

.method private compareElements(Lorg/codeaurora/ims/parser/Element;)Z
    .locals 4
    .param p1, "lhs"    # Lorg/codeaurora/ims/parser/Element;

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "index":I
    const/4 v1, 0x0

    .line 576
    .local v1, "lindex":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 577
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 578
    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v3

    .line 577
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 587
    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 589
    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v3

    .line 588
    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    const/4 v2, 0x1

    return v2

    .line 593
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private dumpstate()V
    .locals 8

    .line 92
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v0

    .line 93
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    if-eqz v0, :cond_3

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 95
    .local v1, "length":I
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sublist length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SubElement list Element at Index"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 99
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 102
    .local v3, "length2":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubElement List Length:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 103
    const/4 v4, 0x0

    .local v4, "index2":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 104
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 105
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v7}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/Element;

    .line 106
    invoke-virtual {v7}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 104
    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 108
    .end local v3    # "length2":I
    .end local v4    # "index2":I
    :cond_0
    goto :goto_2

    .line 109
    :cond_1
    const-string v3, "List two is null"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 97
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 112
    .end local v1    # "length":I
    .end local v2    # "index":I
    :cond_2
    goto :goto_3

    .line 113
    :cond_3
    const-string v1, "List one is null"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 115
    :goto_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->getUserUriList()[Ljava/lang/String;

    .line 116
    return-void
.end method

.method private getConfStateValue()I
    .locals 1

    .line 610
    const/4 v0, 0x1

    return v0
.end method

.method private getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)I
    .locals 5
    .param p2, "source"    # Lorg/codeaurora/ims/parser/Element;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 231
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 232
    .local v0, "length":I
    const/4 v1, -0x1

    .line 233
    .local v1, "ret":I
    invoke-virtual {p2, p3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 235
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 236
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4, p3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 237
    move v1, v3

    .line 238
    goto :goto_1

    .line 235
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return v1
.end method

.method private getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I
    .locals 4
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 489
    .local p1, "aList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    const/4 v0, -0x1

    .line 490
    .local v0, "iIndex":I
    if-eqz p1, :cond_1

    .line 491
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 492
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 493
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    move v0, v2

    .line 495
    goto :goto_1

    .line 492
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private getKey(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;
    .locals 3
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "tag":Ljava/lang/String;
    const-string v2, "user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 269
    const-string v2, "endpoint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 270
    const-string v2, "entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    const-string v2, "media"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 273
    const-string v0, "id"

    goto :goto_1

    .line 274
    :cond_1
    const-string v2, "sidebars-by-ref"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 275
    const-string v0, "uri"

    goto :goto_1

    .line 277
    :cond_2
    const-string v2, " :Is not supported"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 271
    :cond_3
    :goto_0
    const-string v0, "entity"

    .line 279
    :goto_1
    return-object v0
.end method

.method private getParticipantInfoFromElement(Lorg/codeaurora/ims/parser/Element;)[Ljava/lang/String;
    .locals 6
    .param p1, "e"    # Lorg/codeaurora/ims/parser/Element;

    .line 201
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    .local v0, "participantInfo":[Ljava/lang/String;
    const-string v1, "entity"

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 207
    const-string v2, "display-text"

    invoke-virtual {p1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    .line 209
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v2

    .line 210
    .local v2, "userSubElements":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subElement["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 212
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "endpoint"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v4, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    .line 217
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    const-string v5, "status"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v0, v5

    .line 210
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "i":I
    :cond_1
    return-object v0
.end method

.method private handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;)V"
        }
    .end annotation

    .line 405
    .local p1, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    .local p2, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    const/4 v0, 0x0

    .line 406
    .local v0, "newSubElement":Lorg/codeaurora/ims/parser/Element;
    const/4 v1, -0x1

    .line 408
    .local v1, "iIndex":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 409
    .local v2, "newListLength":I
    const-string v3, "updateNotification : HandlePartialNotification"

    invoke-virtual {p0, v3}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 410
    const/4 v3, 0x0

    .local v3, "elementIndex":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 411
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New List :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at index : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "tag name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 414
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 415
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Old Element List :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getKey(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 419
    const-string v6, "Key is not null"

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 420
    invoke-direct {p0, p2, v0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnKeyMatch(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Ljava/lang/String;)I

    move-result v1

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification : HandlePartialNotification elementIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Old element index Index value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0, p2, v5, v0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto :goto_1

    .line 429
    :cond_0
    const-string v6, "key is null"

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 430
    nop

    .line 431
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-direct {p0, p2, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 432
    if-gez v1, :cond_1

    .line 433
    const-string v6, "element is not found after doing Index on key match"

    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0, p2, v5, v0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto :goto_1

    .line 437
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/Element;

    .line 438
    .local v5, "tempelement":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v6

    .line 439
    .local v6, "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v7

    .line 440
    .local v7, "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    if-eqz v7, :cond_2

    if-eqz v6, :cond_2

    .line 441
    invoke-direct {p0, v7, v6}, Lorg/codeaurora/ims/parser/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V

    .line 444
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "tempelement":Lorg/codeaurora/ims/parser/Element;
    .end local v6    # "mOldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    .end local v7    # "mNewList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 445
    :cond_3
    const-string v4, "Tag not valid for Partial Notification"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 446
    nop

    .line 447
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-direct {p0, p2, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->getElementIndexOnTagMatch(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 448
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newSubElement Tag Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 449
    if-ltz v1, :cond_4

    .line 450
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    .line 451
    .local v4, "tempelement":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {p0, p2, v4, v0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    goto :goto_2

    .line 454
    .end local v4    # "tempelement":Lorg/codeaurora/ims/parser/Element;
    :cond_4
    const-string v4, "May be tags are not at same level checking it by reindexing one level up"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 455
    if-eqz p2, :cond_5

    .line 456
    invoke-direct {p0, p2, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;

    .line 457
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/parser/Element;

    .line 458
    .restart local v4    # "tempelement":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {p0, p2, v4, v0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 410
    .end local v4    # "tempelement":Lorg/codeaurora/ims/parser/Element;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 464
    .end local v3    # "elementIndex":I
    :cond_6
    return-void
.end method

.method private isPartialAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tagname"    # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private preparePartialList()V
    .locals 2

    .line 286
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "conference-info"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "users"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "endpoint"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "sidebars-by-val"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->allowedPartial:Ljava/util/ArrayList;

    const-string v1, "sidebars-by-ref"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    return-void
.end method

.method private reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;
    .locals 4
    .param p2, "newSubElement"    # Lorg/codeaurora/ims/parser/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation

    .line 472
    .local p1, "mOldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    if-eqz p1, :cond_2

    .line 473
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 474
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/parser/Element;

    .line 475
    .local v1, "temp":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old Element List item at Index["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 477
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v1}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object p1

    .line 473
    .end local v1    # "temp":Lorg/codeaurora/ims/parser/Element;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "index":I
    :cond_1
    goto :goto_1

    .line 482
    :cond_2
    const-string v0, "old element list is null"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 485
    :goto_1
    return-object p1
.end method

.method private setMapAttributeWithDefaultValue()V
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 64
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v0

    const-string v1, "version"

    const-string v2, "NotApplicable"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static setSAXHandler(Lorg/codeaurora/ims/parser/SAXXMLHandler;)V
    .locals 0
    .param p0, "handler"    # Lorg/codeaurora/ims/parser/SAXXMLHandler;

    .line 68
    sput-object p0, Lorg/codeaurora/ims/parser/ConfInfo;->sHandler:Lorg/codeaurora/ims/parser/SAXXMLHandler;

    .line 69
    return-void
.end method

.method private updateAttributeList(Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;)V
    .locals 5
    .param p1, "cachedElement"    # Lorg/codeaurora/ims/parser/Element;
    .param p2, "newElement"    # Lorg/codeaurora/ims/parser/Element;

    .line 251
    new-instance v0, Ljava/util/HashSet;

    .line 252
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v0, "newElementTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, "mappedKeys":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 255
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 256
    .local v3, "key":Ljava/lang/String;
    nop

    .line 257
    invoke-virtual {p2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-virtual {p1, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .end local v3    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public UpdateConfInfoAllElement(Lorg/codeaurora/ims/parser/Element;)V
    .locals 0
    .param p1, "element"    # Lorg/codeaurora/ims/parser/Element;

    .line 562
    iput-object p1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 563
    return-void
.end method

.method public UpdateConfState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 558
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0, p1, p2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public UpdateConfState(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 554
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "state"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    return-void
.end method

.method public UpdateLocalVersionNumber(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 537
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "version"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 542
    :cond_0
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    return-void
.end method

.method public clearAndSetDefault()V
    .locals 0

    .line 605
    invoke-virtual {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->dispose()V

    .line 606
    invoke-direct {p0}, Lorg/codeaurora/ims/parser/ConfInfo;->setMapAttributeWithDefaultValue()V

    .line 607
    return-void
.end method

.method protected debugLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 80
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->debug:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 597
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_0

    .line 598
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    .line 599
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 600
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_1

    .line 601
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V

    .line 602
    :cond_1
    return-void
.end method

.method public getConfUriList()Landroid/telephony/ims/ImsConferenceState;
    .locals 11

    .line 152
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_2

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCachedElement reference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "version":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version string is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 156
    if-eqz v0, :cond_1

    const-string v1, "NotApplicable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 159
    const-string v1, "users"

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "user"

    invoke-static {v3, v1, v2}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object v1

    .line 161
    .local v1, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 162
    .local v2, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userlist length in getuserUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 164
    .local v4, "p":Landroid/os/Parcel;
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v2, :cond_0

    .line 166
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {p0, v7}, Lorg/codeaurora/ims/parser/ConfInfo;->getParticipantInfoFromElement(Lorg/codeaurora/ims/parser/Element;)[Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, "participantInfo":[Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "miui"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v7, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 185
    .local v8, "b":Landroid/os/Bundle;
    aget-object v9, v7, v6

    invoke-virtual {v8, v3, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v9, 0x2

    aget-object v9, v7, v9

    const-string v10, "endpoint"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/4 v9, 0x3

    aget-object v9, v7, v9

    const-string v10, "status"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v4, v8, v6}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 165
    .end local v7    # "participantInfo":[Ljava/lang/String;
    .end local v8    # "b":Landroid/os/Bundle;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 191
    .end local v5    # "index":I
    :cond_0
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 192
    sget-object v3, Landroid/telephony/ims/ImsConferenceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/ImsConferenceState;

    return-object v3

    .line 194
    .end local v0    # "version":Ljava/lang/String;
    .end local v1    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    .end local v2    # "length":I
    .end local v4    # "p":Landroid/os/Parcel;
    :cond_1
    goto :goto_1

    .line 195
    :cond_2
    const-string v0, "conf_version not valid"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 197
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 546
    .local p1, "parent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "state"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserUriList()[Ljava/lang/String;
    .locals 7

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "userUri":[Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachedElement reference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "version":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version string is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 127
    if-eqz v1, :cond_0

    const-string v2, "NotApplicable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    invoke-static {}, Lorg/codeaurora/ims/parser/Element;->clearMatchedElementsList()V

    .line 131
    const-string v2, "users"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "user"

    invoke-static {v4, v2, v3}, Lorg/codeaurora/ims/parser/Element;->getMatchedElements(Ljava/lang/String;Ljava/lang/String;Lorg/codeaurora/ims/parser/Element;)Ljava/util/ArrayList;

    move-result-object v2

    .line 133
    .local v2, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 134
    .local v3, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userlist length in getuserUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    .line 136
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 137
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/Element;

    const-string v6, "entity"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inside getUser URI list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    .end local v3    # "length":I
    .end local v4    # "index":I
    :cond_0
    goto :goto_1

    .line 143
    :cond_1
    const-string v1, "conf_version not valid"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 145
    :goto_1
    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->LOGTAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public updateConfXmlBytes([B)V
    .locals 6
    .param p1, "confxml"    # [B

    .line 72
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 73
    .local v0, "is":Ljava/io/InputStream;
    invoke-static {}, Lorg/codeaurora/ims/parser/SAXXMLParser;->getSAXXMLParser()Lorg/codeaurora/ims/parser/SAXXMLParser;

    move-result-object v1

    .line 74
    .local v1, "confparser":Lorg/codeaurora/ims/parser/SAXXMLParser;
    invoke-static {v0}, Lorg/codeaurora/ims/parser/SAXXMLParser;->parse(Ljava/io/InputStream;)Lorg/codeaurora/ims/parser/Element;

    move-result-object v2

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    .line 75
    const-string v2, "*************New Notification*****************"

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mNewElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2, v3, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V

    .line 77
    return-void
.end method

.method protected updateNotification(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;I)V
    .locals 7
    .param p2, "oldElement"    # Lorg/codeaurora/ims/parser/Element;
    .param p3, "newElement"    # Lorg/codeaurora/ims/parser/Element;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;",
            "Lorg/codeaurora/ims/parser/Element;",
            "Lorg/codeaurora/ims/parser/Element;",
            "I)V"
        }
    .end annotation

    .line 312
    .local p1, "oldList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    const-string v0, "Old Element Tag name: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UpdateNotification args OldList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OldElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NewElement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCachedElement element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 316
    :try_start_0
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->checkElementState(Lorg/codeaurora/ims/parser/Element;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "latestState":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "newTagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 319
    .local v3, "oldTagName":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 320
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 321
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 322
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Element Tag name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 326
    const-string v4, "full"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 327
    if-nez p1, :cond_1

    .line 328
    const-string v0, "Root Element is replced with Full state"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 329
    iput-object p3, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    goto/16 :goto_2

    .line 331
    :cond_1
    if-eqz p1, :cond_b

    .line 333
    if-gez p4, :cond_2

    .line 334
    const-string v0, "adding new Element with Full state"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 335
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 337
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replacing Element with Full state with parentTag"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 338
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getParentTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Index :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 339
    invoke-interface {p1, p4, p3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 344
    :cond_3
    const-string v4, "partial"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 345
    const-string v4, "updateNotification: partial state"

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 348
    :try_start_1
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/parser/ConfInfo;->isPartialAllowed(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Partial Notification state is supported to this element"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 351
    if-nez p2, :cond_5

    if-ltz p4, :cond_4

    goto :goto_0

    .line 372
    :cond_4
    const-string v0, "Partial Notification state, but no old element."

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 373
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 352
    :cond_5
    :goto_0
    invoke-virtual {p3}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v4

    .line 353
    .local v4, "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    if-eqz p1, :cond_6

    .line 359
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/parser/Element;

    move-object p2, v5

    .line 361
    :cond_6
    nop

    .line 362
    invoke-virtual {p2}, Lorg/codeaurora/ims/parser/Element;->getSubElementList()Ljava/util/List;

    move-result-object v5

    .line 363
    .local v5, "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->debugLog(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p2, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->updateAttributeList(Lorg/codeaurora/ims/parser/Element;Lorg/codeaurora/ims/parser/Element;)V

    .line 365
    if-nez v5, :cond_7

    .line 366
    nop

    .line 367
    invoke-direct {p0, v5, p3}, Lorg/codeaurora/ims/parser/ConfInfo;->reIndexOldElementList(Ljava/util/List;Lorg/codeaurora/ims/parser/Element;)Ljava/util/List;

    move-result-object v0

    move-object v5, v0

    .line 369
    :cond_7
    invoke-direct {p0, v4, v5}, Lorg/codeaurora/ims/parser/ConfInfo;->handleNotificationOnSubElements(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    .end local v4    # "mNewSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    .end local v5    # "oldSubElementList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/parser/Element;>;"
    nop

    .line 379
    :cond_8
    :goto_1
    goto :goto_2

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "Exception in handlePatialNotification "

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_1

    .line 380
    :cond_9
    const-string v0, "deleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 381
    const-string v0, "updateNotification Deleting Element"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 382
    const-string v0, "conference-info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 383
    invoke-interface {p1, p4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 385
    :cond_a
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->ClearAll()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 391
    .end local v1    # "latestState":Ljava/lang/String;
    .end local v2    # "newTagName":Ljava/lang/String;
    .end local v3    # "oldTagName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 392
    .local v0, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "Indexout of bound exception in UpdateNotification"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    .line 388
    .end local v0    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v0

    .line 389
    .local v0, "ex":Ljava/lang/NullPointerException;
    const-string v1, "Null Pointer Exception in UpdateNotification"

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 394
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :cond_b
    :goto_2
    nop

    .line 395
    :goto_3
    const-string v0, "updateNotification : comming out"

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/parser/ConfInfo;->log(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public validateConfInfoVersion(Lorg/codeaurora/ims/parser/Element;)I
    .locals 3
    .param p1, "newmessage"    # Lorg/codeaurora/ims/parser/Element;

    .line 519
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ConfInfo;->mCachedElement:Lorg/codeaurora/ims/parser/Element;

    .line 520
    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, "oldversion":I
    invoke-virtual {p1}, Lorg/codeaurora/ims/parser/Element;->getMapAttribute()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    nop

    .line 523
    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 524
    .local v1, "newversion":I
    if-ne v0, v1, :cond_0

    .line 525
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    return v2

    .line 526
    :cond_0
    if-le v0, v1, :cond_1

    .line 527
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    return v2

    .line 528
    :cond_1
    if-ge v0, v1, :cond_2

    .line 529
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    return v2

    .line 532
    .end local v1    # "newversion":I
    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    return v1
.end method
