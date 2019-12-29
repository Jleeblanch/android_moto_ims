.class public Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ViceSaxXmlHandler.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

.field private mDialogInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDoesDialogHaveSubElement:Z

.field private mDoesDialogLocalHaveSubElement:Z

.field private mDoesDialogRemoteHaveSubElement:Z

.field private mDoesRouteSetHaveSubElement:Z

.field private mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

.field private mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

.field private mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogInfoSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogLocalTargetSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaAttriSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRemoteTargetSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

.field private mViceDialogRouteSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mViceDialogSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    .line 47
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    .line 54
    const-string v0, "ViceSaxXmlHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->LOGTAG:Ljava/lang/String;

    .line 57
    const-string v0, "ViceSaxXmlHandler"

    const-string v1, "ViceSaxxHandler: constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    .line 59
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 371
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 372
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 373
    return-void
.end method

.method public dumpDialogInfo()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;",
            ">;"
        }
    .end annotation

    .line 507
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 508
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 509
    .local v0, "size":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 510
    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 511
    .local v3, "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    const-string v4, "ViceSaxXmlHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpDialogInfo["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] -> index , dialog ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", exclusive = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", direction = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", remote identity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    .line 520
    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", local identity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    .line 522
    invoke-static {v6}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 511
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 526
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 527
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 528
    .local v4, "parami":I
    move v5, v1

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 529
    const-string v6, "ViceSaxXmlHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpDialogInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] -> index , dialog local param name = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 531
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", dialog local param value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    .line 533
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 529
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 538
    .end local v4    # "parami":I
    .end local v5    # "j":I
    :cond_0
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 539
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 540
    iget-object v4, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 541
    .local v4, "mediaattri":I
    move v5, v1

    .restart local v5    # "j":I
    :goto_2
    if-ge v5, v4, :cond_1

    .line 542
    const-string v6, "ViceSaxXmlHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "dumpDialogInfo["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] -> index , dialog media type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 544
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", dialog media direction = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 546
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", dialog media port = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    .line 548
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v8, v8, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 542
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 509
    .end local v3    # "info":Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;
    .end local v4    # "mediaattri":I
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 553
    .end local v2    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    return-object v1

    .line 555
    .end local v0    # "size":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public endDocument()V
    .locals 3

    .line 499
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 500
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    nop

    .line 504
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 378
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_f

    .line 380
    const-string v0, "ViceSaxXmlHandler"

    const-string v1, "endelment:inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 383
    const-string v0, "sa:exclusive"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "sa:exclusive"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 384
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_SA attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "sa:exclusive"

    .line 387
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 386
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "sa:exclusive"

    .line 390
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->exclusive:Ljava/lang/String;

    goto/16 :goto_0

    .line 391
    :cond_0
    const-string v0, "state"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "state"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 392
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_STATE attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "state"

    .line 395
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "state"

    .line 398
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->state:Ljava/lang/String;

    goto/16 :goto_0

    .line 399
    :cond_1
    const-string v0, "duration"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "duration"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 400
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_DURATION attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "duration"

    .line 403
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    :cond_2
    const-string v0, "referred-by"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "referred-by"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_REFERRED_BY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "referred-by"

    .line 408
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 410
    :cond_3
    const-string v0, "dialog"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfoList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 413
    const-string v0, "ViceSaxXmlHandler"

    const-string v2, "VICE_DIALOG Element End."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_a

    .line 418
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 419
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_LOCAL_IDENTITY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "identity"

    .line 423
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-static {v3}, Lcom/qualcomm/ims/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "identity"

    .line 426
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->localIdentity:Ljava/lang/String;

    goto/16 :goto_1

    .line 428
    :cond_5
    const-string v0, "mediaType"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 429
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaType"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_TYPE attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "mediaType"

    .line 432
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "mediaType"

    .line 436
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaType:Ljava/lang/String;

    goto/16 :goto_1

    .line 437
    :cond_6
    const-string v0, "mediaDirection"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 438
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaDirection"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_DIRECTION attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "mediaDirection"

    .line 441
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "mediaDirection"

    .line 445
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaDirection:Ljava/lang/String;

    goto :goto_1

    .line 446
    :cond_7
    const-string v0, "port0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "port0"

    const/4 v3, 0x1

    .line 448
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 447
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_MEDIA_PORT attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "port0"

    .line 450
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 449
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "port0"

    .line 454
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;->mediaPort:Ljava/lang/String;

    goto :goto_1

    .line 455
    :cond_8
    const-string v0, "mediaAttributes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 456
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v0, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mediaAttributes:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 457
    :cond_9
    const-string v0, "local"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 458
    const-string v0, "ViceSaxXmlHandler"

    const-string v2, "VICE_DIALOG_LOCAL Element End."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 463
    :cond_a
    :goto_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    if-eqz v0, :cond_c

    .line 464
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 465
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_REMOTE_IDENTITY attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "identity"

    .line 468
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 467
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "identity"

    .line 472
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->remoteIdentity:Ljava/lang/String;

    goto :goto_2

    .line 474
    :cond_b
    const-string v0, "remote"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 475
    const-string v0, "ViceSaxXmlHandler"

    const-string v2, "VICE_DIALOG_REMOTE Element End."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    .line 481
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    if-eqz v0, :cond_e

    .line 482
    const-string v0, "hop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 483
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "hop"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VICE_DIALOG_ROUTE_SET_HOP attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "hop"

    .line 486
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_d
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 492
    :cond_e
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 494
    :cond_f
    return-void
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 67
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->builder:Ljava/lang/StringBuilder;

    .line 69
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 76
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", localname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", qName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", attri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v0, "dialog-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "dialog-info"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 82
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    const-string v2, "version"

    .line 84
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "state"

    const-string v2, "state"

    .line 86
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "entity"

    const-string v2, "entity"

    .line 88
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 91
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "version"

    .line 93
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "state"

    .line 94
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "entity"

    .line 95
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    const-string v0, "dialog"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 99
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    .line 100
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 103
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogInfoSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "id"

    const-string v3, "id"

    .line 107
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "call-id"

    const-string v3, "call-id"

    .line 109
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local-tag"

    const-string v3, "local-tag"

    .line 111
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "remote-tag"

    const-string v3, "remote-tag"

    .line 113
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "direction"

    const-string v3, "direction"

    .line 115
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogHaveSubElement:Z

    .line 118
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "id"

    .line 120
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "call-id"

    .line 121
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "local-tag"

    .line 122
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "remote-tag"

    .line 123
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "direction"

    .line 125
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->dialogId:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "direction"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->direction:Ljava/lang/String;

    .line 133
    :cond_1
    const-string v0, "replaces"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 135
    .local v0, "viceDialogReplacesElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "replaces"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 136
    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 138
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const-string v2, "call-id"

    const-string v3, "call-id"

    .line 140
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v2, "local-tag"

    const-string v3, "local-tag"

    .line 142
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v2, "remote-tag"

    const-string v3, "remote-tag"

    .line 144
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "call-id"

    .line 147
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "local-tag"

    .line 148
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "remote-tag"

    .line 149
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .end local v0    # "viceDialogReplacesElement":Lorg/codeaurora/ims/parser/Element;
    :cond_2
    const-string v0, "referred-by"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "referred-by"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogReferredElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    const-string v0, "route-set"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    .line 163
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "route-set"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 169
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_4
    const-string v0, "hop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    .line 174
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "hop"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "route-set"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 177
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRouteSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesRouteSetHaveSubElement:Z

    .line 179
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogHopElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_5
    const-string v0, "local"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 183
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    .line 184
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 187
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 190
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    .line 194
    :cond_6
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_7

    .line 196
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "identity"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 200
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_7
    const-string v0, "target"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_8

    .line 206
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    .line 207
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 210
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 213
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "uri"

    const-string v3, "uri"

    .line 215
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v4, "uri"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_8
    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_9

    .line 223
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 224
    .local v0, "viceDialogLocalParamElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "param"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 225
    const-string v2, "target"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 227
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalTargetSubList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v2, "pname"

    const-string v3, "pname"

    .line 229
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v2, "pval"

    const-string v3, "pval"

    .line 231
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root Tag Name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "ViceSaxXmlHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attribute vals = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pname"

    .line 234
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "pval"

    .line 235
    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    invoke-direct {v2}, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    .line 244
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    const-string v3, "pname"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    .line 246
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    const-string v3, "pval"

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    .line 248
    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v2, v2, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v0    # "viceDialogLocalParamElement":Lorg/codeaurora/ims/parser/Element;
    :cond_9
    const-string v0, "mediaAttributes"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_a

    .line 254
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    .line 255
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "local"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 258
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogLocalSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    .line 260
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 261
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mMediaAttribute:Lorg/codeaurora/ims/parser/ImsViceParser$MediaAttribute;

    .line 265
    :cond_a
    const-string v0, "mediaType"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_b

    .line 267
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    .line 268
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaType"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 271
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaTypeElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_b
    const-string v0, "mediaDirection"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_c

    .line 277
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    .line 278
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaDirection"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 281
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaDirElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_c
    const-string v0, "port0"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogLocalHaveSubElement:Z

    if-eqz v0, :cond_d

    .line 287
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    .line 288
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "port0"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "mediaAttributes"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaAttriSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogMediaPortElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_d
    const-string v0, "remote"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 296
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "remote"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "dialog"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 300
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    .line 302
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 303
    const-string v0, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    .line 307
    :cond_e
    const-string v0, "identity"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    if-eqz v0, :cond_f

    .line 309
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    .line 310
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 313
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteIdentityElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_f
    const-string v0, "target"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    if-eqz v0, :cond_10

    .line 320
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "remote"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 324
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetSubList:Ljava/util/List;

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetSubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 327
    iget-object v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "uri"

    const-string v2, "uri"

    .line 329
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v0, "ViceSaxXmlHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attribute vals = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteTargetElement:Lorg/codeaurora/ims/parser/Element;

    const-string v3, "uri"

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_10
    const-string v0, "param"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDoesDialogRemoteHaveSubElement:Z

    if-eqz v0, :cond_11

    .line 337
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 338
    .local v0, "viceDialogRemoteParamElement":Lorg/codeaurora/ims/parser/Element;
    const-string v1, "param"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 339
    const-string v1, "target"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 341
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mViceDialogRemoteSubList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v1, "pname"

    const-string v2, "pname"

    .line 343
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v1, "pval"

    const-string v2, "pval"

    .line 345
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v1, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Root Tag Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v1, "ViceSaxXmlHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attribute vals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pname"

    .line 348
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pval"

    .line 349
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    invoke-direct {v1}, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    .line 358
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    const-string v2, "pname"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramName:Ljava/lang/String;

    .line 360
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    const-string v2, "pval"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;->paramVal:Ljava/lang/String;

    .line 362
    iget-object v1, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mDialogInfo:Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;

    iget-object v1, v1, Lorg/codeaurora/ims/parser/ImsViceParser$DialogInfo;->mParamVals:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/ViceSaxXmlHandler;->mParamVal:Lorg/codeaurora/ims/parser/ImsViceParser$ParamVal;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .end local v0    # "viceDialogRemoteParamElement":Lorg/codeaurora/ims/parser/Element;
    :cond_11
    return-void
.end method
