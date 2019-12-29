.class public Lorg/codeaurora/ims/parser/SAXXMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SAXXMLHandler.java"


# static fields
.field private static mLocalTag:Ljava/lang/String;


# instance fields
.field private final LOGTAG:Ljava/lang/String;

.field private builder:Ljava/lang/StringBuilder;

.field private mConfDescSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

.field private mConfUriEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfUriSubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mConfuri:Lorg/codeaurora/ims/parser/Element;

.field private mInConfDescription:Z

.field private mInUser:Z

.field private mIsDisconnectInfo:Z

.field private mIsEndPoint:Z

.field private mIsEnpointInfo:Z

.field private mIsJoiningInfo:Z

.field private mIsUserCallInfo:Z

.field private mIsassociated:Z

.field private mIscallinfo:Z

.field private mIsconuri:Z

.field private mIsentry:Z

.field private mIsmedia:Z

.field private mIsreferredInfo:Z

.field private mIsroles:Z

.field private mIsserviceuri:Z

.field private mMessageElement:Lorg/codeaurora/ims/parser/Element;

.field private mMessageSubList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersElement:Lorg/codeaurora/ims/parser/Element;

.field private mUsersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserEndPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private muserSubElementlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field

.field private usersubElementList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/parser/Element;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "conference-info"

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 34
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 35
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 36
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 37
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    .line 38
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    .line 39
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    .line 40
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 41
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 42
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 43
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsserviceuri:Z

    .line 44
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsmedia:Z

    .line 45
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    .line 46
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    .line 47
    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 50
    const-string v0, "SAXXMLHandler"

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->LOGTAG:Ljava/lang/String;

    .line 53
    const-string v0, "SAXXMLHandler"

    const-string v1, "New List obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 55
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

    .line 189
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 191
    return-void
.end method

.method public endDocument()V
    .locals 3

    .line 434
    :try_start_0
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->endDocument()V

    .line 435
    const-string v0, "SAXXMLHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Root Tag Name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v2}, Lorg/codeaurora/ims/parser/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    nop

    .line 439
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 195
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    if-eqz v0, :cond_2c

    .line 197
    const-string v0, "SAXXMLHandler"

    const-string v1, "endelment:inside"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "display-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 200
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_0
    const-string v0, "maximum-user-count"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "maximum-user-count"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    goto :goto_1

    .line 208
    :cond_2
    const-string v0, "subject"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "subject"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 209
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_3
    const-string v0, "free-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 212
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "free-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 214
    :cond_4
    const-string v0, "keywords"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "keywords"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v0, :cond_a

    .line 219
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 220
    .local v0, "mEntry":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "entry"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 221
    const-string v2, "conf_uris"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 222
    const-string v2, "display-text"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 223
    const-string v2, "display-text"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 225
    :cond_6
    const-string v2, "uri"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 226
    const-string v2, "uri"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 228
    :cond_7
    const-string v2, "purpose"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 229
    const-string v2, "purpose"

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 231
    :cond_8
    const-string v2, "entry"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 232
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 233
    :cond_9
    const-string v2, "conf_uris"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 234
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 235
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 238
    .end local v0    # "mEntry":Lorg/codeaurora/ims/parser/Element;
    :cond_a
    :goto_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_29

    .line 239
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 240
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/parser/Element;

    .line 241
    .local v0, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 242
    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v2, "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 245
    const-string v3, "display-text"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v3, :cond_b

    .line 248
    const-string v3, "display-text"

    iget-object v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 248
    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_b
    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    if-eqz v3, :cond_10

    .line 252
    new-instance v3, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v3}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 253
    .local v3, "Associated":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v3}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 255
    const-string v4, "display-text"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_c

    .line 257
    const-string v4, "associated-aors"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 258
    const-string v4, "user"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 259
    const-string v4, "display-text"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 265
    :cond_c
    const-string v4, "uri"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_d

    .line 267
    const-string v4, "uri"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 267
    invoke-virtual {v3, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 272
    :cond_d
    const-string v4, "entry"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v4, :cond_e

    .line 274
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto :goto_3

    .line 276
    :cond_e
    const-string v4, "entry"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    if-eqz v4, :cond_f

    .line 278
    new-instance v4, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v4}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 279
    .local v4, "Role":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v4}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 280
    const-string v5, "roles"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 281
    const-string v5, "associated-aors"

    invoke-virtual {v4, v5}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 282
    const-string v5, "entry"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-virtual {v4, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 286
    .end local v4    # "Role":Lorg/codeaurora/ims/parser/Element;
    :cond_f
    const-string v4, "languages"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 287
    const-string v4, "languages"

    iget-object v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 287
    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .end local v3    # "Associated":Lorg/codeaurora/ims/parser/Element;
    :cond_10
    :goto_3
    iget-boolean v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v3, :cond_26

    .line 297
    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    iget-object v4, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 298
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 297
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/parser/Element;

    .line 299
    .local v3, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string v4, "endpoint"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 300
    const-string v4, "user"

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 301
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v4, "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    const-string v5, "display-text"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 303
    const-string v5, "display-text"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 303
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 305
    :cond_11
    const-string v5, "status"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 306
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/parser/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    sget-object v5, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    const-string v6, "media"

    .line 307
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 308
    :cond_12
    const-string v5, "status"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 311
    :cond_13
    const-string v5, "joining-method"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 312
    const-string v5, "joining-method"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 312
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 314
    :cond_14
    const-string v5, "disconnection-method"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 315
    const-string v5, "disconnection-method"

    iget-object v6, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 315
    invoke-virtual {v3, v5, v6}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_15
    :goto_4
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    if-eqz v5, :cond_25

    .line 319
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    if-eqz v5, :cond_19

    .line 320
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 321
    .local v5, "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    const-string v6, "refrred"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 322
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 324
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 326
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 328
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 326
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 329
    :cond_16
    const-string v6, "reason"

    .line 330
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 331
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 333
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 331
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 334
    :cond_17
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 335
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 335
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v5    # "refferedinfo":Lorg/codeaurora/ims/parser/Element;
    :cond_18
    :goto_5
    goto/16 :goto_8

    :cond_19
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    if-eqz v5, :cond_1d

    .line 339
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 340
    .local v5, "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    const-string v6, "joining-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 341
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 343
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 345
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 345
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 347
    :cond_1a
    const-string v6, "reason"

    .line 348
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 349
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 351
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 349
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 352
    :cond_1b
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 353
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 353
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .end local v5    # "JoiningInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_1c
    :goto_6
    goto/16 :goto_8

    :cond_1d
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    if-eqz v5, :cond_21

    .line 357
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 358
    .local v5, "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 359
    const-string v6, "disconnection-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 360
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v6, "when"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 363
    const-string v6, "when"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 365
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 363
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 366
    :cond_1e
    const-string v6, "reason"

    .line 367
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 368
    const-string v6, "reason"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 371
    :cond_1f
    const-string v6, "by"

    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 372
    const-string v6, "by"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 374
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 372
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .end local v5    # "DisconnectInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_20
    :goto_7
    goto/16 :goto_8

    :cond_21
    iget-boolean v5, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    if-eqz v5, :cond_25

    .line 377
    new-instance v5, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v5}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 378
    .local v5, "UserCallInfo":Lorg/codeaurora/ims/parser/Element;
    invoke-virtual {v5}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 379
    const-string v6, "call-info"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 380
    const-string v6, "endpoint"

    invoke-virtual {v5, v6}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    const-string v6, "display-text"

    .line 383
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 384
    const-string v6, "display-text"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 384
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 387
    :cond_22
    const-string v6, "call-id"

    .line 388
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 389
    const-string v6, "call-id"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 389
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 392
    :cond_23
    const-string v6, "from-tag"

    .line 393
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 394
    const-string v6, "from-tag"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 394
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 397
    :cond_24
    const-string v6, "to-tag"

    .line 398
    invoke-virtual {p3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 399
    const-string v6, "to-tag"

    iget-object v7, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 399
    invoke-virtual {v5, v6, v7}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v5    # "UserCallInfo":Lorg/codeaurora/ims/parser/Element;
    :cond_25
    :goto_8
    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 406
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .end local v3    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    .end local v4    # "EndpointInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_26
    const-string v3, "associated-aors"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 409
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    .line 411
    :cond_27
    const-string v3, "user"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 412
    const-string v3, "SAXXMLHandler"

    const-string v4, "User need to added end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 414
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 415
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 416
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 418
    :cond_28
    const-string v3, "users"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 420
    iget-object v3, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v0    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    .end local v2    # "usersubElementList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/parser/Element;>;"
    :cond_29
    const-string v0, "conference-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_9

    .line 425
    :cond_2a
    const-string v0, "media"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 426
    const-string v0, "NotApplicable"

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    .line 428
    :cond_2b
    :goto_9
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 430
    :cond_2c
    return-void
.end method

.method public getConferenceDescElement()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public getConferenceInfoLatestMessage()Lorg/codeaurora/ims/parser/Element;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 68
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriEntryList:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->builder:Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 78
    const-string v0, "conference-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "conference-info"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 82
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "state"

    const-string v2, "state"

    .line 84
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    const-string v1, "version"

    const-string v2, "version"

    .line 86
    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

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

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 91
    const-string v0, "SAXXMLHandler"

    const-string v1, "New ConfreInf obj created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    const-string v0, "conference-description"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    const-string v0, "maximum-user-count"

    .line 94
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 104
    :cond_1
    const-string v0, "users"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 105
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    .line 106
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mUsersElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 111
    :cond_2
    const-string v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    const-string v0, "SAXXMLHandler"

    const-string v2, "User need to added start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 114
    .local v0, "UserElement":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 115
    const-string v2, "users"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 117
    const-string v2, "state"

    const-string v3, "state"

    .line 118
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v2, "entity"

    const-string v3, "entity"

    .line 120
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserSubElementlist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    .line 130
    .end local v0    # "UserElement":Lorg/codeaurora/ims/parser/Element;
    goto/16 :goto_1

    :cond_3
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-nez v0, :cond_4

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIscallinfo:Z

    goto/16 :goto_1

    .line 133
    :cond_4
    const-string v0, "associated-aors"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_5

    .line 135
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    goto/16 :goto_1

    .line 136
    :cond_5
    const-string v0, "display-text"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_6

    .line 138
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 139
    :cond_6
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsassociated:Z

    if-eqz v0, :cond_7

    .line 140
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 141
    :cond_7
    const-string v0, "roles"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 142
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsroles:Z

    .line 143
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsentry:Z

    goto/16 :goto_1

    .line 144
    :cond_8
    const-string v0, "endpoint"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInUser:Z

    if-eqz v0, :cond_9

    .line 145
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    .line 146
    .local v0, "endpoint":Lorg/codeaurora/ims/parser/Element;
    const-string v2, "endpoint"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 147
    const-string v2, "user"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 149
    const-string v2, "entity"

    const-string v3, "entity"

    .line 150
    invoke-interface {p4, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/parser/Element;->setAttributValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->muserEndPointList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    .line 153
    .end local v0    # "endpoint":Lorg/codeaurora/ims/parser/Element;
    goto/16 :goto_1

    :cond_9
    const-string v0, "conf_uris"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 154
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    .line 155
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conf_uris"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-description"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfUriSubElementList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 160
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfuri:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    :cond_a
    const-string v0, "entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsconuri:Z

    if-eqz v0, :cond_b

    goto :goto_1

    .line 162
    :cond_b
    const-string v0, "media"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    const-string v0, "media"

    sput-object v0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mLocalTag:Ljava/lang/String;

    goto :goto_1

    .line 96
    :cond_c
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/parser/Element;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/Element;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    .line 97
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-description"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setTagName(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    const-string v2, "conference-info"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setParentTag(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/Element;->setMapAttribute()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescSubElementList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/parser/Element;->setSubElementList(Ljava/util/List;)V

    .line 102
    iget-object v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mMessageSubList:Ljava/util/List;

    iget-object v2, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mConfDescriptionElement:Lorg/codeaurora/ims/parser/Element;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mInConfDescription:Z

    .line 165
    :cond_d
    :goto_1
    iget-boolean v0, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEndPoint:Z

    if-eqz v0, :cond_11

    .line 166
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsEnpointInfo:Z

    .line 167
    const-string v0, "refrred"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 168
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsreferredInfo:Z

    goto :goto_2

    .line 169
    :cond_e
    const-string v0, "joining-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 170
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsJoiningInfo:Z

    goto :goto_2

    .line 171
    :cond_f
    const-string v0, "disconnection-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 172
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsDisconnectInfo:Z

    goto :goto_2

    .line 173
    :cond_10
    const-string v0, "call-info"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 176
    iput-boolean v1, p0, Lorg/codeaurora/ims/parser/SAXXMLHandler;->mIsUserCallInfo:Z

    .line 185
    :cond_11
    :goto_2
    return-void
.end method
