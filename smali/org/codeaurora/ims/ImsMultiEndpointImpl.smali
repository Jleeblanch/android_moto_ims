.class public Lorg/codeaurora/ims/ImsMultiEndpointImpl;
.super Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.source "ImsMultiEndpointImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsMultiEndpointImpl"


# instance fields
.field private final EVENT_CAPABILITIES_CHANGED:I

.field private final EVENT_REFRESH_VICE_INFO:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 5
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 41
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_REFRESH_VICE_INFO:I

    .line 28
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->EVENT_CAPABILITIES_CHANGED:I

    .line 33
    new-instance v2, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/codeaurora/ims/ImsMultiEndpointImpl$ImsMultiEndpointImplHandler;-><init>(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Lorg/codeaurora/ims/ImsMultiEndpointImpl$1;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    .line 38
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 39
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 42
    iput-object p2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 44
    iput-object p3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 46
    new-instance v2, Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lorg/codeaurora/ims/parser/ImsViceParser;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    .line 47
    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Lorg/codeaurora/ims/ImsServiceSub;->registerForCapabilitiesChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method static synthetic access$100(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 24
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->handleRefreshViceInfo(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lorg/codeaurora/ims/ImsMultiEndpointImpl;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lorg/codeaurora/ims/ImsMultiEndpointImpl;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .line 24
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->updateCapabilities(Landroid/os/AsyncResult;)V

    return-void
.end method

.method private handleRefreshViceInfo(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 74
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    .line 79
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ViceUriInfo;

    .line 80
    .local v0, "viceInfo":Lorg/codeaurora/ims/ViceUriInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ViceUriInfo;->getViceInfoUri()[B

    move-result-object v1

    .line 82
    .local v1, "refreshViceInfoUri":[B
    if-eqz v1, :cond_1

    array-length v2, v1

    if-ltz v2, :cond_1

    .line 84
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->processViceInfo([B)V

    goto :goto_0

    .line 86
    :cond_1
    const-string v2, "ImsMultiEndpointImpl"

    const-string v3, "handleRefreshViceInfo: refreshViceInfoUri null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    return-void

    .line 75
    .end local v0    # "viceInfo":Lorg/codeaurora/ims/ViceUriInfo;
    .end local v1    # "refreshViceInfoUri":[B
    :cond_2
    :goto_1
    const-string v0, "ImsMultiEndpointImpl"

    const-string v1, "handleRefreshViceInfo exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method

.method private notifyViceInfo()V
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/parser/ImsViceParser;->getCallPullInfo(ZZ)Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "dialogIds":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsExternalCallState;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {v1}, Lcom/android/ims/ImsManager;->isVceEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    .line 102
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 105
    .local v1, "isVceAvailable":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :try_start_0
    const-string v2, "ImsMultiEndpointImpl"

    const-string v3, "Calling onImsExternalCallStateUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private processViceInfo([B)V
    .locals 1
    .param p1, "viceInfoBytes"    # [B

    .line 93
    iget-object v0, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mImsViceParser:Lorg/codeaurora/ims/parser/ImsViceParser;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ImsViceParser;->updateViceXmlBytes([B)V

    .line 94
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    .line 95
    return-void
.end method

.method private updateCapabilities(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .line 117
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 118
    .local v0, "capabilites":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    .line 119
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    .line 120
    const-string v1, "ImsMultiEndpointImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCapabilities:: Video = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVideoSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", Voice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->mIsVoiceSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsMultiEndpointImpl;->notifyViceInfo()V

    .line 123
    return-void
.end method
